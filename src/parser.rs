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
            Rule::declare_fn => {
                functions.push(parse_fn(path, pair)?);
            }
            Rule::declare_var => {}
            Rule::EOI => {}
            _ => panic!("{}", pair),
        }
    }

    panic!();
}

fn parse_fn<'a>(
    path: &Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::DeclareFn<'a>, ParseErr<'a>> {
    let loc = get_loc(path, &pair);
    let mut visibility: HashSet<ast::Visibility> = HashSet::new();
    let mut inner = pair.into_inner();
    let mut t = expect!(inner.next());

    if matches!(t.as_rule(), Rule::VISIBILITY) {
        visibility.insert(ast::Visibility::new(t.as_str()));
        t = inner.next().unwrap();
    }

    let fullname = t.as_str();
    let input = parse_declare_data(path.clone(), inner.next().unwrap())?;

    t = inner.next().unwrap();
    let output = if matches!(t.as_rule(), Rule::declare_data) {
        Some(parse_declare_data(path.clone(), t)?)
    } else {
        None
    };

    Ok(ast::DeclareFn {
        visibility,
        name: fullname,
        input,
        output,
        block: parse_block(path.clone(), inner.next().unwrap())?,
        loc,
    })
}

fn parse_declare_data<'a>(
    path: Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::DeclareData<'a>, ParseErr<'a>> {
    panic!();
}

fn parse_block<'a>(
    path: Arc<PathBuf>,
    pair: Pair<'a, Rule>,
) -> Result<ast::Block<'a>, ParseErr<'a>> {
    panic!();
}

fn get_loc<'a>(path: &Arc<PathBuf>, pair: &Pair<'a, Rule>) -> ast::Loc<'a> {
    return ast::Loc {
        path: (*path).clone(),
        span: pair.as_span(),
    };
}
