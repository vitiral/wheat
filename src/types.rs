use thiserror::Error;
use crate::parser::Rule;

#[derive(Debug, Error)]
pub enum Error {
    #[error("syntax error: {0}")]
    Pest(#[from] pest::error::Error<Rule>),
}

impl Error {
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
                Error::Pest(error::Error::new_from_pos(err.variant, pos))
            }
            error::InputLocation::Span((start, end)) => {
                let span = expect!(
                    pest::Span::new(src, offset.start() + start, offset.start() + end),
                    "start={} end={} offset={:?}",
                    start,
                    end,
                    offset
                );
                Error::Pest(error::Error::new_from_span(err.variant, span))
            }
        }
    }
}

