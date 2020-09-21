use crate::ast::*;
use crate::types::{CError, Loc};
use anyhow::{Context, Error, Result};
use beau_collector::BeauCollector as _;
use pest;
use pest::iterators::Pair;
use pest::iterators::Pairs;
use pest::Parser;
use std::collections::HashSet;
use std::path::PathBuf;
use std::sync::Arc;

#[throws]
pub fn parse_file(path: Arc<PathBuf>, text: &str) -> File {
    let src = Src {
        path: path.clone(),
        text,
    };

    let exprs: Vec<_> = LangParser::parse(Rule::file, src.text)?
        .filter(|pair| !matches!(pair.as_rule(), Rule::EOI))
        .map(|pair| ExprParser::new().parse(&src, pair))
        .bcollect()?;

    File { path, exprs }
}

#[derive(Parser)]
#[grammar = "syntax.pest"]
pub struct LangParser;

#[derive(Debug)]
struct Src<'a> {
    path: Arc<PathBuf>,
    text: &'a str,
}

pub struct ExprParser {
    allow_arbitrary: bool,
    arbitrary_context: Option<&'static str>,
}

impl ExprParser {
    fn new() -> Self {
        ExprParser {
            allow_arbitrary: false,
            arbitrary_context: None,
        }
    }

    fn allow_arbitrary(mut self) -> Self {
        self.allow_arbitrary = true;
        self
    }

    fn arbitrary_context(mut self, context: &'static str) -> Self {
        self.arbitrary_context = Some(context);
        self
    }

    #[throws]
    fn parse(self, src: &Src, pair: Pair<Rule>) -> Expr {
        assert!(matches!(pair.as_rule(), Rule::expr), "{}", pair);
        let loc = Loc::new(&src.path, &pair);
        let mut inner = pair.into_inner();
        let left = if self.allow_arbitrary {
            ExprItemParser::new()
                .allow_arbitrary()
                .parse(src, expect!(inner.next()))?
        } else {
            let mut parser = ExprItemParser::new();
            if let Some(c) = self.arbitrary_context {
                parser = parser.arbitrary_context(c);
            }
            parser.parse(src, expect!(inner.next()))?
        };
        let operation = parse_operation(src, &mut inner)?;
        Expr::new(ExprData {
            left,
            operation,
            loc,
        })
    }
}

pub struct ExprItemParser {
    allow_arbitrary: bool,
    arbitrary_context: Option<&'static str>,
}

impl ExprItemParser {
    fn new() -> Self {
        ExprItemParser {
            allow_arbitrary: false,
            arbitrary_context: None,
        }
    }

    fn allow_arbitrary(mut self) -> Self {
        self.allow_arbitrary = true;
        self
    }

    fn arbitrary_context(mut self, context: &'static str) -> Self {
        self.arbitrary_context = Some(context);
        self
    }

    #[throws]
    fn parse(self, src: &Src, pair: Pair<Rule>) -> ExprItem {
        assert!(matches!(pair.as_rule(), Rule::expr_item));
        let pair = pair.into_inner().next().unwrap();
        match pair.as_rule() {
            Rule::declare => ExprItem::Declare(Box::new(parse_declare(src, pair)?)),
            Rule::value => ExprItem::Value(parse_value(src, pair)?),
            Rule::closed => ExprItem::Closed(parse_closed(src, pair)?),
            Rule::INFER => ExprItem::Infer,
            Rule::name => ExprItem::Path(Path::from(parse_name(src, pair)?)),
            Rule::arbitrary => {
                if self.allow_arbitrary {
                    ExprItem::Arbitrary(parse_arbitrary(src, pair)?)
                } else {
                    let offset = pair.as_span();
                    let err = LangParser::parse(Rule::block, pair.as_str()).unwrap_err();
                    let mut err = Error::new(CError::parse_with_offset(src.text, offset, err));
                    if let Some(c) = self.arbitrary_context {
                        err = err.context(c);
                    }
                    throw!(err);
                }
            }
            _ => unreachable!("{}", pair),
        }
    }
}

