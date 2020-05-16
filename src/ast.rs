use std::collections::HashMap;
use std::collections::HashSet;

use std::path::PathBuf;
use std::sync::Arc;

#[derive(Debug)]
pub struct File {
    pub path: Arc<PathBuf>,
    pub globals: Vec<DeclareVar>,
    pub functions: Vec<DeclareFn>,
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
pub struct Expr {
    // /// The id of the expression. This never changes and is based on the hash
    // /// of its first form.
    // id: Hash128,
    pub revs: Vec<ExprData>,
    pub deps: Vec<Name>,

    /// Whether the deps have been computed
    pub deps_ready: bool,

    /// Whether the expression is ready to be completed.
    pub ready: bool,

    /// Whether all items within the expression have been expanded.
    pub complete: bool,

    /// Whether the expression is entirely computed.
    pub computed: bool,

    /// Assertions tied to this expression
    pub assert_exprs: HashMap<usize, String>,
}

impl Expr {
    pub fn new(data: ExprData) -> Expr {
        Expr {
            revs: vec![data],
            deps: vec![],
            deps_ready: false,
            ready: false,
            complete: false,
            computed: false,
            assert_exprs: HashMap::new(),
        }
    }
}

#[derive(Debug)]
pub struct ExprData {
    // The first item in an expression, possibly only value.
    pub left: ExprItem,

    // The (optional) operation to perform on the left expression.
    pub operation: Option<Operation>,

    pub loc: Loc,
}

#[derive(Debug)]
pub enum ExprItem {
    // Can appear directly in Syntax
    Declare(Box<Declare>),
    Value(Value),
    Closed(Closed),
    Iden(Iden),
    Arbitrary(Arbitrary),

    // Compressions
    Name(Name), // Vec of idens with access operations.
}

#[derive(Debug)]
pub struct Operation {
    pub operator: Operator,
    pub right: Expr,
    pub right2: Option<Expr>,
    pub loc: Loc,
}

#[derive(Debug)]
pub enum Operator {
    Access,
    Call,
    Expand1,
}

#[derive(Debug)]
pub struct Expand1(pub ExprItem);

#[derive(Debug)]
pub struct Arbitrary {
    pub loc: Loc,
}

#[derive(Debug)]
pub struct Iden {
    pub a: String,
    pub loc: Loc,
}

#[derive(Debug)]
pub struct Name {
    iden: Vec<Iden>,
}

#[derive(Debug)]
pub struct Value {
    pub a: AValue,
    pub loc: Loc,
}

#[derive(Debug)]
pub enum AValue {
    String(String),
    Integer(u64),
}

#[derive(Debug)]
pub enum Declare {
    Var(DeclareVar),
    Fn(DeclareFn),
}

#[derive(Debug)]
pub struct DeclareFn {
    pub visibility: HashSet<Visibility>,
    pub name: String,
    pub input: Data,
    pub output: Option<Data>,
    pub block: Block,
    pub loc: Loc,
}

#[derive(Debug)]
pub struct DeclareVar {
    pub let_: bool,
    pub visibility: HashSet<Visibility>,
    pub ownership: HashSet<Ownership>,
    pub var: String,
    pub type_: Option<Type>,
    pub assign_ownership: HashSet<Ownership>,
    pub assign: Option<Expr>,
    pub loc: Loc,
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
pub enum Closed {
    Block(Block),
    Data(Data),
    Type(Type),
}

#[derive(Debug)]
pub struct Block {
    pub exprs: Vec<Expr>,
    pub end: bool,
}

#[derive(Debug)]
pub struct Data {
    pub fields: Vec<DeclareVar>,
    pub loc: Loc,
}

#[derive(Debug)]
pub struct Type {
    pub a: AType,
    pub loc: Loc,
}

#[derive(Debug)]
pub enum AType {
    Literal(String),
}

// ####################
// # TESTING
