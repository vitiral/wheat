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
- [`sumt`](https://en.wikipedia.org/wiki/Tagged_union), sum type a.k.a a tagged union
- [`prodt`](https://en.wikipedia.org/wiki/Product_type), product type a.k.a a struct
- traits, a.k.a interfaces
- implicit growable/srinkable memory stack

## Syntax
wak's syntax is a strict superset of wasm. In particular, it maintains that
everything is an S expression. However, it adds several useful extensions
for writing code as a human.

**Simple Shortcuts**: several types can be expressed more concisely
```
40_i32          == (i32.const 40)
40_i64          == (i64.const 40)
1.3_f32         == (f32.const 1.3)
1.3_f64         == (f64.const 1.3)

;; shortcuts for getting/setting
(local myint i32)   == (local $myint i32)
(set myint 2i32)    == (local.set $myint (i32.const 2))
(get myint)         == (local.get $myint)
```

**Array Types**: arrays can be of any types and are only references.

```
;; A list of integers with a capacity
(prodt Array
  (field capacity i32)
  ;; data <type>
)

;; The above uses a "generic" <type>. However, there are no generics, so if
;; you want a Array of your type you must use the macro to define the type
;;
;; Note that Array* types are _not constant sized_, meaning you cannot use
;; `(const ;; Array.size())`. This is because a non-constant amount of data
;; is held after the `capacity` slot.

(macro Array.declare ArrayI32 i32)

;; an array of integers with capacity=10
(local myarray &ArrayI32)
(macro ArrayI32.init myarray capacity=10 all=0)
  ==
  ;; inform compiler we need this much stack. Returns a &i32 of where on the
  ;; stack it is
  (set myarray 
    (reserve_stack 
      (const Num.add
        (const Sized.size i32) // slot for capacity
        (const Num.mul 10 (const Sized.size i32) )
      )
    )
  )
  (set myarray.capacity 10)
  (loop 
      ;; TODO: set up proper loop $i over all 10
      (call ArrayI32.set myarray $i 0)
  )
  ==
  (local.set $myarray$ref (i32.add (i32.get $WAC$mstack$local$ref) <stack offset>))
  (i32.set (local.get $myarray$ref) offset=0 (i32.const 10))    ;; myarray.capacity
  (loop
    ;; TODO: set up proper loop over all 10
    (i32.set (i32.add (local.get $myarray$ref) (local.get $i)) offset=4 0
  )

(local mylist (&ArrayListI32))
(macro ArrayListI32.of mylist capacity=10 5 10 15 20)
  ==
  (macro array.new tmp i32 capacity=10 all=undeclared)
  (macro ArrayList.new i32 length=4 data=tmp)
  ==
  ;; data gets populated by unrolling
  (set tmp.0 5)
  (set tmp.1 10)
  (set tmp.2 15)
  (set tmp.3 20)
```

**User defined types**: The following are types which are only (currently)
references and are implemented on the automatically managed memory stack
(mstack)

```
;; sumt creates sumtype (tagged union), allowing for a single variable to
;; occupy multiple (compiler checked) types
(sumt Option
  (variant Empty ())                    ;; variant=0, no payload/data
  (variant I32   i32)                   ;; variant=1, an integer
  (variant I64   i64)                   ;; variant=2, an integer
  (variant Array ArrayListI32)          ;; variant=3, a list of integers
)

;; all types have the `new` macro automatically created. More macros (or
;; functions) can also be implemented for them
(macro Option.new Empty)
(macro Option.new I32=1i32)
(macro Option.new I64=1i64)
(macro Option.new Array=l (macro ArrayListI32.of l capacity=10 1 2 3))

;; branching based on value.
;; returns the value of the integer if it is an integer,
;; -1 if empty, and -2 otherwise
(sw_set $out &myoptions (result i32)
    (case I32=v     (ref.get v))
    (case Empty     (-1))
    (case _         (-2))
)
  ==
  (block
    (block
      (block
        (block
          (br_table 1 0 2 (i32.load $ref$myoptions))
        )
        ;; case I32 (&v) (deref &v)
        (local_set $out
          (i32.load offset=4 $ref$myoptions))
        br 2
      )
      ;; case Empty () (-1)
      (local_set $out (i32.const -1))
      br 1
    )
    ;; case _ (-2)
    (local_set $out (i32.const -2))
  )

```

**Reference types** are extensions of the variable name syntax `$`.
They refer to non-wasm values, or wasm values which are through
some kind of indirection, such as lists or structs.

> Note: Reference types are slightly more restrictive than variable names (they cannot
> include `$ . : &`).

```
;; operating on references
(local var &i32)      == (local $var$ref i32) ;; declare a reference
(ref.get var)         == (i32.load $var$ref)
(set var 1)           == (i32.set (i32.load $var$ref) (i32.const 1))

;; prodt (struct) references
var.a               == No equivalent, access a value for passing around
(ref.get var.a)     == (i32.load $var$ref offset=<a-offset>)
(set b var.a)       == No equivalent, set variable `b` to the value at `var.a`
(ref.set b var.a)   == No equivalent, set reference of b to the reference of a

;; function which takes a user-defined wac type and returns a different type
(func myfunc (param v1 &SomeType) (return &OtherType) ... )
  ==
  (func $mypkg$myfunc (param $v1$SomeType$ref i32) (param $return$0$OtherType i32) ... )
  ;; TODO: also defines a table+type for the function, accessible via `&myfunc`
```

```

**Traits**: allow for automatic type inference for types which implement them.
The `Num` trait is implemented for all wasm types.

```
(Num.add 1 2)
  ==
  (call $core$TRAIT$i32$Num$add 1 2)
  == 
  (i32.add 
    (i32.const 1)
    (i32.const 2))

(Num.add 1_i64 2_i64)
  == 
  (call $core$TRAIT$i64$Num$add 1_i64 2_i64)
  ==
  (i64.add 
    (i64.const 1) 
    (i64.const 2))

(Num.add 1.1 2.2)
  ==
  (call $core$TRAIT$f32$Num$add 1.1 2.2)
  ==
  (f32.add 
     (f32.const 1.1) 
     (f32.const 2.2))
```

Important notes about types and traits:
* can define `func`, `const func` or `macro` interfaces

**package** allows you to declare your package name at the top of
a file. Conceptually, all of your non-local names (globals, functions, etc) get
renamed `$package$name`. It is recommended to make these names long, as they are
not allowed to overlap, and users shorten them with `include` statements.

**include** allows you to include other `.wac` (wac library) modules based on a
path and define their namespace.

```
package "myorg.mypkg"

include oth "./other.wacl"

  (func $myfunc (param $v i32)
    (call oth.Function $v)
  )
```


**const**: Functions can be declared as `(const func ...)` and then be called like
`(const funcname param1 param2)`. When called this way they must take only
constant parameters and internally use no globals or non-const functions. The
compiler will spin up an isolated wasm module with clear memory and execute the
entire S expression.  `alloc` and `dealloc_all` will be defined as a bump
allocator for this call.

If they return a refence value into a non-const function then it's data will be
unrolled into the stack and the reference returned.

**macro**: A constant function of the below type can be defined and called
using `macro`.  It accepts a tree of nodes and outputs an array of tokens. When
invoked this way, the output will rewrite the syntax tree (with sanitization).

```
(const mymacro 
    (param nodes &NodeTree)
    (result (&Token))
  ;; ... macro body
)
```

## Development
To setup the development environment, make the [wasm-reference][wasm-reference]
interpretter and put it somewhere on your path (named `wasm-reference`). Then
run

```
make test
```

[wasm-reference]: https://github.com/WebAssembly/spec/tree/master/interpreter
