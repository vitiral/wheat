
After the AST is parsed, there are many operations that still need to be
performed.

- Resolve access + names
- Create dependency graph of expressions and sort
- Expand expressions, including macros, const functions and wasm expansion.

Much of the work will revolve around the Expr type, which contains `revs` so that it
can be expanded and collapsed as needed.