#[throws]
fn parse_operation(src: &Src, inner: &mut Pairs<Rule>) -> Option<Operation> {
    let pair = match inner.next() {
        Some(p) => p,
        None => return None,
    };

    let loc = Loc::new(&src.path, &pair);
    let s = match pair.as_rule() {
        Rule::operation => {
            let mut inner = pair.into_inner();
            let operator = match expect!(inner.next()).as_rule() {
                Rule::ACCESS => Operator::Access,
                Rule::CALL => Operator::Call,
                p @ _ => unreachable!("{:?}", p),
            };
            let right = ExprParser::new()
                .arbitrary_context("Note: arbitrary block not allowed with this operator.\n")
                .parse(src, expect!(inner.next()))?;
            let right2 = None;
            Operation {
                operator,
                right,
                right2,
                loc,
            }
        }
        Rule::expand1 => {
            let operator = Operator::Expand1;
            let mut inner = pair.into_inner();
            let right = ExprParser::new()
                .allow_arbitrary()
                .parse(src, expect!(inner.next()))?;
            let right2 = None;
            Operation {
                operator,
                right,
                right2,
                loc,
            }
        }
        Rule::expand2 => {
            let operator = Operator::Expand1;
            let mut inner = pair.into_inner();
            let right = {
                let pair = expect!(inner.next());
                let loc = Loc::new(&src.path, &pair);
                let left = ExprItemParser::new()
                    .arbitrary_context(
                        "Note: arbitrary block not allowed in the first expression of expand2.\n",
                    )
                    .parse(src, pair)?;

                Expr::new(ExprData {
                    left,
                    operation: None,
                    loc,
                })
            };
            let right2 = Some(
                ExprParser::new()
                    .allow_arbitrary()
                    .parse(src, expect!(inner.next()))?,
            );
            Operation {
                operator,
                right,
                right2,
                loc,
            }
        }
        _ => unreachable!("{}", pair),
    };
    Some(s)
}

fn parse_ownership<'a>(
    inner: &mut Pairs<'a, Rule>,
    mut t: Pair<'a, Rule>,
) -> (Pair<'a, Rule>, HashSet<Ownership>) {
    let mut ownership = HashSet::new();
    while matches!(t.as_rule(), Rule::OWN) {
        ownership.insert(Ownership::new(t.as_str()));
        t = expect!(inner.next());
    }
    (t, ownership)
}

#[throws]
fn parse_iden(src: &Src, pair: Pair<Rule>) -> Iden {
    assert!(matches!(pair.as_rule(), Rule::iden));
    let loc = Loc::new(&src.path, &pair);
    Iden {
        a: pair.as_str().to_string(),
        loc,
    }
}

#[throws]
fn parse_value(src: &Src, pair: Pair<Rule>) -> Value {
    assert!(matches!(pair.as_rule(), Rule::value));
    let loc = Loc::new(&src.path, &pair);
    let pair = pair.into_inner().next().unwrap();
    let a = match pair.as_rule() {
        Rule::string => AValue::String(pair.as_str().to_string()),
        Rule::raw_string => AValue::String(pair.as_str().to_string()),
        // FIXME: doesn't handle escaped chars
        Rule::char => AValue::Char(expect!(expect!(pair.into_inner().next())
            .as_str()
            .parse::<char>())),
        // FIXME: doesn't handle underscores/hex/octal/binary
        Rule::integer => AValue::Integer(expect!(pair.as_str().parse::<u64>())),
        Rule::bool => AValue::Bool(expect!(pair.as_str().parse::<bool>())),
        _ => panic!("Rule[{:?}] Pair[{:#?}]", pair.as_rule(), pair),
    };
    Value { a, loc }
}

#[throws]
fn parse_declare(src: &Src, pair: Pair<Rule>) -> Declare {
    assert!(matches!(pair.as_rule(), Rule::declare));
    let pair = expect!(pair.into_inner().next());
    match pair.as_rule() {
        Rule::declare_fn => Declare::Fn(parse_declare_fn(src, pair)?),
        Rule::declare_struct => Declare::Struct(parse_declare_struct(src, pair)?),
        Rule::declare_enum => Declare::Enum(parse_declare_enum(src, pair)?),
        Rule::declare_var => Declare::Var(parse_declare_var(src, pair)?),
        _ => unimplemented!("{:?}: {}", pair.as_rule(), pair),
    }
}

