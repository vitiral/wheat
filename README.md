> **wheat does not in any way work. It is an experimental language still in the design phase**

The basic (future) design:
- Compiles directly and plainly to wasm
- Expression based language. Expressions can "return a value"
- Macro and const-function first language: many constructs (i.e. generics) don't exist
  but are solved with macros and insertable types.
- Supports all basic number and string types along with structs, enums and pointers.
- Memorry is RAII with external tracking of ownership.
- Inspired by rust and a [withoutboats blog post](https://boats.gitlab.io/blog/post/notes-on-a-smaller-rust/)

The basic roadmap is as follows:
- [ ] Implement the core language in rust. This will support only the basic types,
  packages and a few built-in macros. It will not allow custom macros.
- [ ] Implement the core wheat language in wheat, becoming a bootstrapping
  compiler.
- [ ] Implement a wasm interpreter in wheat.
- [ ] Implement the custom macro system, which requires running wheat/wasm on
  the fly.
- [ ] Implement wasm to native-assembly compiler in wheat, preferablly JiT
  to speed up the macro system.
- [ ] Use wheat to build a simple functional language for more complicated
  software.
- [ ] Implement the lifetime checker in this new language, add lifetimes
  to the core library and create a stdlib with lifetimes.
- [ ] Clean up existing software
- [ ] Implement native-assmbly extensions to the wasm compiler in wheat.
- [ ] Use wheat to build the [Civboot](civboot.org) operating system
  and core software.
- [ ] Implement simple wasm optimizers in the functional language.

# Overview

All functions take a struct as input, and all structs are addressable by
index, so are essentially tuples. All data structures (structs/enums/function
inputs/etc) are declared like:

```
{arg1: type1; arg2: String = "default value"}
```

A statement-expression executes some behavior and can optionally end in`;`.
Multiple statements (a statement block) can be contained within `(...)`.
Statements that don't end in `;` can return a value.

For example:
```
let own v: i32 = (
  let a = 2;
  let b = 40;
  a + b
);
si.print$   // print a string
  i32ts$ v; // convert i32 to a string
si.printf!("v={}", v); // macro call, prints "v=42"
```

```
alias Id: u32;
let own id: Id = 42;
```

The following is the function `splitl` which takes a struct containg a string
and delimiter as input and returns an annonymous struct containing the values
to the left and right of the first delimiter on the left. Please ignore the
`own` keyword, it will be discussed in ownership.

```
fn splitl{own s: String; delimiter: char}
  -> { left: String; right: String; }
(
  for!!({let c = ch; let i = index} = s.charsIndex${}) (
    if c == delimter (
      let right = s.removeTail$(s.len$_ - i - 1);
      s.pop$_; // pop delimiter
      return ret$ {left = s; right = right};
    )
  )
  return ret$ {left=s; right=String.default()};
)
```

If you wanted to be able to address both the input and output structs by index,
you would write the following

`math!` and `for!!` are macros. Macros with one `!` consume the next
expression. Macros with two `!!` (like `for!!`) consume the next two
expressions.

Macros can consume any expression meaning they can consume a container (a
struct value, etc), a statement or block of statements `(...)`, a function, a
struct definition, a type statement (`[u32]`), an arbitrary block (`#( ...
)#`), etc.

Macros can be chained by simply putting them next to eachother without passing
them a different expression. For instance, to implement the Debug and Eq
interfaces for a struct you might do:

```
Debug! Eq!
struct Point (
  x: int;
  y: int;
)
```

In this case, the expressions get consumed bottom-up. So the `struct` expression
gets sent to `Eq!` which gets passed to `Debug!`. In this case, the order
doesn't matter, but that might not always be the case.

# Core Types
- bool
- u8, u16, u32, u64
- i8, i16, i32, i64
- usize, isize, ptr
- f32, f64
- [32; type]
- Void

# Operators
There are currently only four operators

- `.` access operator for accessing items within packages/structs/interfaces/etc.
- `$` function call operator. Calls the previous expression with the next expression.
  If the next expression is a data expression, that is used as the named
  arguments. Otherwise it is used as the first argument for order-enabled
  expressions.
- `!` macro expansion operator. Performs macro expansion on the next expression per
  the previous identifier, producing a single expression.
- `!!` double macro expansion operator. Performs macro expansion on the next
  two expressions per the previous identifier, producing a single expression.

# Ownership
There are a few ways to declare a value:
- `let` expressions
- function inputs
- structs and enums

The following control how the value can be used and when it is freed:

- `own <type>` declares an _owned exclusive value_. It can be
  mutated and will be destroyed at end of scope. It can be cloned 
  or given to other functions as any of the ownership types.
- `exc <type>` declares an _exlusive reference_. It can be given to other
  functions as an `excl` or `shared` reference. The lifetime (`lt!`) tracker
  will ensure that it is not used while other functions have access to it.
- `ref <type>` declares a _shared reference_. It can be given to other
  functions or stored inside collections. It is guaranteed that there is not
  a simultanious exclusive reference by the `lt!` tracker.
- `const <type>` declares an _immutable value_ created at const/static time.
  There is also `var [&const <type>]` which is a reference to a constant value.
  `const <type>` will be recreated by the compiler at each point it is used,
  `ref const <type>` is an immutable global value in memory. Typically you want
  to use `ref const <type>` except for integers and very small structs.
- Using `_` for the type causes it to be elided. 
- An `own const <type>` is an owned constant, i.e. an immutable value that
  will still be dropped at end of scope and may still have interrior mutability.
- `ref` by itself is a lifetime tracker. It is sometimes used by structs to
  define lifetime relationships and is not a real value (has no size).
- `[5; <own> <type>]` specifies an array of 5 values
- `[?; <own> <type>]` specifies an array of an unknown number of values.
- `[5; <own> [2; <own> <type>]]` specifies a 5x2 array of values.

For a struct/enum to be used in a `const <type>` context, it must have:
- All of its types and their subtypes have `const` in them 
- If a subtype is `own const <type>` it must have no interrior mutability or be
  marked as `constsafe` (only allowed by pkgs with `seclvl = "compiler"`)

## Taint analysis and lifetimes

Eventually, it would be desireable to be able to track lifetimes using
an external linter which has access to the AST attributes. Below is
an example of how this might be done.

```
lt!!{s=res;} // "s" must outlive all values in "res" (result)
fn splitl{s: ref String; delimiter: char}
  -> {left: ref str; right: ref str}
(
  for!!({let c = v; let i = index}; s.charsIndex{}) (
    if c == delimter (
      return ret${left=s.slice(0, i); right=s.slice(i+1, s.len())};
    )
  )
  ret${left=s; right=""}
)
```

# Generics, or rather the lack thereof
The language does not provide generics. Instead types can be specified using
`[]` as part of their name and macros can inject new types (including
functions, implementations, etc) into packages.

For example, a long type:
```
let v: std.collect.HashMap[std.collect.String; u32];
```

However, note that normally people do not specify types in this way... and in fact,
you can imagine that `HashMap` is not implemented for every possible type, even
the ones in the standard library. Instead, the type must be _generated_ by a macro
from within that package, which also  _injects_ it.

```
alias String: std.collect.String;
alias HashMap: std.collect.HashMap;

let m: HashMap![String; u32] = HashMap![String; u32].of!{"foo": 42; "bar": 1};
```

> To simplify, you may also do something like `alias MyHm = HashMap![String; u32]`

The variant of `HashMap` is then _generated_ on the fly and _injected_ into the
namespace `std.collect`. Declaring a macro like `std.collect.HashMap!` is
covered later.

"Generic functions" are also generated via a macro:

```
// continuing above example
m.insert${key="foo"; value=42}; // normal function call
assertEq!{expected=someMap; result=m}?;
```

In the above example we use the `m` value normally by inserting a value into
it. We then call a generated function for comparing the map with another map.
The `?` does error handling, which will be covered later.

What functions or types have to be generated? The answer is _any_ function
which does not take in or return a concrete struct, enum or primitive type.

# Reserved keywords:
- functions: fn, inp, res, self
- types: struct, enum, alias
- ownership: let, const, own, exc, ref
- types: Self
- macros: `wasm_priv!!, for!!, lt!!, gen!!, tar (target)`

# Inline wasm
The `wasm_priv!` macro enables inline wasm. It can use any variables that are
accessible to the program at that point by using their cannonical names and is
not allowed to use addresses that are not accessible local/global variables.

The compiler itself also extensively uses `wasm_priv!` which can execute
ANY arbitrary wasm, but is only available to priveledged pkgs.

The canonical names are generated the following way. Note that the names will
be obfuscated to comply with wat naming standards.

For values related to structs and implementations of structs the
```
$<scope>$$struct(offset|method_name)$$<package>$$<type>($$<method>)?
```

- scope: `local` or `global`
- wtype: the wasm "type", or what the variable actually is. wtypes include:
  - `struct`: the variable contains information related to a struct. Includes:
    - `struct_offset`: an offset. `struct {a [u8]; b[u8]}` will give
      `a` an offset of 0, `b` an offset of 8.
    - `struct_method_name`: the name of a method for a struct to be called.

The wtype for values that are stored in memory is:

```
$(global|local)_(ptr|value)$$<package>$$<name>
```

  - `global_ptr`: a pointer to the start of a global data block.
  - `local_ptr`: a local value pointing into memory, i.e. a value on the stack.

There is also the following:

- `$stack_ptr`: the pointer to the memory stack. Eventually this will be
  thread-local (??)


## Name to wasm mapping
https://webassembly.github.io/spec/core/text/values.html#text-id

The text-id spec above is very permissive. It allows most ascii characters
(including `!$%*+./:<>=@` etc). However, it does NOT allow `()[]`.

Type names must use the characters `\w_.[]` Note that `<>` are not permitted in
wheat types. Therefore, when converting wheat type names to wat, `[]` will be
converted to `<>`
