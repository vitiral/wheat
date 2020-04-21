#[macro_use]
extern crate log;
extern crate env_logger;
extern crate wast;

extern crate pest;
#[macro_use]
extern crate pest_derive;

mod parser;

use std::fs;
use std::path::PathBuf;
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
    let text = fs::read_to_string(&opt.input)
        .map_err(|e| format!("Failed to parse {}: {}", opt.input.display(), e))?;
    let res = match parser::parse(&text) {
        Ok(r) => r,
        Err(e) => {
            eprintln!("Failed to parse {}\n{:#?}", opt.input.display(), e);
            return Err(e.to_string());
        }
    };

    println!("Parsed {}:\n{:#?}", opt.input.display(), res);
    Ok(())
}