#[throws]
fn parse_declare_fn(src: &Src, pair: Pair<Rule>) -> DeclareFn {
    assert!(matches!(pair.as_rule(), Rule::declare_fn));
    let loc = Loc::new(&src.path, &pair);
    let mut visibility: HashSet<Visibility> = HashSet::new();
    let mut inner = pair.into_inner();
    let mut t = expect!(inner.next());

    if matches!(t.as_rule(), Rule::VISIBILITY) {
        visibility.insert(Visibility::new(t.as_str()));
        t = inner.next().unwrap();
    }

    let name = parse_name(src, t)?;
    let input = parse_data(src, inner.next().unwrap())?;

    t = inner.next().unwrap();
    let output = if matches!(t.as_rule(), Rule::data) {
        let s = Some(parse_data(src, t)?);
        t = inner.next().unwrap();
        s
    } else {
        None
    };

    DeclareFn {
        visibility,
        name,
        input,
        output,
        block: parse_block(src, t)?,
        loc,
    }
}

#[throws]
fn parse_declare_struct(src: &Src, pair: Pair<Rule>) -> DeclareStruct {
    assert!(matches!(pair.as_rule(), Rule::declare_struct));
    let loc = Loc::new(&src.path, &pair);
    let mut visibility: HashSet<Visibility> = HashSet::new();
    let mut inner = pair.into_inner();
    let mut t = expect!(inner.next());

    if matches!(t.as_rule(), Rule::VISIBILITY) {
        visibility.insert(Visibility::new(t.as_str()));
        t = inner.next().unwrap();
    }

    let name = parse_name(src, t)?;
    let data = parse_data(src, inner.next().unwrap())?;
    DeclareStruct {
        name,
        visibility,
        data,
        loc,
    }
}

#[throws]
fn parse_declare_enum(src: &Src, pair: Pair<Rule>) -> DeclareEnum {
    assert!(matches!(pair.as_rule(), Rule::declare_enum));
    let loc = Loc::new(&src.path, &pair);
    let mut visibility: HashSet<Visibility> = HashSet::new();
    let mut inner = pair.into_inner();
    let mut t = expect!(inner.next());

    if matches!(t.as_rule(), Rule::VISIBILITY) {
        visibility.insert(Visibility::new(t.as_str()));
        t = inner.next().unwrap();
    }

    let name = parse_name(src, t)?;
    let data = parse_data(src, inner.next().unwrap())?;
    DeclareEnum {
        name,
        visibility,
        data,
        loc,
    }
}

#[throws]
fn parse_declare_var(src: &Src, pair: Pair<Rule>) -> DeclareVar {
    assert!(matches!(pair.as_rule(), Rule::declare_var));
    let loc = Loc::new(&src.path, &pair);
    let mut visibility = HashSet::new();
    let mut inner = pair.into_inner();

    let mut t = expect!(inner.next());
    let let_ = if matches!(t.as_rule(), Rule::LET) {
        t = expect!(inner.next());
        true
    } else {
        false
    };

    if matches!(t.as_rule(), Rule::VISIBILITY) {
        visibility.insert(Visibility::new(t.as_str()));
        t = expect!(inner.next());
    }

    let (t, ownership) = parse_ownership(&mut inner, t);

    let name = parse_name(src, t)?;
    let t = inner.next();

    let (assign_ownership, assign) = if let Some(tother) = t {
        let (tother, assign_ownership) = parse_ownership(&mut inner, tother);
        (
            assign_ownership,
            Some(ExprParser::new().allow_arbitrary().parse(src, tother)?),
        )
    } else {
        (HashSet::new(), None)
    };
    DeclareVar {
        let_,
        visibility,
        ownership,
        name,
        assign_ownership,
        assign,
        loc,
    }
}

#[throws]
fn parse_closed(src: &Src, pair: Pair<Rule>) -> Closed {
    assert!(matches!(pair.as_rule(), Rule::closed));
    let pair = pair.into_inner().next().unwrap();
    match pair.as_rule() {
        Rule::block => Closed::Block(parse_block(src, pair)?),
        Rule::name_block => Closed::Name(parse_name_block(src, pair)?),
        Rule::data => Closed::Data(parse_data(src, pair)?),
        _ => unreachable!(pair),
    }
}

