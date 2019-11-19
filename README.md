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

**Simple Shortcuts**: several types can be inferred or expressed more concisely.
```
40              == (i32.const 40)
40_i32          == (i32.const 40)
40_i64          == (i64.const 40)
1.3             == (f32.const 1.3)
1.3_f32         == (f32.const 1.3)
1.3_f64         == (f64.const 1.3)

;; simpler variable getting
$var            == (local.get $var)

;; variable references
&var            == No equiavlent
(deref &var)    == (local.get $var$ref)

;; prodt (struct) references
&var.a          == No equivalent
(deref &var.a)  == (i32.load $var$ref offset=<a-offset>)
```

**Reference types** are extensions of the variable name syntax `$`.
They refer to non-wasm values, or wasm values which are through
some kind of indirection, such as lists or structs.

> Note: Reference types are slightly more restrictive than variable names (they cannot
> include `$ . : &`).

> Note: All functions and globals have to be defined using `(func &myfunc ...)`
> instead of `(func $myfunc ...)`, since all function names actually get the
> package added to them.

```
;; dereferencing
(deref &var)           == (i32.load $var$ref)
(deref &var.a)         == (i32.load $var$ref offset=<a-offset>)

;; function which takes a user-defined wac type and returns a different type
(func &myfunc (param &v1 SomeType) (return &OtherType) ... )
  ==
  (func $mypkg$myfunc (param $v1$SomeType$ref i32) (return i32) ... )
```

**Stack-based Types**: The following are types which can only be references
and are implemented on the automatically managed memory stack (mstack)

```
;; Core functions for managing stack
  (func $core$alloc_mstack (param $stack_size i32) (result i32)
    (local $s i32)
    (i32.sub
      (global.get $core$ref$mstack)
      (local.get $stack_size)
    )
    local.tee $s
    global.set $core$ref$mstack
    local.get $s
  )

  (func $core$free_mstack (param $stack_size i32)
    (global.set $core$ref$mstack
      (i32.add
        (global.get $core$ref$mstack)
        (local.get $stack_size)
      )
    )
  )

;; all complex types must be stored on the memory stack
;; example of an empty list with capacity 10
(mstack &mylist (list (mut i32) 10))
  == 
  ;; reserve stack for function
  (local.set $core$LOCAL$ref$memstack 
    (call $core$alloc_mstack (i32.const <stack size>))
  )

  ;; ... function body

  ;; free stack
  (call $core$LOCAL$ref$memstack (i32.const <stack size>))

;; list with capacity 10 and 2 elements
(mstack &mylist (list (mut i32) 10) 
    (data 1 2))
  ==
  ;; .. memstack manaagmeent

  (i32.store offset=0 $mylist$ref 10)  ;; capacity
  (i32.store offset=4 $mylist$ref 2)   ;; size
  (i32.store offset=8 $mylist$ref 1)   ;; index=0
  (i32.store offset=12 $mylist$ref 2)  ;; index=1

;; byte list (strings) are declared the same way, in either
;; string format or as an list of bytes
(mstack &mylist (list (&mut byte) 10) 
    (data "a string")
  == 
(mstack &mylist (list (&mut byte) 10) 
    (data 0x61 0x20 0x73 0x74 0x72 0x69 0x6e 0x67))
  ==
  ;; .. memstack manaagmeent (see above)

  (i32.store offset=0 $mylist$ref 10)    ;; capacity
  (i32.store offset=4 $mylist$ref 8)     ;; size
  (i32.store offset=8 $mylist$ref x61)   ;; 'a'
  (i32.store offset=12 $mylist$ref x20)  ;; ' '
  (i32.store offset=16 $mylist$ref 0x73) ;; 's'
  (i32.store offset=20 $mylist$ref 0x74  ;; 't'
  (i32.store offset=24 $mylist$ref 0x72) ;; 'r'
  (i32.store offset=28 $mylist$ref 0x69) ;; 'i'
  (i32.store offset=32 $mylist$ref 0x6e) ;; 'n'
  (i32.store offset=36 $mylist$ref 0x67) ;; 'g'
```

**sumt** creates sumtype (tagged union), allowing for a single variable to
occupy multiple (compiler checked) types

```
;; A user-defined type which can be multiple values
(sumt Option
  (variant Empty ())       ;; variant=0, no payload/data
  (variant I32   i32)      ;; variant=1, an integer
  (variant I64   i64)      ;; variant=2, an integer
  (variant List  (list (&mut i32) 10))  ;; variant=3, a list of integers
)

;; sumt can only be a reference on the stack, like lists

;; initilizing as an empty value
(mstack &myoptions (&mut Option) (data Option.Empty))

;; setting to a new type
(set_stack &myoptions (data Option.List (data 4 5 6)))

;; branching based on value.
;; returns the value of the integer if it is an integer,
;; -1 if empty, and -2 otherwise
(sw_set $out &myoptions (result i32)
    (case I32   &v   (deref &v))
    (case Empty ()   (-1))
    (case _     ()   (-2))
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

**package** allows you to declare your package name at the top of
a file. Conceptually, all of your non-local names (globals, functions, etc) get
renamed `$package$name`. It is recommended to make these names long, as they are
not allowed to overlap, and users shorten them with `include` statements.

**include** allows you to include other `.wac` (wac library) modules based on a
path and define their namespace.

```
package "myorg.mypkg"

include &oth "./other.wacl"

  (func $myfunc (param $v i32)
    (call &oth.Function $v)
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
