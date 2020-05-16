use std::collections::{HashMap, HashSet};

use pest::Span;
use std::path::PathBuf;
use std::sync::Arc;
use siphasher::sip128::Hash128;

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

/// The `Expr` is the primary unit that the compiler uses for computing
/// the result of the program. Each expression has an `id` and
/// its dependencies. When its dependencies are resolved, then it
/// can be expanded. Once all expansion operations are complete,
/// it can be expanded into wasm.
///
/// An expression is expanded by adding to it's revs, with the last
/// rev being the most complete. In the future, revs may be replaced
/// with ids in a database (or something)
#[derive(Debug)]
pub struct Expr<'a> {
    // /// The id of the expression. This never changes and is based on the hash
    // /// of its first form.
    // id: Hash128,

    pub revs: Vec<ExprData<'a>>,
    pub deps: Vec<Name<'a>>,

    /// Whether the deps have been computed
    pub deps_ready: bool,

    /// Whether the expression is ready to be completed.
    pub ready: bool,

    /// Whether all items within the expression have been expanded.
    pub complete: bool,

    /// Whether the expression is entirely computed.
    pub computed: bool,
}

impl <'a> Expr<'a> {
    pub fn new(data: ExprData<'a>) -> Expr<'a> {
        Expr {
            revs: vec![data],
            deps: vec![],
            deps_ready: false,
            ready: false,
            complete: false,
            computed: false,
        }
    }
}

#[derive(Debug)]
pub struct ExprData<'a> {
    // The first item in an expression, possibly only value.
    pub left: ExprItem<'a>,

    // The (optional) operation to perform on the left expression.
    pub operation: Option<Operation<'a>>,

    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub enum ExprItem<'a> {
    // Can appear directly in Syntax
    Declare(Box<Declare<'a>>),
    Value(Value<'a>),
    Closed(Closed<'a>),
    Iden(Iden<'a>),
    Arbitrary(Arbitrary<'a>),

    // Compressions
    Name(Name<'a>), // Vec of idens with access operations.
}

#[derive(Debug)]
pub struct Operation<'a> {
    pub operator: Operator,
    pub right: Expr<'a>,
    pub right2: Option<Expr<'a>>,
    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub enum Operator {
    Access,
    Call,
    Expand1,
}

#[derive(Debug)]
pub struct Expand1<'a>(pub ExprItem<'a>);

#[derive(Debug)]
pub struct Arbitrary<'a> {
    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub struct Iden<'a> {
    pub a: &'a str,
    pub loc: Loc<'a>,
}

#[derive(Debug)]
pub struct Name<'a> {
    iden: Vec<Iden<'a>>,
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
pub enum Closed<'a> {
    Block(Block<'a>),
    Data(Data<'a>),
    Type(Type<'a>),
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
}
