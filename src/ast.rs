use std::collections::{HashMap, HashSet};

use pest::Span;
use std::path::PathBuf;
use std::sync::Arc;

#[derive(Debug)]
pub struct File<'a> {
    pub path: Arc<PathBuf>,
    pub globals: Vec<DeclareVar<'a>>,
    pub functions: Vec<DeclareFn<'a>>,
}

#[derive(Debug, Clone)]
pub struct Loc<'a> {
    pub path: Arc<PathBuf>,
    pub span: Span<'a>,
}

#[derive(Debug)]
pub enum Expr<'a> {
    Declare(Box<Declare<'a>>),
    Value(Value<'a>),
    CallFn(CallFn<'a>),
}

#[derive(Debug)]
pub struct Value<'a> {
    pub a: AValue<'a>,
    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub enum AValue<'a> {
    String(&'a str),
    Integer(u64),
}

#[derive(Debug)]
pub struct CallFn<'a> {
    pub name: &'a str,
    pub data: Data<'a>,
    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub enum Declare<'a> {
    Var(DeclareVar<'a>),
    Fn(DeclareFn<'a>),
}

#[derive(Debug)]
pub struct DeclareFn<'a> {
    pub visibility: HashSet<Visibility>,
    pub name: &'a str,
    pub input: Data<'a>,
    pub output: Option<Data<'a>>,
    pub block: Block<'a>,
    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub struct DeclareVar<'a> {
    pub let_: bool,
    pub visibility: HashSet<Visibility>,
    pub ownership: HashSet<Ownership>,
    pub var: &'a str,
    pub type_: Option<Type<'a>>,
    pub assign_ownership: HashSet<Ownership>,
    pub assign: Option<Expr<'a>>,
    pub loc: Loc<'a>,
}

#[derive(Debug, Eq, PartialEq, Hash)]
pub enum Visibility {
    Pub,
}

impl Visibility {
    pub fn new(s: &str) -> Self {
        match s {
            "pub" => Visibility::Pub,
            _ => unreachable!(s),
        }
    }
}

#[derive(Debug, Eq, PartialEq, Hash)]
pub enum Ownership {
    Own,
    Mut,
    Sync,
    Const,
}

impl Ownership {
    pub fn new(s: &str) -> Self {
        match s {
            "own" => Ownership::Own,
            "mut" => Ownership::Mut,
            "snc" => Ownership::Sync,
            "const" => Ownership::Const,
            _ => unreachable!(s),
        }
    }
}

#[derive(Debug)]
pub struct Block<'a> {
    pub exprs: Vec<Expr<'a>>,
    pub end: bool,
}

#[derive(Debug)]
pub struct Data<'a> {
    pub fields: Vec<DeclareVar<'a>>,
    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub struct Type<'a> {
    pub a: AType,
    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub enum AType {
    Literal(String),
    // Macro1(...),
}
