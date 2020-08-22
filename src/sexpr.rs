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

pub struct Formatter<'a> {
    w: &'a mut dyn std::io::Write,
    indent: u64,
    indent_value: &'static str,
}

impl<'a> Formatter<'a> {
    fn new(w: &'a mut dyn std::io::Write) -> Formatter<'a> {
        Formatter {
            w,
            indent: 0,
            indent_value: "  ",
        }
    }

    #[throws(std::io::Error)]
    fn fmt(&mut self, s: &S) {
        match s {
            S::Atom(v) => self.w.write_all(v.as_bytes())?,
            S::List(v) => {
                self.start_paren()?;
                let mut items = v.iter();
                if let Some(s) = items.next() {
                    self.fmt(s)?;
                }
                for s in items {
                    self.start_line()?;
                    self.fmt(s)?;
                }
                self.end_paren()?;
            },
            S::Comment(v) =>{
                self.start_line()?;
                for l in v.lines() {
                    self.w.write_all(l.as_bytes())?;
                    self.start_line()?;
                }
            },
        }
    }
    #[throws(std::io::Error)]
    fn start_paren(&mut self) {
        self.w.write_all(b"(")?;
        self.indent += 1;
    }

    #[throws(std::io::Error)]
    fn end_paren(&mut self) {
        self.w.write_all(b")")?;
        self.indent -= 1;
    }

    #[throws(std::io::Error)]
    fn new_line(&mut self) {
        self.w.write_all(b"\n")?;
        self.start_line()?;
    }

    #[throws(std::io::Error)]
    fn start_line(&mut self) {
        for _ in 0..self.indent {
            self.w.write_all(self.indent_value.as_bytes())?;
        }
    }

}

