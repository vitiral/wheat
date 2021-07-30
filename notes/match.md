
Matches are inspired by rust but use the `@` symbol more extensively.

```
match someValue {
  SomeValue1 $ let x @ _ ( /* use x */ );
  SomeValue2 $ {0=I3 $ {let x @ 1=F4{..} | F5; /* ignore other items */ ..}} ( /* use x */ );
  let x @ _ ( /* use x */ );
}
```

Declaring an enum

```
struct Value1 : u32;
struct Value2 {b:f64 = 0.0};
struct Value3 {/*empty*/};

enum Value
  Value1
  | Value2
  | Value3
  | struct Value4 { c: String }
)

Map.
```
