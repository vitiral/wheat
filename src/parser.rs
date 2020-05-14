use crate::ast;
use pest;
use pest::iterators::Pair;
use pest::Parser;
use std::collections::HashSet;
use std::path::PathBuf;
use std::sync::Arc;

#[derive(Parser)]
#[grammar = "syntax.pest"]
pub struct LangParser;

#[derive(Debug)]
pub struct ParseErr<'a> {
    msg: String,
    pair: Pair<'a, Rule>,
}

impl<'a> ParseErr<'a> {
    pub fn new(pair: Pair<'a, Rule>, msg: String) -> ParseErr<'a> {
        ParseErr {
            msg: msg,
            pair: pair,
        }
    }
}

pub fn parse<'a>(
    path: &Arc<PathBuf>,
    text: &'a str,
) -> Result<Vec<Pair<'a, Rule>>, pest::error::Error<Rule>> {
    Ok(LangParser::parse(Rule::file, text)?.collect())
}

pub fn build_ast<'a>(
    path: &Arc<PathBuf>,
    pairs: Vec<Pair<'a, Rule>>,
) -> Result<ast::File<'a>, ParseErr<'a>> {
    let mut globals: Vec<ast::DeclareVar<'a>> = Vec::new();
    let mut functions: Vec<ast::DeclareFn<'a>> = Vec::new();

    println!("Parsed {}:\n{:#?}", path.display(), pairs);

    for pair in pairs {
        if matches!(pair.as_rule(), Rule::EOI) {
            continue;
        }
        assert!(
            matches!(pair.as_rule(), Rule::declare),
            "{:?}",
            pair.as_rule()
        );
        let pair = expect!(pair.into_inner().next());
        match pair.as_rule() {
            Rule::declare_fn => functions.push(parse_declare_fn(path, pair)?),
            Rule::declare_var => {}
            Rule::EOI => {}
            _ => unreachable!("{}", pair),
        }
    }

    let o = ast::File {
        path: (*path).clone(),
        globals,
        functions,
    };
    eprintln!("Built ast:\n{:#?}", o);
    Ok(o)
}

#[cfg(test)]
fn test_parse(path: &str) {
    use std::fs;
    use std::path::PathBuf;
    let path = Arc::new(PathBuf::from(path));
    let text = expect!(fs::read_to_string(path.as_ref()));
    let res = expect!(parse(&path, &text));
    build_ast(&path, res);
}

#[test]
fn parse_hello_world() {
    test_parse("test_data/hello_world.wak");
}

fn parse_declare<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Declare<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::declare));
    let pair = expect!(pair.into_inner().next());
    let o = match pair.as_rule() {
        Rule::declare_var => ast::Declare::Var(parse_declare_var(path, pair)?),
        Rule::declare_fn => ast::Declare::Fn(parse_declare_fn(path, pair)?),
        _ => unimplemented!("{:?}: {}", pair.as_rule(), pair),
    };
    Ok(o)
}

fn parse_declare_fn<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::DeclareFn<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::declare_fn));
    let loc = get_loc(path, &pair);
    let mut visibility: HashSet<ast::Visibility> = HashSet::new();
    let mut inner = pair.into_inner();
    let mut t = expect!(inner.next());

    if matches!(t.as_rule(), Rule::VISIBILITY) {
        visibility.insert(ast::Visibility::new(t.as_str()));
        t = inner.next().unwrap();
    }

    let fullname = t.as_str();
    let input = parse_data(&path, inner.next().unwrap())?;

    t = inner.next().unwrap();
    let output = if matches!(t.as_rule(), Rule::data) {
        let s = Some(parse_data(&path, t)?);
        t = inner.next().unwrap();
        s
    } else {
        None
    };

    Ok(ast::DeclareFn {
        visibility,
        name: fullname,
        input,
        output,
        block: parse_block(path, t)?,
        loc,
    })
}

fn parse_data<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Data<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::data));
    let loc = get_loc(path, &pair);
    let mut fields = Vec::new();
    for pair in pair.into_inner() {
        fields.push(parse_declare_var(path, pair)?);
    }
    Ok(ast::Data { fields, loc })
}

// fn parse_assign_var<'a> (
//     path: &Arc<PathBuf>,
//     pair: Pair<'a, Rule>,
// ) -> Result<ast::Data<'a>, ParseErr<'a>> {
// }

fn parse_declare_var<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::DeclareVar<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::declare_var));
    let loc = get_loc(path, &pair);
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
        visibility.insert(ast::Visibility::new(t.as_str()));
        t = expect!(inner.next());
    }

    let (t, ownership) = parse_ownership(&mut inner, t);
    let var = t.as_str();
    let mut t: Option<_> = inner.next();
    let type_ = if t.is_some() && matches!(t.as_ref().unwrap().as_rule(), Rule::type_) {
        let type_ = parse_type(path, t.take().unwrap())?;
        t = inner.next();
        Some(type_)
    } else {
        None
    };

    let (assign_ownership, assign) = if let Some(tother) = t {
        let (tother, assign_ownership) = parse_ownership(&mut inner, tother);
        (assign_ownership, Some(parse_expr(path, tother)?))
    } else {
        (HashSet::new(), None)
    };
    Ok(ast::DeclareVar {
        let_,
        visibility,
        ownership,
        var,
        type_,
        assign_ownership,
        assign,
        loc,
    })
}

