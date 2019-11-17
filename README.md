# wak: an experimental self-hosting language that compiles directly to wasm

wak, like many failed languages before it, aims to be the next generation of C.
It's primary purposes are:

- To compile directly to a wat (wasm text) representation which can be easily
  reasoned about by a human
- To be compabible on all systems wasm is compatible on (i.e. not require an
  allocator, GC, etc)
- To support bootstrapping other programming languages as easily as possible,
  without harming the above two goals.

The initial version of w++ will support only the following features:
- wasm basic types: `i32`, `i64`, `f32`, `f64`
- functions
- references
- function references (wasm table)
- inline wasm operations
- [`sumtype`](https://en.wikipedia.org/wiki/Tagged_union), a.k.a a tagged union
- [`prodtype`](https://en.wikipedia.org/wiki/Product_type), a.k.a a struct
- traits, a.k.a interfaces
- implicit growable/srinkable memory stack

## Syntax
wak's syntax is a strict superset of wasm. In particular, it maintains that
everything is an S expression. However, it adds several useful extensions
for writing code as a human.

Shortcuts: several types can be inferred or expressed more concisely.

```
(assert_return (i32.const 40)  40

```

## Development
To setup the development environment, make the [wasm-reference][wasm-reference]
interpretter and put it somewhere on your path (named `wasm-reference`). Then
run

```
make test
```

[wasm-reference]: https://github.com/WebAssembly/spec/tree/master/interpreter
