#[macro_use]
extern crate log;
extern crate env_logger;
extern crate wast;

#[macro_use]
extern crate expect_macro;

#[macro_use]
extern crate fehler;

extern crate pest;
#[macro_use]
extern crate pest_derive;

mod ast;
mod parser;
mod types;
mod reduce;

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
    let file = match parser::parse_file(input.clone(), &text) {
        Ok(r) => r,
        Err(e) => {
            eprintln!("Failed to parse {}\n{:#?}", input.display(), e);
            return Err(e.to_string());
        }
    };

    Ok(())
}
