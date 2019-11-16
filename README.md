wak: an experimental self-hosting language that compiles directly to wasm

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

wak's syntax will be based on wasm as much as possible.

Example syntax
```
(global $g (mut i32) = 0)   ;; set a global variable

local $a i32                ;; declare a local variable
push (1_i32 + 2_000_i32)    ;; add two integers and push to stack
set_local $a                ;; set the local variable from the stack
local $b i32 = 2            ;; set a different local variable to an expression
local $c                    ;; delcare another local variable
$c = 42                     ;; set the variable

stack $s i32                ;; declare a variable on the memstack
$s = 42

;; declare function
func $func_name 
  ($a i32)  ;; param a
  ($b i32)  ;; param b
  (result i32) (
  ;; function body
)


;; declare a sumtype
sumtype $MaybeInt (
  ;; can be empty
  (0 = $EmptyInt)

  ;; or an integer
  (1 = $JustInt i32)
)
```