#[throws]
fn parse_block(src: &Src, pair: Pair<Rule>) -> Block {
    assert!(matches!(pair.as_rule(), Rule::block));
    let loc = Loc::new(&src.path, &pair);
    let mut exprs = Vec::new();
    let mut end = false; // find if block ends with ";"
    for pair in pair.into_inner() {
        match pair.as_rule() {
            Rule::expr => {
                exprs.push(ExprParser::new().allow_arbitrary().parse(src, pair)?);
                end = false;
            }
            Rule::END => end = true,
            _ => unreachable!("{:?}: {}", pair.as_rule(), pair),
        }
    }
    Block { exprs, end, loc }
}

#[throws]
fn parse_data(src: &Src, pair: Pair<Rule>) -> Data {
    assert!(matches!(pair.as_rule(), Rule::data));
    let loc = Loc::new(&src.path, &pair);
    let mut fields = Vec::new();
    for pair in pair.into_inner() {
        fields.push(parse_declare_var(src, pair)?);
    }
    Data { fields, loc }
}

#[throws]
fn parse_name(src: &Src, pair: Pair<Rule>) -> Name {
    assert!(matches!(pair.as_rule(), Rule::name), "{:?}", pair);
    let loc = Loc::new(&src.path, &pair);
    let mut inner = pair.into_inner();
    let iden = parse_iden(src, expect!(inner.next()))?;
    let mut block = Vec::new();
    while let Some(p) = inner.next() {
        if (matches!(p.as_rule(), Rule::END)) {
            continue;
        }
        block.push(parse_name(src, p)?);
    }
    Name { iden, block, Ownership::None, loc }
}

#[throws]
fn parse_name_block(src: &Src, pair: Pair<Rule>) -> NameBlock {
    assert!(matches!(pair.as_rule(), Rule::name_block));
    let loc = Loc::new(&src.path, &pair);
    let mut expand = Vec::new();
    for pair in pair.into_inner() {
        match pair.as_rule() {
            Rule::expr => {
                expand.push(ExprParser::new().parse(src, pair)?);
            }
            Rule::END => {}
            _ => unreachable!("{:?}: {}", pair.as_rule(), pair),
        }
    }
    NameBlock { expand, loc }
}

#[throws]
fn parse_arbitrary(src: &Src, pair: Pair<Rule>) -> Arbitrary {
    assert!(matches!(pair.as_rule(), Rule::arbitrary));
    Arbitrary {
        loc: Loc::new(&src.path, &pair),
    }
}

impl Loc {
    pub fn new(path: &Arc<PathBuf>, pair: &Pair<Rule>) -> Self {
        let span = pair.as_span();
        Loc {
            path: (*path).clone(),
            span: (span.start() as u64, span.end() as u64),
        }
    }
}

#[cfg(test)]
mod tests {
    use crate::parser::*;

    #[throws]
    fn test_parse(path: &str) -> File {
        use std::fs;
        use std::path::PathBuf;
        let path = Arc::new(PathBuf::from(path));
        let text = expect!(fs::read_to_string(path.as_ref()));
        let file = parse_file(path.clone(), &text)?;
        println!("### {:?} FILE:\n{:#?}", path, file);
        file
    }

    #[test]
    fn parse_hello_world() {
        expect!(test_parse("test_data/hello_world.wht"));
    }

    #[test]
    fn parse_hello_world_expanded() {
        expect!(test_parse("test_data/hello_world_expanded.wht"));
    }

    #[test]
    fn parse_arbitrary() {
        expect!(test_parse("test_data/arbitrary.wht"));
    }

    #[test]
    fn parse_invalid_arbitarary() {
        test_parse("test_data/invalid_arbitrary.wht").unwrap_err();
    }

    #[test]
    fn parse_call_chain() {
        expect!(test_parse("test_data/call_chain.wht"));
    }

    #[test]
    fn parse_expand2() {
        expect!(test_parse("test_data/expand2.wht"));
    }

    #[test]
    fn parse_raw_string() {
        expect!(test_parse("test_data/raw_string.wht"));
    }

    #[test]
    fn parse_struct() {
        expect!(test_parse("test_data/struct.wht"));
    }

    #[test]
    fn parse_enum() {
        expect!(test_parse("test_data/enum.wht"));
    }

    #[test]
    fn parse_value() {
        expect!(test_parse("test_data/value.wht"));
    }
}
