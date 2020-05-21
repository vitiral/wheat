//! Reduce/collapse ast.

use crate::ast::*;
use crate::types::{CError, Loc};
use anyhow::{Context, Error};
use std::collections::HashSet;
use std::path::PathBuf;
use std::sync::Arc;

#[throws]
pub fn reduce_file(file: File) -> File {
    panic!()
}
