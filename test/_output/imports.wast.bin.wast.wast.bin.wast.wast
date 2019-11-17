(module
  (type $0 (func))
  (type $1 (func (param i32)))
  (type $2 (func (param f32)))
  (type $3 (func (result i32)))
  (type $4 (func (result f32)))
  (type $5 (func (param i32) (result i32)))
  (type $6 (func (param i64) (result i64)))
  (table $0 10 funcref)
  (memory $0 2)
  (global $0 i32 (i32.const 55))
  (global $1 f32 (f32.const 44))
  (func $0 (type 0))
  (func $1 (type 1))
  (func $2 (type 2))
  (func $3 (type 3) (i32.const 22))
  (func $4 (type 4) (f32.const 11))
  (func $5 (type 5) (local.get 0))
  (func $6 (type 6) (local.get 0))
  (export "func" (func 0))
  (export "func-i32" (func 1))
  (export "func-f32" (func 2))
  (export "func->i32" (func 3))
  (export "func->f32" (func 4))
  (export "func-i32->i32" (func 5))
  (export "func-i64->i64" (func 6))
  (export "global-i32" (global 0))
  (export "global-f32" (global 1))
  (export "table-10-inf" (table 0))
  (export "memory-2-inf" (memory 0))
)
(register "test")
(module
  (type $0 (func (param i32)))
  (type $1 (func (param i64)))
  (type $2 (func (param f32)))
  (type $3 (func (param f64)))
  (type $4 (func (param i32)))
  (type $5 (func (param i32 f32)))
  (type $6 (func (param f64 f64)))
  (type $7 (func (param i64) (result i64)))
  (import "spectest" "print_i32" (func $0 (type 0)))
  (import "spectest" "print_i32" (func $1 (type 0)))
  (import "spectest" "print_f32" (func $2 (type 2)))
  (import "spectest" "print_f64" (func $3 (type 3)))
  (import "spectest" "print_i32_f32" (func $4 (type 5)))
  (import "spectest" "print_f64_f64" (func $5 (type 6)))
  (import "spectest" "print_i32" (func $6 (type 0)))
  (import "spectest" "print_f64" (func $7 (type 3)))
  (import "test" "func-i64->i64" (func $8 (type 7)))
  (import "spectest" "print_i32" (func $9 (type 0)))
  (import "spectest" "print_i32" (func $10 (type 0)))
  (import "spectest" "print_i32" (func $11 (type 0)))
  (import "spectest" "print_i32" (func $12 (type 0)))
  (import "spectest" "print_i32" (func $13 (type 0)))
  (import "spectest" "print_i32" (func $14 (type 4)))
  (import "spectest" "print_i32" (func $15 (type 4)))
  (table $0 2 2 funcref)
  (func $16
    (type 0)
    (local f32)
    (local.get 0)
    (f32.convert_i32_s)
    (local.set 1)
    (local.get 0)
    (call 0)
    (local.get 0)
    (i32.const 1)
    (i32.add)
    (f32.const 42)
    (call 4)
    (local.get 0)
    (call 1)
    (local.get 0)
    (call 6)
    (local.get 1)
    (call 2)
    (local.get 0)
    (i32.const 0)
    (call_indirect (type 0))
  )
  (func $17
    (type 1)
    (local f64)
    (local.get 0)
    (call 8)
    (f64.convert_i64_s)
    (local.set 1)
    (local.get 1)
    (f64.const 1)
    (f64.add)
    (f64.const 53)
    (call 5)
    (local.get 1)
    (call 3)
    (local.get 1)
    (call 7)
    (local.get 1)
    (i32.const 1)
    (call_indirect (type 3))
  )
  (export "p1" (func 9))
  (export "p2" (func 10))
  (export "p3" (func 11))
  (export "p4" (func 11))
  (export "p5" (func 12))
  (export "p6" (func 13))
  (export "print32" (func 16))
  (export "print64" (func 17))
  (elem 0 (offset (i32.const 0)) 1 3)
)
(assert_return (invoke "print32" (i32.const 13)))
(assert_return (invoke "print64" (i64.const 24)))
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (import "test" "func" (func $0 (type 1)))
  )
  "unknown type"
)
(module (type $0 (func)) (import "test" "func" (func $0 (type 0))))
(module
  (type $0 (func (param i32)))
  (import "test" "func-i32" (func $0 (type 0)))
)
(module
  (type $0 (func (param f32)))
  (import "test" "func-f32" (func $0 (type 0)))
)
(module
  (type $0 (func (result i32)))
  (import "test" "func->i32" (func $0 (type 0)))
)
(module
  (type $0 (func (result f32)))
  (import "test" "func->f32" (func $0 (type 0)))
)
(module
  (type $0 (func (param i32) (result i32)))
  (import "test" "func-i32->i32" (func $0 (type 0)))
)
(module
  (type $0 (func (param i64) (result i64)))
  (import "test" "func-i64->i64" (func $0 (type 0)))
)
(assert_unlinkable
  (module (type $0 (func)) (import "test" "unknown" (func $0 (type 0))))
  "unknown import"
)
(assert_unlinkable
  (module (type $0 (func)) (import "spectest" "unknown" (func $0 (type 0))))
  "unknown import"
)
(assert_unlinkable
  (module
    (type $0 (func (param i32)))
    (import "test" "func" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (result i32)))
    (import "test" "func" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (param i32) (result i32)))
    (import "test" "func" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module (type $0 (func)) (import "test" "func-i32" (func $0 (type 0))))
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (result i32)))
    (import "test" "func-i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (param f32)))
    (import "test" "func-i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (param i64)))
    (import "test" "func-i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (param i32) (result i32)))
    (import "test" "func-i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module (type $0 (func)) (import "test" "func->i32" (func $0 (type 0))))
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (param i32)))
    (import "test" "func->i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (result f32)))
    (import "test" "func->i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (result i64)))
    (import "test" "func->i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (param i32) (result i32)))
    (import "test" "func->i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module (type $0 (func)) (import "test" "func-i32->i32" (func $0 (type 0))))
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (param i32)))
    (import "test" "func-i32->i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (result i32)))
    (import "test" "func-i32->i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $0 (func (result i32)))
    (import "test" "global-i32" (func $0 (type 0)))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module (type $0 (func)) (import "test" "table-10-inf" (func $0 (type 0))))
  "incompatible import type"
)
(assert_unlinkable
  (module (type $0 (func)) (import "test" "memory-2-inf" (func $0 (type 0))))
  "incompatible import type"
)
(assert_unlinkable
  (module (type $0 (func)) (import "spectest" "global_i32" (func $0 (type 0))))
  "incompatible import type"
)
(assert_unlinkable
  (module (type $0 (func)) (import "spectest" "table" (func $0 (type 0))))
  "incompatible import type"
)
(assert_unlinkable
  (module (type $0 (func)) (import "spectest" "memory" (func $0 (type 0))))
  "incompatible import type"
)
(module
  (type $0 (func (result i32)))
  (import "spectest" "global_i32" (global $0 i32))
  (import "spectest" "global_i32" (global $1 i32))
  (import "spectest" "global_i32" (global $2 i32))
  (import "spectest" "global_i32" (global $3 i32))
  (import "spectest" "global_f32" (global $4 f32))
  (import "spectest" "global_f64" (global $5 f64))
  (func $0 (type 0) (global.get 0))
  (func $1 (type 0) (global.get 1))
  (func $2 (type 0) (global.get 2))
  (func $3 (type 0) (global.get 3))
  (export "get-0" (func 0))
  (export "get-1" (func 1))
  (export "get-x" (func 2))
  (export "get-y" (func 3))
)
(assert_return (invoke "get-0") (i32.const 666))
(assert_return (invoke "get-1") (i32.const 666))
(assert_return (invoke "get-x") (i32.const 666))
(assert_return (invoke "get-y") (i32.const 666))
(module (import "test" "global-i32" (global $0 i32)))
(module (import "test" "global-f32" (global $0 f32)))
(assert_unlinkable
  (module (import "test" "unknown" (global $0 i32)))
  "unknown import"
)
(assert_unlinkable
  (module (import "spectest" "unknown" (global $0 i32)))
  "unknown import"
)
(assert_unlinkable
  (module (import "test" "func" (global $0 i32)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "table-10-inf" (global $0 i32)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "memory-2-inf" (global $0 i32)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "print_i32" (global $0 i32)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "table" (global $0 i32)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "memory" (global $0 i32)))
  "incompatible import type"
)
(module
  (type $0 (func (result i32)))
  (type $1 (func (param i32) (result i32)))
  (import "spectest" "table" (table $0 10 20 funcref))
  (func $0 (type 1) (local.get 0) (call_indirect (type 0)))
  (func $1 (type 0) (i32.const 11))
  (func $2 (type 0) (i32.const 22))
  (export "call" (func 0))
  (elem 0 (offset (i32.const 1)) 1 2)
)
(assert_trap (invoke "call" (i32.const 0)) "uninitialized element")
(assert_return (invoke "call" (i32.const 1)) (i32.const 11))
(assert_return (invoke "call" (i32.const 2)) (i32.const 22))
(assert_trap (invoke "call" (i32.const 3)) "uninitialized element")
(assert_trap (invoke "call" (i32.const 100)) "undefined element")
(module
  (type $0 (func (result i32)))
  (type $1 (func (param i32) (result i32)))
  (import "spectest" "table" (table $0 10 20 funcref))
  (func $0 (type 1) (local.get 0) (call_indirect (type 0)))
  (func $1 (type 0) (i32.const 11))
  (func $2 (type 0) (i32.const 22))
  (export "call" (func 0))
  (elem 0 (offset (i32.const 1)) 1 2)
)
(assert_trap (invoke "call" (i32.const 0)) "uninitialized element")
(assert_return (invoke "call" (i32.const 1)) (i32.const 11))
(assert_return (invoke "call" (i32.const 2)) (i32.const 22))
(assert_trap (invoke "call" (i32.const 3)) "uninitialized element")
(assert_trap (invoke "call" (i32.const 100)) "undefined element")
(assert_invalid
  (module
    (import "" "" (table $0 10 funcref))
    (import "" "" (table $1 10 funcref))
  )
  "multiple tables"
)
(assert_invalid
  (module (import "" "" (table $0 10 funcref)) (table $1 10 funcref))
  "multiple tables"
)
(assert_invalid
  (module (table $0 10 funcref) (table $1 10 funcref))
  "multiple tables"
)
(module (import "test" "table-10-inf" (table $0 10 funcref)))
(module (import "test" "table-10-inf" (table $0 5 funcref)))
(module (import "test" "table-10-inf" (table $0 0 funcref)))
(module (import "spectest" "table" (table $0 10 funcref)))
(module (import "spectest" "table" (table $0 5 funcref)))
(module (import "spectest" "table" (table $0 0 funcref)))
(module (import "spectest" "table" (table $0 10 20 funcref)))
(module (import "spectest" "table" (table $0 5 20 funcref)))
(module (import "spectest" "table" (table $0 0 20 funcref)))
(module (import "spectest" "table" (table $0 10 25 funcref)))
(module (import "spectest" "table" (table $0 5 25 funcref)))
(assert_unlinkable
  (module (import "test" "unknown" (table $0 10 funcref)))
  "unknown import"
)
(assert_unlinkable
  (module (import "spectest" "unknown" (table $0 10 funcref)))
  "unknown import"
)
(assert_unlinkable
  (module (import "test" "table-10-inf" (table $0 12 funcref)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "table-10-inf" (table $0 10 20 funcref)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "table" (table $0 12 funcref)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "table" (table $0 10 15 funcref)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "func" (table $0 10 funcref)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "global-i32" (table $0 10 funcref)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "memory-2-inf" (table $0 10 funcref)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "print_i32" (table $0 10 funcref)))
  "incompatible import type"
)
(module
  (type $0 (func (param i32) (result i32)))
  (import "spectest" "memory" (memory $0 1 2))
  (func $0 (type 0) (local.get 0) (i32.load))
  (export "load" (func 0))
  (data 0 (offset (i32.const 10)) "\10")
)
(assert_return (invoke "load" (i32.const 0)) (i32.const 0))
(assert_return (invoke "load" (i32.const 10)) (i32.const 16))
(assert_return (invoke "load" (i32.const 8)) (i32.const 1_048_576))
(assert_trap
  (invoke "load" (i32.const 1_000_000))
  "out of bounds memory access"
)
(module
  (type $0 (func (param i32) (result i32)))
  (import "spectest" "memory" (memory $0 1 2))
  (func $0 (type 0) (local.get 0) (i32.load))
  (export "load" (func 0))
  (data 0 (offset (i32.const 10)) "\10")
)
(assert_return (invoke "load" (i32.const 0)) (i32.const 0))
(assert_return (invoke "load" (i32.const 10)) (i32.const 16))
(assert_return (invoke "load" (i32.const 8)) (i32.const 1_048_576))
(assert_trap
  (invoke "load" (i32.const 1_000_000))
  "out of bounds memory access"
)
(assert_invalid
  (module (import "" "" (memory $0 1)) (import "" "" (memory $1 1)))
  "multiple memories"
)
(assert_invalid
  (module (import "" "" (memory $0 1)) (memory $1 0))
  "multiple memories"
)
(assert_invalid (module (memory $0 0) (memory $1 0)) "multiple memories")
(module (import "test" "memory-2-inf" (memory $0 2)))
(module (import "test" "memory-2-inf" (memory $0 1)))
(module (import "test" "memory-2-inf" (memory $0 0)))
(module (import "spectest" "memory" (memory $0 1)))
(module (import "spectest" "memory" (memory $0 0)))
(module (import "spectest" "memory" (memory $0 1 2)))
(module (import "spectest" "memory" (memory $0 0 2)))
(module (import "spectest" "memory" (memory $0 1 3)))
(module (import "spectest" "memory" (memory $0 0 3)))
(assert_unlinkable
  (module (import "test" "unknown" (memory $0 1)))
  "unknown import"
)
(assert_unlinkable
  (module (import "spectest" "unknown" (memory $0 1)))
  "unknown import"
)
(assert_unlinkable
  (module (import "test" "memory-2-inf" (memory $0 3)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "memory-2-inf" (memory $0 2 3)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "memory" (memory $0 2)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "memory" (memory $0 1 1)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "func-i32" (memory $0 1)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "global-i32" (memory $0 1)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "test" "table-10-inf" (memory $0 1)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "print_i32" (memory $0 1)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "global_i32" (memory $0 1)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "table" (memory $0 1)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "memory" (memory $0 2)))
  "incompatible import type"
)
(assert_unlinkable
  (module (import "spectest" "memory" (memory $0 1 1)))
  "incompatible import type"
)
(module
  (type $0 (func (param i32) (result i32)))
  (import "spectest" "memory" (memory $0 0 3))
  (func $0 (type 0) (local.get 0) (memory.grow))
  (export "grow" (func 0))
)
(assert_return (invoke "grow" (i32.const 0)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 0)) (i32.const 2))
(assert_return (invoke "grow" (i32.const 1)) (i32.const -1))
(assert_return (invoke "grow" (i32.const 0)) (i32.const 2))
(assert_malformed
  (module quote "(func) (import \"\" \"\" (func))")
  "import after function"
)
(assert_malformed
  (module quote "(func) (import \"\" \"\" (global i64))")
  "import after function"
)
(assert_malformed
  (module quote "(func) (import \"\" \"\" (table 0 funcref))")
  "import after function"
)
(assert_malformed
  (module quote "(func) (import \"\" \"\" (memory 0))")
  "import after function"
)
(assert_malformed
  (module quote "(global i64 (i64.const 0)) (import \"\" \"\" (func))")
  "import after global"
)
(assert_malformed
  (module quote "(global i64 (i64.const 0)) (import \"\" \"\" (global f32))")
  "import after global"
)
(assert_malformed
  (module quote
    "(global i64 (i64.const 0)) (import \"\" \"\" (table 0 funcref))"
  )
  "import after global"
)
(assert_malformed
  (module quote "(global i64 (i64.const 0)) (import \"\" \"\" (memory 0))")
  "import after global"
)
(assert_malformed
  (module quote "(table 0 funcref) (import \"\" \"\" (func))")
  "import after table"
)
(assert_malformed
  (module quote "(table 0 funcref) (import \"\" \"\" (global i32))")
  "import after table"
)
(assert_malformed
  (module quote "(table 0 funcref) (import \"\" \"\" (table 0 funcref))")
  "import after table"
)
(assert_malformed
  (module quote "(table 0 funcref) (import \"\" \"\" (memory 0))")
  "import after table"
)
(assert_malformed
  (module quote "(memory 0) (import \"\" \"\" (func))")
  "import after memory"
)
(assert_malformed
  (module quote "(memory 0) (import \"\" \"\" (global i32))")
  "import after memory"
)
(assert_malformed
  (module quote "(memory 0) (import \"\" \"\" (table 1 3 funcref))")
  "import after memory"
)
(assert_malformed
  (module quote "(memory 0) (import \"\" \"\" (memory 1 2))")
  "import after memory"
)
(module)
(register "not wasm")
(assert_unlinkable
  (module
    (type $0 (func))
    (type $1 (func (param i32)))
    (type $2 (func (param i32 i32)))
    (type $3 (func (param i64)))
    (type $4 (func (param f32)))
    (type $5 (func (param f64)))
    (type $6 (func (result i32)))
    (type $7 (func (result i64)))
    (type $8 (func (result f32)))
    (type $9 (func (result f64)))
    (import "not wasm" "overloaded" (func $0 (type 0)))
    (import "not wasm" "overloaded" (func $1 (type 1)))
    (import "not wasm" "overloaded" (func $2 (type 2)))
    (import "not wasm" "overloaded" (func $3 (type 3)))
    (import "not wasm" "overloaded" (func $4 (type 4)))
    (import "not wasm" "overloaded" (func $5 (type 5)))
    (import "not wasm" "overloaded" (func $6 (type 6)))
    (import "not wasm" "overloaded" (func $7 (type 7)))
    (import "not wasm" "overloaded" (func $8 (type 8)))
    (import "not wasm" "overloaded" (func $9 (type 9)))
    (import "not wasm" "overloaded" (global $0 i32))
    (import "not wasm" "overloaded" (global $1 i64))
    (import "not wasm" "overloaded" (global $2 f32))
    (import "not wasm" "overloaded" (global $3 f64))
    (import "not wasm" "overloaded" (table $0 0 funcref))
    (import "not wasm" "overloaded" (memory $0 0))
  )
  "unknown import"
)
