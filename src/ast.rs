use crate::types::Loc;
use std::collections::HashMap;
use std::collections::HashSet;
use std::fmt;

use std::hash;
use std::path::PathBuf;
use std::sync::Arc;

#[derive(Debug, Clone)]
pub struct External {
    pub pkg: HashMap<Name, Pkg>,
}

#[derive(Debug, Clone)]
pub struct Pkg {
    pub declare: HashMap<Path, Expr>,
    pub alias: HashMap<Iden, Path>,
    pub injected: HashMap<Path, Expr>,
}

#[derive(Debug, Clone)]
pub struct File {
    pub path: Arc<PathBuf>,
    pub exprs: Vec<Expr>,
}

#[derive(Debug, Clone, Eq, PartialEq)]
pub struct Attr(String, String);

/// The `Expr` is the primary unit that the compiler uses for computing
/// the result of the program. Each expression has an `id` and
/// its dependencies. When its dependencies are resolved, then it
/// can be expanded. Once all expansion operations are complete,
/// it can be expanded into wasm.
///
/// An expression is expanded by adding to it's revs, with the last
/// rev being the most complete. In the future, revs may be replaced
/// with ids in a database (or something)
#[derive(Debug, Clone)]
pub struct Expr {
    pub revs: Vec<ExprData>,

    /// Assertions tied to this expression
    pub assert_exprs: HashMap<usize, String>,
}

impl Expr {
    pub fn new(data: ExprData) -> Expr {
        Expr {
            revs: vec![data],
            assert_exprs: HashMap::new(),
        }
    }

    pub fn rev(&self) -> &ExprData {
        expect!(self.revs.last())
    }

    pub fn rev_mut(&mut self) -> &mut ExprData {
        expect!(self.revs.last_mut())
    }
}

#[derive(Debug, Clone)]
pub struct ExprData {
    // The first item in an expression, possibly only value.
    pub left: ExprItem,

    // The (optional) operation to perform on the left expression.
    pub operation: Option<Operation>,

    pub loc: Loc,
}

#[derive(Debug, Clone)]
pub enum ExprItem {
    // Can appear directly in Syntax
    Declare(Box<Declare>),
    Value(Value),
    Closed(Closed),
    Infer,
    Path(Path),
    Arbitrary(Arbitrary),
    Void,

    // Reductions, does not appear in AST
    Computed(Computed),
}

#[derive(Debug, Clone)]
pub struct Operation {
    pub operator: Operator,
    pub right: Expr,
    pub right2: Option<Expr>,
    pub loc: Loc,
}

#[derive(Debug, Clone)]
pub enum Operator {
    Access,
    Call,
    Expand1,
}

#[derive(Debug, Clone)]
pub struct Expand1(pub ExprItem);

#[derive(Debug, Clone, Eq, PartialEq, Hash)]
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

#[derive(Debug, Clone, Eq, PartialEq, Hash)]
pub enum Ownership {
    Const,
    Own,
    Ref,
    Exc,
    None,
}

impl Ownership {
    pub fn new(s: &str) -> Self {
        match s {
            "own" => Ownership::Own,
            "ref" => Ownership::Ref,
            "exc" => Ownership::Exc,
            "const" => Ownership::Const,
            _ => unreachable!(s),
        }
    }
}

#[derive(Debug, Clone)]
pub struct Iden {
    pub a: String,
    pub loc: Loc,
}

impl PartialEq for Iden {
    fn eq(&self, other: &Self) -> bool {
        self.a == other.a
    }
}

impl Eq for Iden {}

impl hash::Hash for Iden {
    fn hash<H: hash::Hasher>(&self, state: &mut H) {
        self.a.hash(state);
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Hash)]
pub struct Path(pub Vec<String>);

impl Path {
    pub fn as_slice(&self) -> &[String] {
        self.0.as_slice()
    }
}

impl From<Name> for Path {
    fn from(name: Name) -> Self {
        let mut n = Vec::with_capacity(1);
        n.push(name.to_string());
        Self(n)
    }
}

impl fmt::Display for Path {
    #[throws(fmt::Error)]
    fn fmt(&self, f: &mut fmt::Formatter<'_>) {
        let mut iter = self.0.iter();
        if let Some(c) = iter.next() {
            write!(f, "{}", c)?;
        }
        for c in iter {
            write!(f, ".{}", c)?;
        }
    }
}

#[derive(Debug, Clone)]
/// Computed webassembly
pub struct Computed {

}

#[derive(Debug, Clone)]
pub struct Value {
    pub a: AValue,
    pub loc: Loc,
}

