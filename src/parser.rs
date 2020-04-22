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
    let input = parse_declare_data(&path, inner.next().unwrap())?;

    t = inner.next().unwrap();
    let output = if matches!(t.as_rule(), Rule::declare_data) {
        let s = Some(parse_declare_data(&path, t)?);
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

fn parse_declare_data<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::DeclareData<'a>, ParseErr<'a>> {
    assert!(matches!(pair.as_rule(), Rule::declare_data));
    let loc = get_loc(path, &pair);
    let mut data = Vec::new();
    for pair in pair.into_inner() {
        assert!(matches!(pair.as_rule(), Rule::declare_data_var));
        let loc = get_loc(path, &pair);
        let mut inner = pair.into_inner();
        let var = expect!(inner.next()).as_str();
        let type_ = parse_type(path, expect!(inner.next()))?;
        let assign = if let Some(a) = inner.next() {
            Some(parse_expr(path, a)?)
        } else {
            None
        };
        data.push(ast::DeclareDataVar {
            var,
            type_,
            assign,
            loc,
        })
    }
    Ok(ast::DeclareData { data, loc })
}

fn parse_block<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Block<'a>, ParseErr<'a>> {
    panic!();
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
    let pair = pair.into_inner().next().unwrap();
    let o = match pair.as_rule() {
        Rule::value => ast::Expr::Value(parse_value(path, pair)?),
        _ => panic!("not implemented"),
    };
    Ok(o)
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
        _ => panic!("not implemented"),
    };
    Ok(ast::Value { a, loc })
}

fn get_loc<'a>(path: &Arc<PathBuf>, pair: &Pair<'a, Rule>) -> ast::Loc<'a> {
    return ast::Loc {
        path: (*path).clone(),
        span: pair.as_span(),
    };
}
