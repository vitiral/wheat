#[macro_use]
extern crate log;
extern crate env_logger;
extern crate wast;

use std::path::PathBuf;
use structopt::StructOpt;

#[derive(Debug, StructOpt)]
#[structopt(name = "example", about = "An example of StructOpt usage.")]
struct Opt {
    /// Input file
    #[structopt(parse(from_os_str))]
    input: PathBuf,

    /// Output file
    #[structopt(parse(from_os_str))]
    output: PathBuf,
}

fn main() {
    env_logger::init();
    let opt = Opt::from_args();
    info!("{:?}", opt);
}
