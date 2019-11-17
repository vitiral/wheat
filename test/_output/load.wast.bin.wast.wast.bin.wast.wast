(module
  (type $0 (func (param i32 i32 i32) (result i32)))
  (type $1 (func (result i32)))
  (type $2 (func))
  (type $3 (func (param i32 i32) (result i32)))
  (table $0 1 1 funcref)
  (memory $0 1)
  (global $0 (mut i32) (i32.const 0))
  (func $0 (type 1) (block (result i32) (i32.const 0) (i32.load) (br 0)))
  (func $1 (type 2) (block (i32.const 0) (i32.load) (br_if 0)))
  (func $2
    (type 1)
    (block
      (result i32)
      (i32.const 0)
      (i32.load)
      (i32.const 1)
      (br_if 0)
      (drop)
      (i32.const 7)
    )
  )
  (func $3
    (type 1)
    (block
      (result i32)
      (i32.const 6)
      (i32.const 0)
      (i32.load)
      (br_if 0)
      (drop)
      (i32.const 7)
    )
  )
  (func $4 (type 2) (block (i32.const 0) (i32.load) (br_table 0 0 0)))
  (func $5
    (type 1)
    (block
      (result i32)
      (i32.const 0)
      (i32.load)
      (i32.const 1)
      (br_table 0 0 0)
      (i32.const 7)
    )
  )
  (func $6
    (type 1)
    (block
      (result i32)
      (i32.const 6)
      (i32.const 0)
      (i32.load)
      (br_table 0 0)
      (i32.const 7)
    )
  )
  (func $7 (type 1) (i32.const 0) (i32.load) (return))
  (func $8
    (type 1)
    (i32.const 0)
    (i32.load)
    (if (result i32) (then (i32.const 0)) (else (i32.const 1)))
  )
  (func $9
    (type 1)
    (i32.const 1)
    (if (result i32) (then (i32.const 0) (i32.load)) (else (i32.const 0)))
  )
  (func $10
    (type 1)
    (i32.const 0)
    (if (result i32) (then (i32.const 0)) (else (i32.const 0) (i32.load)))
  )
  (func $11
    (type 3)
    (i32.const 0)
    (i32.load)
    (local.get 0)
    (local.get 1)
    (select)
  )
  (func $12
    (type 3)
    (local.get 0)
    (i32.const 0)
    (i32.load)
    (local.get 1)
    (select)
  )
  (func $13
    (type 1)
    (i32.const 0)
    (i32.const 1)
    (i32.const 0)
    (i32.load)
    (select)
  )
  (func $14 (type 0) (i32.const -1))
  (func $15
    (type 1)
    (i32.const 0)
    (i32.load)
    (i32.const 2)
    (i32.const 3)
    (call 14)
  )
  (func $16
    (type 1)
    (i32.const 1)
    (i32.const 0)
    (i32.load)
    (i32.const 3)
    (call 14)
  )
  (func $17
    (type 1)
    (i32.const 1)
    (i32.const 2)
    (i32.const 0)
    (i32.load)
    (call 14)
  )
  (func $18
    (type 1)
    (i32.const 0)
    (i32.load)
    (i32.const 2)
    (i32.const 3)
    (i32.const 0)
    (call_indirect (type 0))
  )
  (func $19
    (type 1)
    (i32.const 1)
    (i32.const 0)
    (i32.load)
    (i32.const 3)
    (i32.const 0)
    (call_indirect (type 0))
  )
  (func $20
    (type 1)
    (i32.const 1)
    (i32.const 2)
    (i32.const 0)
    (i32.load)
    (i32.const 0)
    (call_indirect (type 0))
  )
  (func $21
    (type 1)
    (i32.const 1)
    (i32.const 2)
    (i32.const 3)
    (i32.const 0)
    (i32.load)
    (call_indirect (type 0))
  )
  (func $22 (type 2) (local i32) (i32.const 0) (i32.load) (local.set 0))
  (func $23 (type 1) (local i32) (i32.const 0) (i32.load) (local.tee 0))
  (func $24 (type 2) (local i32) (i32.const 0) (i32.load) (global.set 0))
  (func $25 (type 1) (i32.const 0) (i32.load) (i32.load))
  (func $26 (type 1) (i32.const 0) (i32.load) (i32.load8_s))
  (func $27 (type 2) (i32.const 0) (i32.load) (i32.const 7) (i32.store))
  (func $28 (type 2) (i32.const 2) (i32.const 0) (i32.load) (i32.store))
  (func $29 (type 2) (i32.const 0) (i32.load8_s) (i32.const 7) (i32.store8))
  (func $30 (type 2) (i32.const 2) (i32.const 0) (i32.load) (i32.store16))
  (func $31 (type 1) (i32.const 100) (i32.load) (i32.clz))
  (func $32 (type 1) (i32.const 100) (i32.load) (i32.const 10) (i32.add))
  (func $33 (type 1) (i32.const 10) (i32.const 100) (i32.load) (i32.sub))
  (func $34 (type 1) (i32.const 100) (i32.load) (i32.eqz))
  (func $35 (type 1) (i32.const 100) (i32.load) (i32.const 10) (i32.le_s))
  (func $36 (type 1) (i32.const 10) (i32.const 100) (i32.load) (i32.ne))
  (func $37 (type 1) (i32.const 100) (i32.load) (memory.grow))
  (export "as-br-value" (func 0))
  (export "as-br_if-cond" (func 1))
  (export "as-br_if-value" (func 2))
  (export "as-br_if-value-cond" (func 3))
  (export "as-br_table-index" (func 4))
  (export "as-br_table-value" (func 5))
  (export "as-br_table-value-index" (func 6))
  (export "as-return-value" (func 7))
  (export "as-if-cond" (func 8))
  (export "as-if-then" (func 9))
  (export "as-if-else" (func 10))
  (export "as-select-first" (func 11))
  (export "as-select-second" (func 12))
  (export "as-select-cond" (func 13))
  (export "as-call-first" (func 15))
  (export "as-call-mid" (func 16))
  (export "as-call-last" (func 17))
  (export "as-call_indirect-first" (func 18))
  (export "as-call_indirect-mid" (func 19))
  (export "as-call_indirect-last" (func 20))
  (export "as-call_indirect-index" (func 21))
  (export "as-local.set-value" (func 22))
  (export "as-local.tee-value" (func 23))
  (export "as-global.set-value" (func 24))
  (export "as-load-address" (func 25))
  (export "as-loadN-address" (func 26))
  (export "as-store-address" (func 27))
  (export "as-store-value" (func 28))
  (export "as-storeN-address" (func 29))
  (export "as-storeN-value" (func 30))
  (export "as-unary-operand" (func 31))
  (export "as-binary-left" (func 32))
  (export "as-binary-right" (func 33))
  (export "as-test-operand" (func 34))
  (export "as-compare-left" (func 35))
  (export "as-compare-right" (func 36))
  (export "as-memory.grow-size" (func 37))
  (elem 0 (offset (i32.const 0)) 14)
)
(assert_return (invoke "as-br-value") (i32.const 0))
(assert_return (invoke "as-br_if-cond"))
(assert_return (invoke "as-br_if-value") (i32.const 0))
(assert_return (invoke "as-br_if-value-cond") (i32.const 7))
(assert_return (invoke "as-br_table-index"))
(assert_return (invoke "as-br_table-value") (i32.const 0))
(assert_return (invoke "as-br_table-value-index") (i32.const 6))
(assert_return (invoke "as-return-value") (i32.const 0))
(assert_return (invoke "as-if-cond") (i32.const 1))
(assert_return (invoke "as-if-then") (i32.const 0))
(assert_return (invoke "as-if-else") (i32.const 0))
(assert_return
  (invoke "as-select-first" (i32.const 0) (i32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "as-select-second" (i32.const 0) (i32.const 0))
  (i32.const 0)
)
(assert_return (invoke "as-select-cond") (i32.const 1))
(assert_return (invoke "as-call-first") (i32.const -1))
(assert_return (invoke "as-call-mid") (i32.const -1))
(assert_return (invoke "as-call-last") (i32.const -1))
(assert_return (invoke "as-call_indirect-first") (i32.const -1))
(assert_return (invoke "as-call_indirect-mid") (i32.const -1))
(assert_return (invoke "as-call_indirect-last") (i32.const -1))
(assert_return (invoke "as-call_indirect-index") (i32.const -1))
(assert_return (invoke "as-local.set-value"))
(assert_return (invoke "as-local.tee-value") (i32.const 0))
(assert_return (invoke "as-global.set-value"))
(assert_return (invoke "as-load-address") (i32.const 0))
(assert_return (invoke "as-loadN-address") (i32.const 0))
(assert_return (invoke "as-store-address"))
(assert_return (invoke "as-store-value"))
(assert_return (invoke "as-storeN-address"))
(assert_return (invoke "as-storeN-value"))
(assert_return (invoke "as-unary-operand") (i32.const 32))
(assert_return (invoke "as-binary-left") (i32.const 10))
(assert_return (invoke "as-binary-right") (i32.const 10))
(assert_return (invoke "as-test-operand") (i32.const 1))
(assert_return (invoke "as-compare-left") (i32.const 1))
(assert_return (invoke "as-compare-right") (i32.const 1))
(assert_return (invoke "as-memory.grow-size") (i32.const 1))
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i32) (i32.load32 (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i32) (i32.load32_u (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i32) (i32.load32_s (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i32) (i32.load64 (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i32) (i32.load64_u (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i32) (i32.load64_s (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i64) (i64.load64 (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i64) (i64.load64_u (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result i64) (i64.load64_s (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result f32) (f32.load32 (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result f32) (f32.load64 (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result f64) (f64.load32 (local.get 0)))"
  )
  "unknown operator"
)
(assert_malformed
  (module quote
    "(memory 1)(func (param i32) (result f64) (f64.load64 (local.get 0)))"
  )
  "unknown operator"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.load))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.load8_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.load8_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.load16_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i32.load16_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.load))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.load8_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.load8_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.load16_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.load16_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.load32_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (i64.load32_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f32.load))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 0) (f64.load))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.load))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.load8_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.load8_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.load16_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i32.load16_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.load))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.load8_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.load8_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.load16_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.load16_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.load32_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (i64.load32_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (f32.load))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (memory $0 1)
    (func $0 (type 0) (f32.const 0) (f64.load))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (memory $0 0) (func $0 (type 0) (i32.load) (drop)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (block (i32.load) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (loop (i32.load) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (then (i32.load) (drop)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (result i32) (then (i32.const 0)) (else (i32.load)))
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (block (i32.load) (br 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0
      (type 0)
      (i32.const 0)
      (block (i32.load) (i32.const 1) (br_if 0) (drop))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (block (i32.load) (br_table 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.load) (return) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.load) (i32.const 1) (i32.const 2) (select) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (type $1 (func (param i32) (result i32)))
    (memory $0 0)
    (func $0 (type 0) (i32.load) (call 1) (drop))
    (func $1 (type 1) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (memory $0 0)
    (func $0 (type 0) (local.get 0))
    (func $1
      (type 1)
      (block
        (result i32)
        (i32.load)
        (i32.const 0)
        (call_indirect (type 0))
        (drop)
      )
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (local i32) (i32.load) (local.set 0) (local.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (local i32) (i32.load) (local.tee 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (i32.load) (global.set 0) (global.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.load) (memory.grow) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.load) (i32.load) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.load) (i32.const 1) (i32.store))
  )
  "type mismatch"
)