fn parse_ownership<'a>(
    inner: &mut pest::iterators::Pairs<'a, Rule>,
    mut t: Pair<'a, Rule>,
) -> (Pair<'a, Rule>, HashSet<ast::Ownership>) {
    let mut ownership = HashSet::new();
    while matches!(t.as_rule(), Rule::OWNERSHIP) {
        ownership.insert(ast::Ownership::new(t.as_str()));
        t = expect!(inner.next());
    }
    (t, ownership)
}

fn parse_closed<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Closed<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::closed));
    let pair = pair.into_inner().next().unwrap();
    let o = match pair.as_rule() {
        Rule::block => ast::Closed::Block(parse_block(path, pair)?),
        Rule::data => ast::Closed::Data(parse_data(path, pair)?),
        Rule::type_ => ast::Closed::Type(parse_type(path, pair)?),
        _ => unreachable!(pair),
    };
    Ok(o)
}

fn parse_block<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Block<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::block));
    let mut exprs = Vec::new();
    let mut end = false;
    for pair in pair.into_inner() {
        match pair.as_rule() {
            Rule::expr => {
                exprs.push(parse_expr(path, pair)?);
                end = false;
            }
            Rule::END => end = true,
            _ => unreachable!("{:?}: {}", pair.as_rule(), pair),
        }
    }
    Ok(ast::Block { exprs, end })
}

fn parse_type<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Type<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::type_));
    let loc = get_loc(path, &pair);
    let type_inner = pair.into_inner().next().unwrap();
    assert!(matches!(type_inner.as_rule(), Rule::type_inner));
    // remove all whitespace
    let type_str = type_inner
        .as_str()
        .chars()
        .filter(|c| !c.is_whitespace())
        .collect();
    Ok(ast::Type {
        a: ast::AType::Literal(type_str),
        loc,
    })
}

fn parse_expr<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Expr<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::expr));
    let loc = get_loc(path, &pair);
    let mut inner = pair.into_inner();
    let left = parse_expr_item(path, inner.next().unwrap())?;
    let links: Vec<_> = inner
        .map(|pair| parse_link(path, pair))
        .collect::<Result<_, _>>()?;
    Ok(ast::Expr { left, links, loc })
}

fn parse_link<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Link<'a>, ParseErr<'a>> {
    let o = match pair.as_rule() {
        Rule::operation => ast::Link::Operation(parse_operation(path, pair)?),
        Rule::expand1 => ast::Link::Expand1(parse_expand1(path, pair)?),
        r @ _ => unreachable!("{:?}", r),
    };
    Ok(o)
}

fn parse_operation<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Operation<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::operation));
    let loc = get_loc(path, &pair);
    let mut inner = pair.into_inner();
    let operator = match expect!(inner.next()).as_rule() {
        Rule::ACCESS => ast::Operator::Access,
        Rule::CALL => ast::Operator::Call,
        p @ _ => unreachable!("{:?}", p),
    };
    let right = parse_expr(path, expect!(inner.next()))?;
    Ok(ast::Operation {
        operator,
        right,
        loc,
    })
}

fn parse_expr_item<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::ExprItem<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::expr_item));
    let pair = pair.into_inner().next().unwrap();
    let o = match pair.as_rule() {
        Rule::declare => ast::ExprItem::Declare(Box::new(parse_declare(path, pair)?)),
        Rule::value => ast::ExprItem::Value(parse_value(path, pair)?),
        Rule::closed => ast::ExprItem::Closed(parse_closed(path, pair)?),
        Rule::iden => ast::ExprItem::Iden(parse_iden(path, pair)?),
        _ => unreachable!("{}", pair),
    };
    Ok(o)
}

fn parse_expand1<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Expand1<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::expand1));
    let pair = expect!(pair.into_inner().next());
    Ok(ast::Expand1(parse_expand_item(path, pair)?))
}

fn parse_expand_item<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::ExpandItem<'a>, ParseErr<'a>> {
    let o = match pair.as_rule() {
        Rule::expr_item => ast::ExpandItem::ExprItem(parse_expr_item(path, pair)?),
        Rule::arbitrary => ast::ExpandItem::Arbitrary(parse_arbitrary(path, pair)?),
        _ => unreachable!("{}", pair),
    };
    Ok(o)
}

fn parse_arbitrary<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Arbitrary<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::arbitrary));
    Ok(ast::Arbitrary {
        loc: get_loc(path, &pair),
    })
}

fn parse_iden<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Iden<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::iden));
    let loc = get_loc(path, &pair);
    Ok(ast::Iden {
        a: pair.as_str(),
        loc,
    })
}

fn parse_value<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Value<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::value));
    let loc = get_loc(path, &pair);
    let pair = pair.into_inner().next().unwrap();
    let a = match pair.as_rule() {
        Rule::string => ast::AValue::String(pair.as_str()),
        Rule::integer => ast::AValue::Integer(expect!(pair.as_str().parse::<u64>())),
        _ => panic!("{:?}: {}", pair.as_rule(), pair),
    };
    Ok(ast::Value { a, loc })
}

fn get_loc<'a>(path: &Arc<PathBuf>, pair: &Pair<'a, Rule>) -> ast::Loc<'a> {
    return ast::Loc {
        path: (*path).clone(),
        span: pair.as_span(),
    };
}
