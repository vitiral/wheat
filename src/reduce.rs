//! Reduce/collapse ast.

use crate::ast::*;
use crate::types::*;
use anyhow::{Context, Error};
use std::collections::HashMap;
use std::collections::HashSet;
use std::path::PathBuf;
use std::sync::Arc;
use thiserror::Error;

use crate::sexpr;

// TODO: I should be passing all items in owned values + returning the new items.
// I can probably even get rid of revs, and even ExprData->Expr

#[throws]
pub fn reduce_expr(ext: &External, mut expr: Expr) -> Expr {
    // let (new_left, new_operation) = {
    {
        let mut data = expect!(expr.revs.pop());

        panic!();

        // let left = match new_left.as_ref() {
        //     Some(l) => l,
        //     None => &data.left,
        // };

        // let new_operation: Option<Option<Operation>> = if let Some(operation) = &mut data.operation
        // {
        //     reduce_expr_names(&mut operation.right);

        //     let right = operation.right.rev();

        //     if right.operation.is_some() {
        //         // Cannot reduce
        //         None
        //     } else {
        //         let right = &right.left;
        //         match (&operation.operator, left, right) {
        //             (Operator::Access, ExprItem::Path(left), ExprItem::Path(right)) => {
        //                 let mut n = Vec::with_capacity(left.0.len() + right.0.len());
        //                 let extend_path = |n: &mut Vec<_>, path: &Path| {
        //                     n.extend(path.0.iter().cloned());
        //                 };
        //                 extend_path(&mut n, left);
        //                 extend_path(&mut n, right);
        //                 new_left = Some(ExprItem::Path(Path(n)));
        //                 Some(None)
        //             }
        //             _ => None,
        //         }
        //     }
        // } else {
        //     None
        // };

        // (new_left, new_operation)
    };

    panic!();
    // if new_left.is_some() || new_operation.is_some() {
    //     let left = match new_left {
    //         Some(new_left) => new_left,
    //         None => expr.rev().left.clone(),
    //     };

    //     let operation = match new_operation {
    //         Some(o) => o,
    //         None => expr.rev().operation.clone(),
    //     };

    //     expr.revs.push(ExprData {
    //         left,
    //         operation,
    //         loc: expr.rev().loc.clone(),
    //     });
    // }

}

#[throws]
pub fn reduce_expr_item(ext: &External, mut item: ExprItem) -> ExprItem {
     match item {
        ExprItem::Closed(mut c) => {
            match c {
                Closed::Block(mut b) => {
                    if b.exprs.is_empty() {
                        // () => Void
                        ExprItem::Void
                    } else if b.exprs.len() == 1 && !b.end {
                        let mut inner: Expr = expect!(b.exprs.pop());
                        inner = reduce_expr(ext, inner)?;

                        if inner.rev().operation.is_none() {
                            // ( data ) => data
                            expect!(inner.revs.pop()).left
                        } else {
                            // ( a;) => (a;)
                            b.exprs.push(inner);
                            ExprItem::Closed(Closed::Block(b))
                        }
                    } else {
                        // ( a; b) => (a'; b')
                        let mut exprs = Vec::new();
                        for e in b.exprs.drain(..) {
                            exprs.push(reduce_expr(ext, e)?);
                        }
                        b.exprs = exprs;
                        ExprItem::Closed(Closed::Block(b))
                    }
                }
                _ => panic!(),
            }
        }
        // Already reduced
        _ => panic!(),
    };
    panic!()

}

#[throws]
pub fn reduce_pkg(ext: &External, mut files: HashMap<Path, File>) -> Pkg {
    let mut declare: HashMap<Path, Expr> = HashMap::new();
    for (path, mut file) in files.drain() {
        for mut expr in file.exprs.drain(0..) {
            reduce_expr_names(&mut expr);
            reduce_top_expr(ext, &mut expr);
        }
    }
    // We need to:
    // - reduce macro expansions
    // - collect declarations of functions, structs, enums and globals for name resolution
    panic!();
}

#[throws]
pub fn reduce_top_expr(ext: &External, expr: &mut Expr) {
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
                    panic!();
                    // new_data = Some(reduce_expand1(ext,  operation)?);
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
pub fn reduce_expand1(ext: &External, item: &mut ExprData) -> ExprData {
    // recursively reduce the right side
    let operation = expect!(item.operation.as_mut());
    assert!(matches!(operation.operator, Operator::Expand1));

    // let p = path.as_slice();
    // if p == PATH_WASM_PRIV.as_ref() {
    //     sexpr::parse(
    // }
    panic!();
}


pub fn reduce_expr_names(expr: &mut Expr) {
    let (new_left, new_operation) = {
        let data = expect!(expr.revs.last_mut());

        let mut new_left: Option<ExprItem> = match &mut data.left {
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
                    _ => None,
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

/// To be called after reducing the names
#[throws]
pub fn reduce_expr_old(ext: &External, expr: &mut Expr) {
    {
        let data = expect!(expr.revs.last_mut());

        // let mut new_left: Option<ExprItem> = match &mut data.left {
        //     // ExprItem::Declare(d) => reduce_declare(ext, d)?,
        //     ExprItem::Declare(d) => panic!(),
        //     ExprItem::Value(c) => None,
        //     ExprItem::Closed(c) => panic!(),
        //     ExprItem::Infer => None,
        //     ExprItem::Path(p) => None,
        //     ExprItem::Arbitrary(_) => None,
        // };
    }
    panic!()


}

#[throws]
pub fn reduce_declare_old(ext: &External, declare: &mut Declare) -> Option<Declare> {
    match declare {
        // Declare::DeclareFn(f) => {
        //     // let new_input = reduce_data(ext, &f.input)?;
        //     panic!();
        // }
        _ => panic!(),
    }
    panic!()
}

