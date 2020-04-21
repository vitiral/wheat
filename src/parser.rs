use pest;
use pest::Parser;
use pest::iterators::Pair;

#[derive(Parser)]
#[grammar = "syntax.pest"]
pub struct LangParser;

pub fn parse(text: &str) -> Result<Pair<Rule>, pest::error::Error<Rule>> {
  let pair = LangParser::parse(Rule::file, text)?
      .next()
      .unwrap();

  Ok(pair)
}
