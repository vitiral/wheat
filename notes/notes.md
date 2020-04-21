
* Wasm examples
  https://github.com/mdn/webassembly-examples/tree/master/understanding-text-format

* Wasm test suite (written in wast)
  https://github.com/WebAssembly/spec/tree/master/test/core

- Wasm spec
  https://webassembly.github.io/spec/core/bikeshed/index.html
  - Don't look at that, look at this:
    https://webassembly.github.io/spec/core/text/index.html

- Awesome intro: https://rsms.me/wasm-intro


# Basic instructions:
```
local.get 0  // push parameter #0 on stack (our dividend)
i64.const 2  // push constant int64 "2" on stack (our divisor)
i64.div_u    // unsigned division; pushes result onto stack
(i32.store offset=0 align=0 
  (;location;) 0 
  (;value;) 42
)
```
