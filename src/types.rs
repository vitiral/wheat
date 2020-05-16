use thiserror::Error;
use crate::parser::Rule;
use std::path::PathBuf;
use std::sync::Arc;

#[derive(Debug, Error)]
pub enum CError {
    #[error("syntax error: {0}")]
    Pest(#[from] pest::error::Error<Rule>),
}

impl CError {
    pub fn parse_with_offset(src: &str, offset: pest::Span, err: pest::error::Error<Rule>) -> Self {
        use pest::error;
        match err.location {
            error::InputLocation::Pos(p) => {
                let pos = expect!(
                    pest::Position::new(src, offset.start() + p),
                    "p={} offset={:?}",
                    p,
                    offset
                );
                CError::Pest(error::Error::new_from_pos(err.variant, pos))
            }
            error::InputLocation::Span((start, end)) => {
                let span = expect!(
                    pest::Span::new(src, offset.start() + start, offset.start() + end),
                    "start={} end={} offset={:?}",
                    start,
                    end,
                    offset
                );
                CError::Pest(error::Error::new_from_span(err.variant, span))
            }
        }
    }
}

#[derive(Debug, Clone)]
pub struct Loc {
    pub path: Arc<PathBuf>,
    pub span: (u64, u64),
}

impl Loc {
    pub fn start(&self) -> u64 {
        self.span.0
    }

    pub fn end(&self) -> u64 {
        self.span.1
    }
}
