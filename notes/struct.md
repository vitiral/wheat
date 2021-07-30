Structs are inspired by C and rust

```
struct Value1 _: u32;        // struct containing a single unnamed value
struct Value2 {b: f64 = 0.0};// struct containing a single named, default value.
struct Value3 {};            // struct containing no values
```

Structs define a function of the same name, which is how they are initialized.
```
Value1 $ 42;
Value2 $ {b = 42.0};
Value3 $ _;
```

> Note: `_` stands for infer/default/any/unnamed depending on the context.
> When defining Value1 it means "unnamed" and when instantiating Value3 it
> means "default"
