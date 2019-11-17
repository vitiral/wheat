(module
  (type $0 (func))
  (memory $0 1)
  (func $0 (type 0) (block (i32.const 0) (i32.const 1) (i32.store)))
  (func $1 (type 0) (loop (i32.const 0) (i32.const 1) (i32.store)))
  (func $2 (type 0) (block (i32.const 0) (i32.const 1) (i32.store) (br 0)))
  (func $3
    (type 0)
    (block (i32.const 0) (i32.const 1) (i32.store) (i32.const 1) (br_if 0))
  )
  (func $4
    (type 0)
    (block (i32.const 6) (i32.const 0) (i32.const 1) (i32.store) (br_if 0))
  )
  (func $5
    (type 0)
    (block (i32.const 0) (i32.const 1) (i32.store) (i32.const 1) (br_table 0))
  )
  (func $6 (type 0) (i32.const 0) (i32.const 1) (i32.store) (return))
  (func $7
    (type 0)
    (i32.const 1)
    (if (then (i32.const 0) (i32.const 1) (i32.store)) (else))
  )
  (func $8
    (type 0)
    (i32.const 0)
    (if (then) (else (i32.const 0) (i32.const 1) (i32.store)))
  )
  (export "as-block-value" (func 0))
  (export "as-loop-value" (func 1))
  (export "as-br-value" (func 2))
  (export "as-br_if-value" (func 3))
  (export "as-br_if-value-cond" (func 4))
  (export "as-br_table-value" (func 5))
  (export "as-return-value" (func 6))
  (export "as-if-then" (func 7))
  (export "as-if-else" (func 8))
)
(assert_return (invoke "as-block-value"))
(assert_return (invoke "as-loop-value"))
(assert_return (invoke "as-br-value"))
(assert_return (invoke "as-br_if-value"))
(assert_return (invoke "as-br_if-value-cond"))
(assert_return (invoke "as-br_table-value"))
(assert_return (invoke "as-return-value"))
(assert_return (invoke "as-if-then"))
(assert_return (invoke "as-if-else"))
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (i32.store32 (local.get 0) (i32.const 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (i32.store64 (local.get 0) (i64.const 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (i64.store64 (local.get 0) (i64.const 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (f32.store32 (local.get 0) (f32.const 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (f32.store64 (local.get 0) (f64.const 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (f64.store32 (local.get 0) (f32.const 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (f64.store64 (local.get 0) (f64.const 0)))"
  )
  "unknown operator"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.const 1) (i32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64) (result i64)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.const 1) (i64.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f32) (result f32)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f32.const 1) (f32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64) (result f64)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f64.const 1) (f64.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.const 1) (i32.store8))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.const 1) (i32.store16))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64) (result i64)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.const 1) (i64.store8))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64) (result i64)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.const 1) (i64.store16))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64) (result i64)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.const 1) (i64.store32))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (memory $0 1) (func $0 (type 0) (i32.store)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.const 0) (block (i32.store)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (block (i32.const 0) (i32.store)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.const 0) (loop (i32.store)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (loop (i32.const 0) (i32.store)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (then (i32.store)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (if (then (i32.const 0) (i32.store)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (result i32) (then (i32.const 0)) (else (i32.store)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (if (result i32) (then (i32.const 0)) (else (i32.const 0) (i32.store)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.const 0) (block (i32.store) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (block (i32.const 0) (i32.store) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (block (i32.store) (i32.const 1) (br_if 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (block (i32.const 0) (i32.store) (i32.const 1) (br_if 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (block (i32.store) (br_table 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (block (i32.const 0) (i32.store) (br_table 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.store) (return))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.store) (return))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.store) (i32.const 1) (i32.const 2) (select))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0
      (type 0)
      (i32.const 0)
      (i32.store)
      (i32.const 1)
      (i32.const 2)
      (select)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (type $1 (func (param i32) (result i32)))
    (memory $0 1)
    (func $0 (type 0) (i32.store) (call 1))
    (func $1 (type 1) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (type $1 (func (param i32) (result i32)))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.store) (call 1))
    (func $1 (type 1) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (memory $0 1)
    (func $0 (type 0) (local.get 0))
    (func $1
      (type 1)
      (block (result i32) (i32.store) (i32.const 0) (call_indirect (type 0)))
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (memory $0 1)
    (func $0 (type 0) (local.get 0))
    (func $1
      (type 1)
      (block
        (result i32)
        (i32.const 0)
        (i32.store)
        (i32.const 0)
        (call_indirect (type 0))
      )
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.const 0) (i32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.const 0) (i32.store8))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.const 0) (i32.store16))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.const 0) (i64.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.const 0) (i64.store8))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.const 0) (i64.store16))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.const 0) (i64.store32))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (f32.const 0) (f32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (f64.const 0) (f64.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i32.store8))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i32.store16))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f64.const 0) (i64.store8))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f64.const 0) (i64.store16))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f64.const 0) (i64.store32))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.const 0) (f32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.const 0) (f64.store))
  )
  "type mismatch"
)
