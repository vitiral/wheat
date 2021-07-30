Wheat functions can be either compiled or run as scripts.

## Runtime Environment
Compile-time, Wheat is platform specific, but can be similar to C.

Run-time (script mode), Wheat maintains a map-like data structure (can be a
hash-map, can be a simple linked-list) which is used for running compile-time
functions like consts and macros.


## Syntax Design
Wheat is designed as a single-pass AST, meaning the parsing, compilation and
typechecking happen together in a single pass. This radically reduces the
complexity of implementation, as an AST does not need to be stored in the
simplest cases (although an optimizing compiler can store more).

Possibly this will only be a requirement for stage0 or stage1 of the
compilation and can be relaxed in later implementations.

