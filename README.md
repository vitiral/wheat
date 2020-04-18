# wak: an experimental wasm extension language.

wak, like many failed languages before it, aims to be the next generation of C.
It's primary purposes are:
- To be a simple extenion of wat (wasm text format) which can be easily
  reasoned about by a human
- To be compabible on all systems wasm is compatible on (i.e. not require an
  allocator, GC, etc)
- To enable writing compilers for itself and other programming languages as
  easily as possible, without harming the above two goals.

The basic design is:
- extension of wat with sugar
- Has struct, enum, interface and basic types (bool, i8+, u8+, [T], String)
- const and macros are first-class citizens.
  - You can have const and macro functions associated with types and interfaces
- no generics: C got on without them and so can we!

The initial version of wak will support only the following features:
- A strict superset of wat
- implicit growable/srinkable memory stack
- user defined types
  - [`sumt`](https://en.wikipedia.org/wiki/Tagged_union), sum type a.k.a a tagged union
  - [`prodt`](https://en.wikipedia.org/wiki/Product_type), product type a.k.a a struct
  - traits, a.k.a interfaces
- references to wak types
- user defined functions using wak types
    - virtual functions and traits using wak types
- const functions and macros, executing specified wasm at compile time.

## Syntax
wak's syntax is a strict superset of wasm. In particular, it maintains that
everything is an S expression. However, it adds several useful extensions
for writing code as a human.

**Simple Shortcuts**: several types can be expressed more concisely
```
40      => (i32.const 40)
40_i32  => (i32.const 40)
40_i64  => (i64.const 40)
1.3_f32 => (f32.const 1.3)
1.3_f64 => (f64.const 1.3)

;; shortcuts for declaring/getting/setting
(let myint: i32)     => (local $myint i32)
(set myint = 2)      => (local.set $myint (i32.const 2))
(set x = myint)      => (local.set $x (local.get $myint))
(let x: i32 = myint) =>
 (local $myint i32) (local.set $x (local.get $myint))

;; `;` within an S-expression repeats the S expression for the first element
(let v1: i32; v2: i32) == (let v1: i32) (let v2: i32)
(func myfunc 
  (param a: i32; b:i32) 
  (return o: i32 = 5; u: i32)
  ...
) 
  =>
(func myfunc 
  (param a: i32) (param b: i32) 
  (return o: i32 = 5) (return o: i32)
  ...
)
```
**First class func, enum, struct, interface and macro**

Most program structure is accomplished via the above concepts, which should
be familiar to many programers. Wak does not support generics.

**func** functions:

Functions are one of the core types in wak. There are two variations: `const`
and `func`.

`func` works very similar to wat except it can accept wak types. For example:

```
(func myFunc (param in: *InputType) (result out &ResultType)
  (macro ResultType.new out) ;; reserve the output
  ;; function body. "out" is implicitly returned.
)
```

`const function` is simply a funciton which when called gets evaluated at
compilation time. It must have no dependencies besides other const functions
and must not form any dependency loops. Essentially, all const functions get
exported to a wasm module and called with whatever inputs the program provides.

```
;; defining a const function
(const func addTwoNumbers (param a i32) (param b i32) (result i32)
  (set result (+ a b))
)

;; calling a const function
(const three (call addTwoNumbers 1 2))
```

**Macros**: macros are absolutely fundamental in Wak and are used extensively.
Writing them essentially requires writing a syntax tree handler and emitter.

Creating a macro involves creating a `const` function of the below type. Macros
are invoked via the `macro` call. A macro accepts the macro parameters and a
tree of nodes. It outputs an array of tokens.

When invoked this way, the output will rewrite the syntax tree. The rewrite
will be sanitized such that only the given params will be allowed to exist
verbatum, allowing "injection" of their characters.

TODO: flush this out more and provide an example.

```
(constfunc mymacro 
    (param tokens: *Slice.Token) 
    (ret tree: *Tree)
    ;; ... definition of the macro
)
```

**Slice Types**: slices are a view of continuous data of some type.

```
;; A list of <type> with a capacity
(struct Slice.<type>
  (field
      capacity: i32;
      data: <type>;
  )
  ;; ... methods
)
```

The above uses a "generic" <type>. However, there are no generics, so if
you want a Slice of your type you must use the macro to define the type.
Macros have the ability to declare a type _within their source module_.
When they do this, they define the type only once no matter how often
the macro is called.

```
pkg core.types;
import core.lang.SliceIden;
import core.lang.SliceToken;
import core.lang.Tree;

;; Macrogen macro, for 
;; syntax: (!!macrogen <name> (iden <iden1> <iden2> ...) <source>)
;;
;; Creates 
(constfunc macrogen 
  (param 
    idens: *SliceIden;
    tokens: *SliceToken;
  ) 
  (ret tree: Tree)
  ;; ... definition of macro
)


(pkg (!!pkg).Slice
  ;; Creates the (!!define ..) macro for Slice.
  ;; is a macro which itself creates a macro which will
  ;; be associated with this package, in this case Slice.define.
  ;;
  ;; This can then be called with (!!Slice.define MyType)
  ;; to generate the Slice.MyType type
  (!!macrogen define
    ;; The identifiers to subsitute. These are the only items
    ;; that are not sanitized.
    (iden $Name)
    (iden $Item)

    ;; what will be generated. Only items given to
    ;; `iden` can be injected. All other identifiers
    ;; will be sanitized.
    (struct core.types.Slice.(!!fullType $Name)
      (field 
        size: USize;
        items: *[$Item; ?]; // ptr to unknown size array
      )
    )

    (impl (!!pkg).$Name
      (func get
        (param self: (!!pkg).$Name; index: USize)
        (ret r: *$Item)

        (let i: USize = USize.v0)
        (!!switch (!!math index < self.size)
          (true => r = items[index])
          (false => (!!abort "index out of bounds"))
        )
      )

      (func slice
        (param self: (!!pkg).$Name; start: USize; end: USize)
        (ret r: *[$Item])
        (!!switch (!!math start > self.size || end > self.size)
          (true => r = 
            (new 
              (!!pkg).$Name
              size = (!!math end - start);
              items = self.items[start:end];
            )
          )
          (false => (!!abort "index out of bounds"))
        )
      )
    ) ;; end impl
  ) ;; end macro call
) ;; end pkg

  

// Declares Slice.I32 concrete type
(!!Slice.variant I32)

(let x: Slice.I32
```



Note that Slice types are _not constant sized_, meaning you cannot use
`(const ;; Slice.size())`. This is because a non-constant amount of data
is held after the `capacity` slot.

```
(! Slice.declare SliceI32 i32)

;; an array of integers with capacity=10
(local myarray &SliceI32)
(macro SliceI32.init myarray capacity=10 all=0)
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
      (call SliceI32.set myarray $i 0)
  )
  ==
  (local.set $myarray$ref (i32.add (i32.get $WAC$mstack$local$ref) <stack offset>))
  (i32.set (local.get $myarray$ref) offset=0 (i32.const 10))    ;; myarray.capacity
  (loop
    ;; TODO: set up proper loop over all 10
    (i32.set (i32.add (local.get $myarray$ref) (local.get $i)) offset=4 0
  )

(local mylist (&SliceListI32))
(macro SliceListI32.of mylist capacity=10 5 10 15 20)
  ==
  (macro array.new tmp i32 capacity=10 all=undeclared)
  (macro SliceList.new i32 length=4 data=tmp)
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

;; function which takes a user-defined wak type and returns a different type
(func myfunc (param v1 &SomeType) (result r1 &OtherType) ... )
  ==
  (func $mypkg$myfunc (param $v1$SomeType$ref i32) (param $return$r1 i32) ... )
  ;; TODO: also defines a table+type for the function, accessible via `&myfunc`

;; Functions can then be called like below. The result will be stored into r1.
(local v1 &SomeType)
(local r1 &OtherType)
(call myfunc v1 (result r1))
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

(trait MyTrait
  (func foo (param I32) (param I32) (result I32))
)

(impl MyType MyTrait
  (func foo (param a &I32) (param b &I32) (result &I32)
    (Num.add a b)
  )
)
```

Important notes about types and traits:
* can define `func`, `const func` or `macro` interfaces

**Virtual** (`&virt`) traits are operated on through a vtable. Basically they
are the following type

```
(prodt TraitVirt
  (field vtable &table)
  (field data &T)
)

(prod VTable
  (field $resolve_trait (&func (param $type_index i32) (result i32))
  (field $functions table_index)
)
  

;; VTable is laid out like this:
;; 0: <resolve_trait function index>
;;      Is a perfect-hash table which takes the type_index and returns
;;      the index where that type begins in this type's table_index
;;      (i.e. Num => 0, MyTrait => 10)
;; 0: <table_index>
;;      0: Num.add
;;      1: Num.sub
;;      2: Num.mul
;;      ...
;;      10: MyTrait.foo
```

When someone wants to call a function it implements, they
- call `resolve_trait` to get the type_index
- call the function defined within the table using `type_index + method_index`
  - pass `$data$ref` as the first argument (if the type takes &self)
  - pass remaining arguments

**package** allows you to declare your package name at the top of
a file. Conceptually, all of your non-local names (globals, functions, etc) get
renamed `$package$name`. It is recommended to make these names long, as they are
not allowed to overlap, and users shorten them with `include` statements.

**include** allows you to include other `.wak` (wak library) modules based on a
path and define their namespace.

```
package "myorg.mypkg"

include oth "./other.wak"

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

**More about types**

```
;; Can require a param to implement multiple traits
;; `&` only required at beginning
(func (param a (&Num Ordered MyTrait)) (result &SomeType))

;; Can also take _or return_ virtual traits
(func (param a (&virt Num)) (result &virt Num))
```


## Development
To setup the development environment, make the [wasm-reference][wasm-reference]
interpretter and put it somewhere on your path (named `wasm-reference`). Then
run

```
make test
```

[wasm-reference]: https://github.com/WebAssembly/spec/tree/master/interpreter
