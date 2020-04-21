use pest;
use pest::Parser;
use pest::iterators::Pair;
use crate::ast;
use std::sync::Arc;
use std::path::PathBuf;

#[derive(Parser)]
#[grammar = "syntax.pest"]
pub struct LangParser;


pub fn parse(path: Arc<PathBuf>, text: &str) -> Result<Vec<Pair<Rule>>, pest::error::Error<Rule>> {
  let pair = LangParser::parse(Rule::file, text)?.collect();

  let path = Arc::new(path);
  // let mut globals = Vec::new();
  // let mut functions = Vec::new();

  Ok(pair)
}
