//! Reduce/collapse ast.

use crate::ast::*;
use crate::types::{CError, Loc};
use anyhow::{Context, Error};
use std::collections::HashSet;
use std::path::PathBuf;
use std::sync::Arc;

pub fn reduce_file(mut file: File) -> File {
    panic!()
}

pub fn reduce_expr(expr: &mut Expr) {
    {
        let expr = expect!(expr.revs.last_mut());

        let new_left: Option<ExprItem> = match &mut expr.left {
            ExprItem::Declare(d) => panic!(),
            ExprItem::Closed(c) => {
                match c {
                    Closed::Block(b) => {
                        // () => Void
                        // ( expr ) => expr
                        // ( a; b) => (a; b)
                        if b.exprs.is_empty() {
                            Some(ExprItem::Void)
                        } else if b.exprs.len() == 1 && !b.end {
                            reduce_expr(&mut b.exprs[0]);
                            if expect!(b.exprs[0].revs.last()).operation.is_none() {
                                Some(expect!(b.exprs[0].revs.last()).left.clone())
                            } else {
                                None
                            }
                        } else {
                            None
                        }
                    }
                    _ => panic!()
                }
            },
            ExprItem::Infer => panic!(),
            ExprItem::Type(t) => panic!(),
            ExprItem::Arbitrary(a) => panic!(),
            ExprItem::Void => panic!(),

            // Already reduced
            ExprItem::Value(_) | ExprItem::Name(_) | ExprItem::Computed(_) => panic!(),
        };

        let operation: Option<Operation> = if let Some(operation) = &expr.operation {
            // possibly join operation
            panic!()
        } else {
            None
        };

    }
}
