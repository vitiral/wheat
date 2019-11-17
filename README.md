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
&var            == ($var$ref)

;; prodtype (struct) references
&var.a          == (i32.add $var$ref <a-offset>)

;; dereferencing with `&$`
&$var           == (i32.load $var$ref)
&$var.a         == (i32.load $var$ref offset=<a-offset>)
&$global        == (get_global $global)
```

**Stack-based Types**: The following are types which can only be references
and are implemented on the automatically managed memory stack (mstack)

```
;; all complex types must be stored on the memory stack
;; example of an empty list with capacity 10
(mstack &mylist (list (mut i32) 10))
  == 
  ;; grow memstack down and store reference to mylist
  (i32.sub &$WAK$ref$global_memstack <size of function stack>)
  tee_local $WAK$ref$local_memstack
  set_global $WAK$ref$global_memstack
  set_local $ref$mylist (i32.add &$WAK$ref$local_memstack <mylist offset>)

  ;; .. function body

  ;; shrink memstack up
  (set_global $WAK$ref$global_memstack
      (i32.add
        (get_local $WAK$ref$local_memstack
        (i32.const <size of function stack>)
      )
  )

;; list with capacity 10 and 2 elements
(mstack &mylist (list (mut i32) 10) 
    (data 1 2))
  ==
  ;; .. memstack manaagmeent (see above)

  (i32.store offset=0 &$mylist 10)  ;; capacity
  (i32.store offset=4 &$mylist 2)   ;; size
  (i32.store offset=8 &$mylist 1)   ;; index=0
  (i32.store offset=12 &$mylist 2)  ;; index=1

;; byte list (strings) are declared the same way, in either
;; string format or as an list of bytes
(mstack &mylist (list (&mut byte) 10) 
    (data "a string")
  == 
(mstack &mylist (list (&mut byte) 10) 
    (data 0x61 0x20 0x73 0x74 0x72 0x69 0x6e 0x67))
  ==
  ;; .. memstack manaagmeent (see above)

  (i32.store offset=0 &$mylist 10)    ;; capacity
  (i32.store offset=4 &$mylist 8)     ;; size
  (i32.store offset=8 &$mylist x61)   ;; 'a'
  (i32.store offset=12 &$mylist x20)  ;; ' '
  (i32.store offset=16 &$mylist 0x73) ;; 's'
  (i32.store offset=20 &$mylist 0x74  ;; 't'
  (i32.store offset=24 &$mylist 0x72) ;; 'r'
  (i32.store offset=28 &$mylist 0x69) ;; 'i'
  (i32.store offset=32 &$mylist 0x6e) ;; 'n'
  (i32.store offset=36 &$mylist 0x67) ;; 'g'
```

**sumt** creates sumtype (tagged union), allowing for a single variable to
occupy multiple (compiler checked) types

```
;; A user-defined type which can be multiple values
(sumt Option
  (variant Empty ())       ;; no payload/data
  (variant I32   i32)      ;; an integer
  (variant I64   i64)      ;; an integer
  (variant List  (list (&mut i32) 10))  ;; a list of integers
)

;; sumt can only be a reference on the stack, like lists

;; initilizing as an empty value
(mstack &myoptions (&mut Option) (data Option.Empty))

;; setting to a new type
(set_stack &myoptions (data Option.List (data 4 5 6)))

;; branching based on value.
;; returns the value of the integer if it is an integer,
;; -1 if empty, and -2 otherwise
(sum_br &myoptions
    (variant Empty      (-1))
    (variant I32(&v)    (&v))
    (variant_default    -2)
)
```


**Traits**: allow for automatic type inference for types which implement them.
The `Num` trait is implemented for all wasm types.

```
(Num.add 1 2)
  ==
  (call $Core$TRAIT$i32$Num$add 1 2)
  == 
  (i32.add 
    (i32.const 1)
    (i32.const 2))

(Num.add 1_i64 2_i64)
  == 
  (call $Core$TRAIT$i64$Num$add 1_i64 2_i64)
  ==
  (i64.add 
    (i64.const 1) 
    (i64.const 2))

(Num.add 1.1 2.2)
  ==
  (call $Core$TRAIT$f32$Num$add 1.1 2.2)
  ==
  (f32.add 
     (f32.const 1.1) 
     (f32.const 2.2))
```


## Development
To setup the development environment, make the [wasm-reference][wasm-reference]
interpretter and put it somewhere on your path (named `wasm-reference`). Then
run

```
make test
```

[wasm-reference]: https://github.com/WebAssembly/spec/tree/master/interpreter
