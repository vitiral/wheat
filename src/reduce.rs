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

        let mut new_left: Option<ExprItem> = match &mut expr.left {
            ExprItem::Declare(_) => None,
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
                    _ => panic!(),
                }
            }
            // Already reduced
            _ => None,
        };

        let left = match new_left.as_ref() {
            Some(l) => l,
            None => &expr.left,
        };

        let new_operation: Option<Option<Operation>> = if let Some(operation) = &mut expr.operation
        {
            reduce_expr(&mut operation.right);

            let right = expect!(operation.right.revs.last());

            if right.operation.is_some() {
                // Cannot reduce
                None
            } else {
                let right = &right.left;
                match (&operation.operator, left, right) {
                    ///////////////////
                    // Name reductions
                    (Access, ExprItem::Type(l), ExprItem::Type(r)) => {
                        new_left = Some(ExprItem::Name(Name(vec![l.clone(), r.clone()])));
                        Some(None)
                    }
                    (Access, ExprItem::Type(l), ExprItem::Name(r)) => {
                        let mut n = Vec::with_capacity(r.0.len() + 1);
                        n.push(l.clone());
                        n.extend(r.0.iter().cloned());
                        new_left = Some(ExprItem::Name(Name(n)));
                        Some(None)
                    }
                    (Access, ExprItem::Name(l), ExprItem::Type(r)) => {
                        let mut n = Vec::with_capacity(l.0.len() + 1);
                        n.extend(l.0.iter().cloned());
                        n.push(r.clone());
                        new_left = Some(ExprItem::Name(Name(n)));
                        Some(None)
                    }
                    (Access, ExprItem::Name(l), ExprItem::Name(r)) => {
                        let mut n = Vec::with_capacity(l.0.len() + r.0.len());
                        n.extend(l.0.iter().cloned());
                        n.extend(r.0.iter().cloned());
                        new_left = Some(ExprItem::Name(Name(n)));
                        Some(None)
                    }
                    _ => None,
                }
            }
        } else {
            None
        };

        panic!();
    }
}
