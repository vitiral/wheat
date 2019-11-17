(module
  (type $0 (func (param i32 i32) (result i32)))
  (type $1 (func))
  (type $2 (func (param i32)))
  (type $3 (func (param i32) (result i32)))
  (type $4 (func (result i32)))
  (table $0 1 1 funcref)
  (memory $0 1)
  (global $0 (mut i32) (i32.const 10))
  (func $0 (type 1))
  (func $1
    (type 2)
    (local.get 0)
    (if (then) (else))
    (local.get 0)
    (if (then) (else))
    (local.get 0)
    (if (then) (else))
    (local.get 0)
    (if (then) (else))
  )
  (func $2
    (type 3)
    (local.get 0)
    (if (then (nop)) (else))
    (local.get 0)
    (if (then (nop)) (else (nop)))
    (local.get 0)
    (if (result i32) (then (i32.const 7)) (else (i32.const 8)))
  )
  (func $3
    (type 3)
    (local.get 0)
    (if (then (call 0) (call 0) (call 0)) (else))
    (local.get 0)
    (if (then) (else (call 0) (call 0) (call 0)))
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (call 0) (i32.const 8))
      (else (call 0) (call 0) (i32.const 9))
    )
  )
  (func $4
    (type 0)
    (local.get 0)
    (if
      (result i32)
      (then
        (local.get 1)
        (if (then (call 0) (block) (nop)) (else))
        (local.get 1)
        (if (then) (else (call 0) (block) (nop)))
        (local.get 1)
        (if
          (result i32)
          (then (call 0) (i32.const 9))
          (else (call 0) (i32.const 10))
        )
      )
      (else
        (local.get 1)
        (if (then (call 0) (block) (nop)) (else))
        (local.get 1)
        (if (then) (else (call 0) (block) (nop)))
        (local.get 1)
        (if
          (result i32)
          (then (call 0) (i32.const 10))
          (else (call 0) (i32.const 11))
        )
      )
    )
  )
  (func $5
    (type 3)
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (i32.const 1))
      (else (call 0) (i32.const 0))
    )
    (i32.const 2)
    (i32.const 3)
    (select)
  )
  (func $6
    (type 3)
    (i32.const 2)
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (i32.const 1))
      (else (call 0) (i32.const 0))
    )
    (i32.const 3)
    (select)
  )
  (func $7
    (type 3)
    (i32.const 2)
    (i32.const 3)
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (i32.const 1))
      (else (call 0) (i32.const 0))
    )
    (select)
  )
  (func $8
    (type 3)
    (loop
      (result i32)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (call 0)
      (call 0)
    )
  )
  (func $9
    (type 3)
    (loop
      (result i32)
      (call 0)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (call 0)
    )
  )
  (func $10
    (type 3)
    (loop
      (result i32)
      (call 0)
      (call 0)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
    )
  )
  (func $11
    (type 3)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
    (if
      (result i32)
      (then (call 0) (i32.const 2))
      (else (call 0) (i32.const 3))
    )
  )
  (func $12
    (type 3)
    (block
      (result i32)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (i32.const 2)
      (br_if 0)
      (i32.const 3)
      (return)
    )
  )
  (func $13
    (type 3)
    (block
      (result i32)
      (i32.const 2)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (br_if 0)
      (i32.const 3)
      (return)
    )
  )
  (func $14
    (type 3)
    (block
      (result i32)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (i32.const 2)
      (br_table 0 0)
    )
  )
  (func $15
    (type 3)
    (block
      (result i32)
      (i32.const 2)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (br_table 0 0)
    )
  )
  (func $16 (type 0) (local.get 0))
  (func $17
    (type 3)
    (block
      (result i32)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (i32.const 2)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $18
    (type 3)
    (block
      (result i32)
      (i32.const 2)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $19
    (type 3)
    (block
      (result i32)
      (i32.const 2)
      (i32.const 0)
      (local.get 0)
      (if
        (result i32)
        (then (call 0) (i32.const 1))
        (else (call 0) (i32.const 0))
      )
      (call_indirect (type 0))
    )
  )
  (func $20
    (type 2)
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (i32.const 1))
      (else (call 0) (i32.const 0))
    )
    (i32.const 2)
    (i32.store)
  )
  (func $21
    (type 2)
    (i32.const 2)
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (i32.const 1))
      (else (call 0) (i32.const 0))
    )
    (i32.store)
  )
  (func $22
    (type 3)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
    (memory.grow)
  )
  (func $23 (type 3) (local.get 0))
  (func $24
    (type 3)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
    (call 23)
  )
  (func $25
    (type 3)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
    (return)
  )
  (func $26
    (type 2)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
    (drop)
  )
  (func $27
    (type 3)
    (block
      (result i32)
      (local.get 0)
      (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
      (br 0)
    )
  )
  (func $28
    (type 3)
    (local i32)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
    (local.set 0)
    (local.get 0)
  )
  (func $29
    (type 3)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
    (local.tee 0)
  )
  (func $30
    (type 3)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (i32.const 0)))
    (global.set 0)
    (global.get 0)
  )
  (func $31
    (type 3)
    (local.get 0)
    (if (result i32) (then (i32.const 11)) (else (i32.const 10)))
    (i32.load)
  )
  (func $32
    (type 3)
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (i32.const 13))
      (else (call 0) (i32.const -13))
    )
    (i32.ctz)
  )
  (func $33
    (type 0)
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (i32.const 3))
      (else (call 0) (i32.const -3))
    )
    (local.get 1)
    (if
      (result i32)
      (then (call 0) (i32.const 4))
      (else (call 0) (i32.const -5))
    )
    (i32.mul)
  )
  (func $34
    (type 3)
    (local.get 0)
    (if
      (result i32)
      (then (call 0) (i32.const 13))
      (else (call 0) (i32.const 0))
    )
    (i32.eqz)
  )
  (func $35
    (type 0)
    (local.get 0)
    (if
      (result f32)
      (then (call 0) (f32.const 3))
      (else (call 0) (f32.const -3))
    )
    (local.get 1)
    (if
      (result f32)
      (then (call 0) (f32.const 4))
      (else (call 0) (f32.const -4))
    )
    (f32.gt)
  )
  (func $36
    (type 4)
    (i32.const 1)
    (if (then (br 0) (unreachable)) (else))
    (i32.const 1)
    (if (then (br 0) (unreachable)) (else (unreachable)))
    (i32.const 0)
    (if (then (unreachable)) (else (br 0) (unreachable)))
    (i32.const 1)
    (if (then (i32.const 1) (br_if 0) (unreachable)) (else))
    (i32.const 1)
    (if (then (i32.const 1) (br_if 0) (unreachable)) (else (unreachable)))
    (i32.const 0)
    (if (then (unreachable)) (else (i32.const 1) (br_if 0) (unreachable)))
    (i32.const 1)
    (if (then (i32.const 0) (br_table 0) (unreachable)) (else))
    (i32.const 1)
    (if (then (i32.const 0) (br_table 0) (unreachable)) (else (unreachable)))
    (i32.const 0)
    (if (then (unreachable)) (else (i32.const 0) (br_table 0) (unreachable)))
    (i32.const 19)
  )
  (func $37
    (type 3)
    (local.get 0)
    (if
      (result i32)
      (then (i32.const 18) (br 0) (i32.const 19))
      (else (i32.const 21) (br 0) (i32.const 20))
    )
  )
  (func $38
    (type 3)
    (local i32)
    (block (result i32) (i32.const 1) (local.set 1) (local.get 0))
    (if
      (then
        (local.get 1)
        (i32.const 3)
        (i32.mul)
        (local.set 1)
        (local.get 1)
        (i32.const 5)
        (i32.sub)
        (local.set 1)
        (local.get 1)
        (i32.const 7)
        (i32.mul)
        (local.set 1)
        (br 0)
        (local.get 1)
        (i32.const 100)
        (i32.mul)
        (local.set 1)
      )
      (else
        (local.get 1)
        (i32.const 5)
        (i32.mul)
        (local.set 1)
        (local.get 1)
        (i32.const 7)
        (i32.sub)
        (local.set 1)
        (local.get 1)
        (i32.const 3)
        (i32.mul)
        (local.set 1)
        (br 0)
        (local.get 1)
        (i32.const 1_000)
        (i32.mul)
        (local.set 1)
      )
    )
    (local.get 1)
  )
  (export "empty" (func 1))
  (export "singular" (func 2))
  (export "multi" (func 3))
  (export "nested" (func 4))
  (export "as-select-first" (func 5))
  (export "as-select-mid" (func 6))
  (export "as-select-last" (func 7))
  (export "as-loop-first" (func 8))
  (export "as-loop-mid" (func 9))
  (export "as-loop-last" (func 10))
  (export "as-if-condition" (func 11))
  (export "as-br_if-first" (func 12))
  (export "as-br_if-last" (func 13))
  (export "as-br_table-first" (func 14))
  (export "as-br_table-last" (func 15))
  (export "as-call_indirect-first" (func 17))
  (export "as-call_indirect-mid" (func 18))
  (export "as-call_indirect-last" (func 19))
  (export "as-store-first" (func 20))
  (export "as-store-last" (func 21))
  (export "as-memory.grow-value" (func 22))
  (export "as-call-value" (func 24))
  (export "as-return-value" (func 25))
  (export "as-drop-operand" (func 26))
  (export "as-br-value" (func 27))
  (export "as-local.set-value" (func 28))
  (export "as-local.tee-value" (func 29))
  (export "as-global.set-value" (func 30))
  (export "as-load-operand" (func 31))
  (export "as-unary-operand" (func 32))
  (export "as-binary-operand" (func 33))
  (export "as-test-operand" (func 34))
  (export "as-compare-operand" (func 35))
  (export "break-bare" (func 36))
  (export "break-value" (func 37))
  (export "effects" (func 38))
  (elem 0 (offset (i32.const 0)) 16)
)
(assert_return (invoke "empty" (i32.const 0)))
(assert_return (invoke "empty" (i32.const 1)))
(assert_return (invoke "empty" (i32.const 100)))
(assert_return (invoke "empty" (i32.const -2)))
(assert_return (invoke "singular" (i32.const 0)) (i32.const 8))
(assert_return (invoke "singular" (i32.const 1)) (i32.const 7))
(assert_return (invoke "singular" (i32.const 10)) (i32.const 7))
(assert_return (invoke "singular" (i32.const -10)) (i32.const 7))
(assert_return (invoke "multi" (i32.const 0)) (i32.const 9))
(assert_return (invoke "multi" (i32.const 1)) (i32.const 8))
(assert_return (invoke "multi" (i32.const 13)) (i32.const 8))
(assert_return (invoke "multi" (i32.const -5)) (i32.const 8))
(assert_return (invoke "nested" (i32.const 0) (i32.const 0)) (i32.const 11))
(assert_return (invoke "nested" (i32.const 1) (i32.const 0)) (i32.const 10))
(assert_return (invoke "nested" (i32.const 0) (i32.const 1)) (i32.const 10))
(assert_return (invoke "nested" (i32.const 3) (i32.const 2)) (i32.const 9))
(assert_return (invoke "nested" (i32.const 0) (i32.const -100)) (i32.const 10))
(assert_return (invoke "nested" (i32.const 10) (i32.const 10)) (i32.const 9))
(assert_return (invoke "nested" (i32.const 0) (i32.const -1)) (i32.const 10))
(assert_return (invoke "nested" (i32.const -111) (i32.const -2)) (i32.const 9))
(assert_return (invoke "as-select-first" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-select-first" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-select-mid" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-select-mid" (i32.const 1)) (i32.const 2))
(assert_return (invoke "as-select-last" (i32.const 0)) (i32.const 3))
(assert_return (invoke "as-select-last" (i32.const 1)) (i32.const 2))
(assert_return (invoke "as-loop-first" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-loop-first" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-loop-mid" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-loop-mid" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-loop-last" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-loop-last" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-if-condition" (i32.const 0)) (i32.const 3))
(assert_return (invoke "as-if-condition" (i32.const 1)) (i32.const 2))
(assert_return (invoke "as-br_if-first" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-br_if-first" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-br_if-last" (i32.const 0)) (i32.const 3))
(assert_return (invoke "as-br_if-last" (i32.const 1)) (i32.const 2))
(assert_return (invoke "as-br_table-first" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-br_table-first" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-br_table-last" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-br_table-last" (i32.const 1)) (i32.const 2))
(assert_return (invoke "as-call_indirect-first" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-call_indirect-first" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-call_indirect-mid" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-call_indirect-mid" (i32.const 1)) (i32.const 2))
(assert_return (invoke "as-call_indirect-last" (i32.const 0)) (i32.const 2))
(assert_trap (invoke "as-call_indirect-last" (i32.const 1)) "undefined element")
(assert_return (invoke "as-store-first" (i32.const 0)))
(assert_return (invoke "as-store-first" (i32.const 1)))
(assert_return (invoke "as-store-last" (i32.const 0)))
(assert_return (invoke "as-store-last" (i32.const 1)))
(assert_return (invoke "as-memory.grow-value" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-memory.grow-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-call-value" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-call-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-return-value" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-return-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-drop-operand" (i32.const 0)))
(assert_return (invoke "as-drop-operand" (i32.const 1)))
(assert_return (invoke "as-br-value" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-br-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-local.set-value" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-local.set-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-local.tee-value" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-local.tee-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-global.set-value" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-global.set-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-load-operand" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-load-operand" (i32.const 1)) (i32.const 0))
(assert_return (invoke "as-unary-operand" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-unary-operand" (i32.const 1)) (i32.const 0))
(assert_return (invoke "as-unary-operand" (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "as-binary-operand" (i32.const 0) (i32.const 0))
  (i32.const 15)
)
(assert_return
  (invoke "as-binary-operand" (i32.const 0) (i32.const 1))
  (i32.const -12)
)
(assert_return
  (invoke "as-binary-operand" (i32.const 1) (i32.const 0))
  (i32.const -15)
)
(assert_return
  (invoke "as-binary-operand" (i32.const 1) (i32.const 1))
  (i32.const 12)
)
(assert_return (invoke "as-test-operand" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-test-operand" (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "as-compare-operand" (i32.const 0) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "as-compare-operand" (i32.const 0) (i32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "as-compare-operand" (i32.const 1) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "as-compare-operand" (i32.const 1) (i32.const 1))
  (i32.const 0)
)
(assert_return (invoke "break-bare") (i32.const 19))
(assert_return (invoke "break-value" (i32.const 1)) (i32.const 18))
(assert_return (invoke "break-value" (i32.const 0)) (i32.const 21))
(assert_return (invoke "effects" (i32.const 1)) (i32.const -14))
(assert_return (invoke "effects" (i32.const 0)) (i32.const -6))
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i32.const 0) (if (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (if (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i32.const 0) (if (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i32.const 0) (if (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i32.const 0) (if (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (if (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i32.const 0) (if (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i32.const 0) (if (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 1) (if (then (i32.const 1)) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 1) (if (then (i32.const 1)) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 1) (if (then) (else (i32.const 1))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 1)
      (if (then (i32.const 1)) (else (i32.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then) (else (i32.const 0)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i32.const 0)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i32.const 1) (if (result i32) (then) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i32.const 1)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (nop)) (else (i32.const 0)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i32.const 0)) (else (nop)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i32.const 1) (if (result i32) (then (nop)) (else (nop))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i64.const 1)) (else (i32.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i32.const 1)) (else (i64.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i64.const 1)) (else (i64.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i64.const 1)) (else (f64.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 0)
      (if
        (result i64)
        (then (unreachable) (unreachable) (unreachable) (select))
        (else (i64.const 0))
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if
        (result i64)
        (then (i64.const 0))
        (else (unreachable) (unreachable) (unreachable) (select))
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if
        (result i64)
        (then (unreachable) (unreachable) (unreachable) (select))
        (else (unreachable) (unreachable) (unreachable) (select))
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (br 0)) (else (i32.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i32.const 1)) (else (br 0)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (br 0) (i32.const 1)) (else (i32.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i32.const 1)) (else (br 0) (i32.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (nop) (br 0) (i32.const 1)) (else (i32.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if (result i32) (then (i32.const 1)) (else (nop) (br 0) (i32.const 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if
        (result i32)
        (then (i64.const 1) (br 0) (i32.const 1))
        (else (i32.const 1))
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 1)
      (if
        (result i32)
        (then (i32.const 1))
        (else (i64.const 1) (br 0) (i32.const 1))
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (if (then) (else))))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (block (if (then) (else))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (loop (if (then) (else))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (then (if (then) (else))) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if
        (result i32)
        (then (i32.const 0))
        (else (if (then) (else)) (i32.const 0))
      )
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (block (if (then) (else)) (br 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (block (if (then) (else)) (i32.const 1) (br_if 0) (drop))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (block (if (then) (else)) (br_table 0) (drop))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (if (then) (else)) (return) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (if (then) (else))
      (i32.const 1)
      (i32.const 2)
      (select)
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (type $1 (func (param i32) (result i32)))
    (func $0 (type 0) (if (then) (else)) (call 1) (drop))
    (func $1 (type 1) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (func $0 (type 0) (local.get 0))
    (func $1
      (type 1)
      (block
        (result i32)
        (if (then) (else))
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
    (func $0
      (type 0)
      (local i32)
      (if (then) (else))
      (local.set 0)
      (local.get 0)
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32) (if (then) (else)) (local.tee 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (if (then) (else)) (global.set 0) (global.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (if (then) (else)) (memory.grow) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (if (then) (else)) (i32.load) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (if (then) (else)) (i32.const 1) (i32.store))
  )
  "type mismatch"
)
(assert_malformed
  (module quote "(func i32.const 0 if end $l)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if $a end $l)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if else $l end)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if $a else $l end)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if else end $l)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if else $l end $l)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if else $l1 end $l2)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if $a else end $l)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if $a else $a end $l)")
  "mismatching label"
)
(assert_malformed
  (module quote "(func i32.const 0 if $a else $l end $l)")
  "mismatching label"
)
