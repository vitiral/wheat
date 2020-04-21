use pest;
use pest::iterators::Pair;
use pest::Parser;

#[derive(Parser)]
#[grammar = "syntax.pest"]
pub struct LangParser;

pub fn parse(text: &str) -> Result<(), pest::error::Error<Rule>> {
    LangParser::parse(Rule::file, text)?;

    Ok(())
}
