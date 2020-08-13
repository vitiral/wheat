use pest;
use anyhow::Error;
use pest::iterators::Pair;
use pest::iterators::Pairs;
use pest::Parser;

#[throws]
pub fn parse(text: &str) -> S {
    let exprs: Vec<_> = LangParser::parse(Rule::file, text)?
        .filter(|pair| !matches!(pair.as_rule(), Rule::EOI))
        .map(parse_s)
        .collect();

    panic!();
}

fn parse_expr(pair: Pair<Rule>) -> S {
    assert!(matches!(pair.as_rule(), Rule::expr), "{}", pair);

    let mut exprs = Vec::new();
    for pair in pair.into_inner() {
        let e = match pair.as_rule() {
            Rule::atom => S::Atom(pair.as_str().to_string()),
            Rule::sexpr => S::List(parse_s(pair)),
            Rule::comment => S::Comment(parse_comment(pair)),
            _ => unreachable!("{:?}", pair.as_rule()),
        };
        exprs.push(e);
    }

    S::List(exprs)
}

fn parse_s(pair: Pair<Rule>) -> Vec<S> {
    assert!(matches!(pair.as_rule(), Rule::sexpr), "{}", pair);
    pair
        .into_inner()
        .map(parse_expr)
        .collect()
}

fn parse_comment(pair: Pair<Rule>) -> String {
    assert!(matches!(pair.as_rule(), Rule::comment), "{}", pair);
    expect!(pair.into_inner().next()).as_str().to_string()
}


#[derive(Parser)]
#[grammar = "sexpr.pest"]
pub struct LangParser;

pub enum S {
    Atom(String),
    List(Vec<S>),
    Comment(String),
}
