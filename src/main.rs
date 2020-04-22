#[macro_use]
extern crate log;
extern crate env_logger;
extern crate wast;

#[macro_use]
extern crate expect_macro;

extern crate pest;
#[macro_use]
extern crate pest_derive;

mod ast;
mod parser;

use std::fs;
use std::path::PathBuf;
use std::sync::Arc;
use structopt::StructOpt;

#[derive(Debug, StructOpt)]
#[structopt(name = "lang", about = "An experimental programming language.")]
struct Opt {
    /// Input file
    #[structopt(parse(from_os_str))]
    input: PathBuf,

    /// Output file
    #[structopt(parse(from_os_str), default_value = "out.wat")]
    output: PathBuf,
}

fn main() -> Result<(), String> {
    env_logger::init();
    let opt = Opt::from_args();
    info!("{:?}", opt);
    let input = Arc::new(opt.input);
    let text = fs::read_to_string(input.as_ref())
        .map_err(|e| format!("Failed to parse {}: {}", input.display(), e))?;
    let res = match parser::parse(&input, &text) {
        Ok(r) => r,
        Err(e) => {
            eprintln!("Failed to parse {}\n{:#?}", input.display(), e);
            return Err(e.to_string());
        }
    };
    let file = match parser::build_ast(&input, res) {
        Ok(r) => r,
        Err(e) => {
            let msg = format!("Failed to build ast {}\n{:#?}", input.display(), e);
            eprintln!("{}", msg);
            return Err(msg);
        }
    };

    Ok(())
}
