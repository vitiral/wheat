//! Reduce/collapse ast.

use crate::ast::*;
use crate::types::*;
use anyhow::{Context, Error};
use std::collections::HashMap;
use std::collections::HashSet;
use std::path::PathBuf;
use std::sync::Arc;
use thiserror::Error;

#[throws]
pub fn reduce_pkg(external: &External, mut files: HashMap<Path, File>) -> Pkg {
    let mut declare: HashMap<Path, Expr> = HashMap::new();
    for (path, mut file) in files.drain() {
        for mut expr in file.exprs.drain(0..) {
            reduce_expr_names(&mut expr);
            reduce_top_expr(external, &mut expr);
        }
    }
    // We need to:
    // - reduce macro expansions
    // - collect declarations of functions, structs, enums and globals for name resolution
    panic!();
}

#[throws]
pub fn reduce_top_expr(external: &External, expr: &mut Expr) {
    let data = expr.rev_mut();
    let reason = "only declarations or expansions can be performed at the top level";
    let mut new_data: Option<ExprData> = None;

    match (&data.left, &mut data.operation) {
        (ExprItem::Declare(_), Some(_)) => throw!(CError::InvalidExpr {
            expr: expr.clone(),
            reason: "operations cannot be performed on declarations.".to_owned()
        }),
        (ExprItem::Declare(_), None) => {} // valid expression
        (ExprItem::Path(path), Some(operation)) => {
            match operation.operator {
                Operator::Expand1 => {
                    new_data = Some(reduce_expand1(external, path, operation)?);
                },
                _ => throw!(CError::InvalidExpr {
                    expr: expr.clone(),
                    reason: reason.to_owned(),
                }),
            }
        }
        _ => throw!(CError::InvalidExpr {
            expr: expr.clone(),
            reason: reason.to_owned(),
        }),
    }
    panic!();
}

#[throws]
pub fn reduce_expand1(external: &External, path: &Path, operation: &mut Operation) -> ExprData {
    let p = path.as_slice();
    if p == PATH_WASM_PRIV.as_ref() {
        panic!();
    }
    panic!();
}

pub fn reduce_expr_names(expr: &mut Expr) {
    let (new_left, new_operation) = {
        let data = expect!(expr.revs.last_mut());

        let mut new_left: Option<ExprItem> = match &mut data.left {
            ExprItem::Declare(_) => None,
            ExprItem::Closed(c) => {
                match c {
                    Closed::Block(b) => {
                        // () => Void
                        // ( data ) => data
                        // ( a; b) => (a; b)
                        // ( a;) => (a;)
                        if b.exprs.is_empty() {
                            Some(ExprItem::Void)
                        } else if b.exprs.len() == 1 && !b.end {
                            reduce_expr_names(&mut b.exprs[0]);
                            if b.exprs[0].rev().operation.is_none() {
                                Some(b.exprs[0].rev().left.clone())
                            } else {
                                None
                            }
                        } else {
                            None
                        }
                    }
                    _ => panic!(),
                }
            }
            // Already reduced
            _ => None,
        };

        let left = match new_left.as_ref() {
            Some(l) => l,
            None => &data.left,
        };

        let new_operation: Option<Option<Operation>> = if let Some(operation) = &mut data.operation
        {
            reduce_expr_names(&mut operation.right);

            let right = operation.right.rev();

            if right.operation.is_some() {
                // Cannot reduce
                None
            } else {
                let right = &right.left;
                match (&operation.operator, left, right) {
                    (Operator::Access, ExprItem::Path(left), ExprItem::Path(right)) => {
                        let mut n = Vec::with_capacity(left.0.len() + right.0.len());
                        let extend_path = |n: &mut Vec<_>, path: &Path| {
                            n.extend(path.0.iter().cloned());
                        };
                        extend_path(&mut n, left);
                        extend_path(&mut n, right);
                        new_left = Some(ExprItem::Path(Path(n)));
                        Some(None)
                    }
                    _ => None,
                }
            }
        } else {
            None
        };

        (new_left, new_operation)
    };

    if new_left.is_some() || new_operation.is_some() {
        let left = match new_left {
            Some(new_left) => new_left,
            None => expr.rev().left.clone(),
        };

        let operation = match new_operation {
            Some(o) => o,
            None => expr.rev().operation.clone(),
        };

        expr.revs.push(ExprData {
            left,
            operation,
            loc: expr.rev().loc.clone(),
        });
    }
}