#[derive(Debug, Clone)]
pub enum AValue {
    Integer(u64),
    String(String),
    Char(char),
    Bool(bool),
}

#[derive(Debug, Clone)]
pub enum Declare {
    Fn(DeclareFn),
    Struct(DeclareStruct),
    Enum(DeclareEnum),
    Var(DeclareVar),
}

#[derive(Debug, Clone)]
pub struct DeclareFn {
    pub visibility: HashSet<Visibility>,
    pub name: Name,
    pub input: Data,
    pub output: Option<Data>,
    pub block: Block,
    pub loc: Loc,
    // Computed
    // pub attr: HashSet<Attr>,
}

#[derive(Debug, Clone)]
pub struct DeclareStruct {
    pub name: Name,
    pub visibility: HashSet<Visibility>,
    pub data: Data,
    pub loc: Loc,
    // Computed
    // pub attr: HashSet<Attr>,
}

#[derive(Debug, Clone)]
pub struct DeclareEnum {
    pub name: Name,
    pub visibility: HashSet<Visibility>,
    pub data: Data,
    pub loc: Loc,
    // Computed
    // pub attr: HashSet<Attr>,
}

#[derive(Debug, Clone)]
pub struct DeclareVar {
    pub let_: bool,
    pub visibility: HashSet<Visibility>,
    pub ownership: HashSet<Ownership>,
    pub name: Name,
    pub assign_ownership: HashSet<Ownership>,
    pub assign: Option<Expr>,
    pub loc: Loc,
}

#[derive(Debug, Clone)]
pub enum Closed {
    Block(Block),
    Data(Data),
    Name(NameBlock),
}

#[derive(Debug, Clone)]
pub struct Block {
    pub exprs: Vec<Expr>,
    pub end: bool,
    pub loc: Loc,
}

#[derive(Debug, Clone)]
pub struct Data {
    pub fields: Vec<DeclareVar>,
    pub loc: Loc,
}

#[derive(Debug, Clone, Copy)]
pub enum NameRef {
    None,
    Ref,
    Exc,
}

impl NameRef {
    pub fn new(s: &str) -> Self {
        match s {
            "ref" => NameRef::Ref,
            "exc" => NameRef::Exc,
            _ => unreachable!(s),
        }
    }
}

#[derive(Debug, Clone)]
pub struct Name {
    pub iden: Iden,
    pub block: Vec<Name>,
    pub r: NameRef,
    pub loc: Loc,
}

impl Name {
    pub fn to_string(&self) -> String {
        let mut s = String::with_capacity(self.str_len());
        self.push_to_string(&mut s);
        s
    }

    fn str_len(&self) -> usize {
        let mut len: usize = self.iden.a.len();
        if !self.block.is_empty() {
            let sum: usize = self.block.iter().map(|n: &Name|->usize {n.str_len()}).sum();
            len = len + 2 // for []
                + sum
                + (self.block.len() - 1) * 2; // for "; " between
        }
        return len;
    }

    fn push_to_string(&self, s: &mut String) {
        s.push_str(&self.iden.a);
        if !self.block.is_empty() {
            s.push_str("[");
            let mut block = self.block.iter();
            expect!(block.next()).push_to_string(s);
            for n in block {
                s.push_str("; ");
                n.push_to_string(s);
            }
        }
    }
}

impl PartialEq for Name {
    fn eq(&self, other: &Self) -> bool {
        self.iden == other.iden && self.block == other.block
    }
}

impl Eq for Name {}

impl hash::Hash for Name {
    fn hash<H: hash::Hasher>(&self, state: &mut H) {
        self.iden.hash(state);
        self.block.hash(state);
    }
}

impl fmt::Display for Name {
    #[throws(fmt::Error)]
    fn fmt(&self, f: &mut fmt::Formatter<'_>) {
        write!(f, "{}", self.iden.a)?;
        if !self.block.is_empty() {
            write!(f, "[")?;
            let mut iter = self.block.iter();
            write!(f, "{}", expect!(iter.next()))?;
            for n in iter {
                write!(f, "; {}", n)?;
            }
            write!(f, "]")?;
        }
    }
}

#[derive(Debug, Clone)]
pub struct NameBlock {
    // Expressions which must be expanded
    pub expand: Vec<Expr>,
    pub loc: Loc,
    // TODO: Expand into:
    // pub declare_var: Vec<DeclareVar>,
    // pub name: Vec<Name>,
}

#[derive(Debug, Clone)]
pub struct Array {
    pub size: usize,
    pub name: Name,
    pub loc: Loc,
}

#[derive(Debug, Clone)]
pub struct Arbitrary {
    pub loc: Loc,
}
