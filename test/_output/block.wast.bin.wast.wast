(module
  (type $0 (func (param i32 i32) (result i32)))
  (type $1 (func))
  (type $2 (func (result i32)))
  (type $3 (func (param i32) (result i32)))
  (table $0 1 1 funcref)
  (memory $0 1)
  (global $0 (mut i32) (i32.const 10))
  (func $0 (type 1))
  (func $1 (type 1) (block) (block))
  (func $2 (type 2) (block (nop)) (block (result i32) (i32.const 7)))
  (func $3
    (type 2)
    (block (call 0) (call 0) (call 0) (call 0))
    (block (result i32) (call 0) (call 0) (call 0) (i32.const 8))
  )
  (func $4
    (type 2)
    (block
      (result i32)
      (block (call 0) (block) (nop))
      (block (result i32) (call 0) (i32.const 9))
    )
  )
  (func $5
    (type 2)
    (block
      (result i32)
      (block
        (result i32)
        (block
          (result i32)
          (block
            (result i32)
            (block
              (result i32)
              (block
                (result i32)
                (block
                  (result i32)
                  (block
                    (result i32)
                    (block
                      (result i32)
                      (block
                        (result i32)
                        (block
                          (result i32)
                          (block
                            (result i32)
                            (block
                              (result i32)
                              (block
                                (result i32)
                                (block
                                  (result i32)
                                  (block
                                    (result i32)
                                    (block
                                      (result i32)
                                      (block
                                        (result i32)
                                        (block
                                          (result i32)
                                          (block
                                            (result i32)
                                            (block
                                              (result i32)
                                              (block
                                                (result i32)
                                                (block
                                                  (result i32)
                                                  (block
                                                    (result i32)
                                                    (block
                                                      (result i32)
                                                      (block
                                                        (result i32)
                                                        (block
                                                          (result i32)
                                                          (block
                                                            (result i32)
                                                            (block
                                                              (result i32)
                                                              (block
                                                                (result i32)
                                                                (block
                                                                  (result i32)
                                                                  (block
                                                                    (result i32)
                                                                    (block
                                                                      (result
                                                                        i32
                                                                      )
                                                                      (block
                                                                        (result
                                                                          i32
                                                                        )
                                                                        (block
                                                                          (result
                                                                            i32
                                                                          )
                                                                          (block
                                                                            (result
                                                                              i32
                                                                            )
                                                                            (block
                                                                              (result
                                                                                i32
                                                                              )
                                                                              (block
                                                                                (result
                                                                                  i32
                                                                                )
                                                                                (call 0
                                                                                )
                                                                                (i32.const 150
                                                                                )
                                                                              )
                                                                            )
                                                                          )
                                                                        )
                                                                      )
                                                                    )
                                                                  )
                                                                )
                                                              )
                                                            )
                                                          )
                                                        )
                                                      )
                                                    )
                                                  )
                                                )
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
  )
  (func $6
    (type 2)
    (block (result i32) (i32.const 1))
    (i32.const 2)
    (i32.const 3)
    (select)
  )
  (func $7
    (type 2)
    (i32.const 2)
    (block (result i32) (i32.const 1))
    (i32.const 3)
    (select)
  )
  (func $8
    (type 2)
    (i32.const 2)
    (i32.const 3)
    (block (result i32) (i32.const 1))
    (select)
  )
  (func $9
    (type 2)
    (loop (result i32) (block (result i32) (i32.const 1)) (call 0) (call 0))
  )
  (func $10
    (type 2)
    (loop (result i32) (call 0) (block (result i32) (i32.const 1)) (call 0))
  )
  (func $11
    (type 2)
    (loop (result i32) (call 0) (call 0) (block (result i32) (i32.const 1)))
  )
  (func $12
    (type 1)
    (block (result i32) (i32.const 1))
    (if (then (call 0)) (else))
  )
  (func $13
    (type 2)
    (i32.const 1)
    (if
      (result i32)
      (then (block (result i32) (i32.const 1)))
      (else (i32.const 2))
    )
  )
  (func $14
    (type 2)
    (i32.const 1)
    (if
      (result i32)
      (then (i32.const 2))
      (else (block (result i32) (i32.const 1)))
    )
  )
  (func $15
    (type 2)
    (block
      (result i32)
      (block (result i32) (i32.const 1))
      (i32.const 2)
      (br_if 0)
    )
  )
  (func $16
    (type 2)
    (block
      (result i32)
      (i32.const 2)
      (block (result i32) (i32.const 1))
      (br_if 0)
    )
  )
  (func $17
    (type 2)
    (block
      (result i32)
      (block (result i32) (i32.const 1))
      (i32.const 2)
      (br_table 0 0)
    )
  )
  (func $18
    (type 2)
    (block
      (result i32)
      (i32.const 2)
      (block (result i32) (i32.const 1))
      (br_table 0 0)
    )
  )
  (func $19 (type 0) (local.get 0))
  (func $20
    (type 2)
    (block
      (result i32)
      (block (result i32) (i32.const 1))
      (i32.const 2)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $21
    (type 2)
    (block
      (result i32)
      (i32.const 2)
      (block (result i32) (i32.const 1))
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $22
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 2)
      (block (result i32) (i32.const 0))
      (call_indirect (type 0))
    )
  )
  (func $23
    (type 1)
    (block (result i32) (i32.const 1))
    (i32.const 1)
    (i32.store)
  )
  (func $24
    (type 1)
    (i32.const 10)
    (block (result i32) (i32.const 1))
    (i32.store)
  )
  (func $25 (type 2) (block (result i32) (i32.const 1)) (memory.grow))
  (func $26 (type 3) (local.get 0))
  (func $27 (type 2) (block (result i32) (i32.const 1)) (call 26))
  (func $28 (type 2) (block (result i32) (i32.const 1)) (return))
  (func $29 (type 1) (block (result i32) (i32.const 1)) (drop))
  (func $30
    (type 2)
    (block (result i32) (block (result i32) (i32.const 1)) (br 0))
  )
  (func $31
    (type 2)
    (local i32)
    (block (result i32) (i32.const 1))
    (local.set 0)
    (local.get 0)
  )
  (func $32
    (type 2)
    (local i32)
    (block (result i32) (i32.const 1))
    (local.tee 0)
  )
  (func $33
    (type 2)
    (block (result i32) (i32.const 1))
    (global.set 0)
    (global.get 0)
  )
  (func $34 (type 2) (block (result i32) (i32.const 1)) (i32.load))
  (func $35 (type 2) (block (result i32) (call 0) (i32.const 13)) (i32.ctz))
  (func $36
    (type 2)
    (block (result i32) (call 0) (i32.const 3))
    (block (result i32) (call 0) (i32.const 4))
    (i32.mul)
  )
  (func $37 (type 2) (block (result i32) (call 0) (i32.const 13)) (i32.eqz))
  (func $38
    (type 2)
    (block (result f32) (call 0) (f32.const 3))
    (block (result f32) (call 0) (f32.const 3))
    (f32.gt)
  )
  (func $39
    (type 2)
    (block (br 0) (unreachable))
    (block (i32.const 1) (br_if 0) (unreachable))
    (block (i32.const 0) (br_table 0) (unreachable))
    (block (i32.const 1) (br_table 0 0 0) (unreachable))
    (i32.const 19)
  )
  (func $40 (type 2) (block (result i32) (i32.const 18) (br 0) (i32.const 19)))
  (func $41
    (type 2)
    (block
      (result i32)
      (i32.const 18)
      (br 0)
      (i32.const 19)
      (br 0)
      (i32.const 20)
      (i32.const 0)
      (br_if 0)
      (drop)
      (i32.const 20)
      (i32.const 1)
      (br_if 0)
      (drop)
      (i32.const 21)
      (br 0)
      (i32.const 22)
      (i32.const 4)
      (br_table 0)
      (i32.const 23)
      (i32.const 1)
      (br_table 0 0 0)
      (i32.const 21)
    )
  )
  (func $42
    (type 2)
    (local i32)
    (i32.const 0)
    (local.set 0)
    (local.get 0)
    (block (result i32) (block (result i32) (i32.const 1) (br 1)))
    (i32.add)
    (local.set 0)
    (local.get 0)
    (block (result i32) (block (br 0)) (i32.const 2))
    (i32.add)
    (local.set 0)
    (local.get 0)
    (block (result i32) (i32.const 4) (br 0) (i32.ctz))
    (i32.add)
    (local.set 0)
    (local.get 0)
    (block (result i32) (block (result i32) (i32.const 8) (br 1)) (i32.ctz))
    (i32.add)
    (local.set 0)
    (local.get 0)
  )
  (func $43
    (type 2)
    (local i32)
    (block
      (i32.const 1)
      (local.set 0)
      (local.get 0)
      (i32.const 3)
      (i32.mul)
      (local.set 0)
      (local.get 0)
      (i32.const 5)
      (i32.sub)
      (local.set 0)
      (local.get 0)
      (i32.const 7)
      (i32.mul)
      (local.set 0)
      (br 0)
      (local.get 0)
      (i32.const 100)
      (i32.mul)
      (local.set 0)
    )
    (local.get 0)
    (i32.const -14)
    (i32.eq)
  )
  (export "empty" (func 1))
  (export "singular" (func 2))
  (export "multi" (func 3))
  (export "nested" (func 4))
  (export "deep" (func 5))
  (export "as-select-first" (func 6))
  (export "as-select-mid" (func 7))
  (export "as-select-last" (func 8))
  (export "as-loop-first" (func 9))
  (export "as-loop-mid" (func 10))
  (export "as-loop-last" (func 11))
  (export "as-if-condition" (func 12))
  (export "as-if-then" (func 13))
  (export "as-if-else" (func 14))
  (export "as-br_if-first" (func 15))
  (export "as-br_if-last" (func 16))
  (export "as-br_table-first" (func 17))
  (export "as-br_table-last" (func 18))
  (export "as-call_indirect-first" (func 20))
  (export "as-call_indirect-mid" (func 21))
  (export "as-call_indirect-last" (func 22))
  (export "as-store-first" (func 23))
  (export "as-store-last" (func 24))
  (export "as-memory.grow-value" (func 25))
  (export "as-call-value" (func 27))
  (export "as-return-value" (func 28))
  (export "as-drop-operand" (func 29))
  (export "as-br-value" (func 30))
  (export "as-local.set-value" (func 31))
  (export "as-local.tee-value" (func 32))
  (export "as-global.set-value" (func 33))
  (export "as-load-operand" (func 34))
  (export "as-unary-operand" (func 35))
  (export "as-binary-operand" (func 36))
  (export "as-test-operand" (func 37))
  (export "as-compare-operand" (func 38))
  (export "break-bare" (func 39))
  (export "break-value" (func 40))
  (export "break-repeated" (func 41))
  (export "break-inner" (func 42))
  (export "effects" (func 43))
  (elem 0 (offset (i32.const 0)) 19)
)
(assert_return (invoke "empty"))
(assert_return (invoke "singular") (i32.const 7))
(assert_return (invoke "multi") (i32.const 8))
(assert_return (invoke "nested") (i32.const 9))
(assert_return (invoke "deep") (i32.const 150))
(assert_return (invoke "as-select-first") (i32.const 1))
(assert_return (invoke "as-select-mid") (i32.const 2))
(assert_return (invoke "as-select-last") (i32.const 2))
(assert_return (invoke "as-loop-first") (i32.const 1))
(assert_return (invoke "as-loop-mid") (i32.const 1))
(assert_return (invoke "as-loop-last") (i32.const 1))
(assert_return (invoke "as-if-condition"))
(assert_return (invoke "as-if-then") (i32.const 1))
(assert_return (invoke "as-if-else") (i32.const 2))
(assert_return (invoke "as-br_if-first") (i32.const 1))
(assert_return (invoke "as-br_if-last") (i32.const 2))
(assert_return (invoke "as-br_table-first") (i32.const 1))
(assert_return (invoke "as-br_table-last") (i32.const 2))
(assert_return (invoke "as-call_indirect-first") (i32.const 1))
(assert_return (invoke "as-call_indirect-mid") (i32.const 2))
(assert_return (invoke "as-call_indirect-last") (i32.const 1))
(assert_return (invoke "as-store-first"))
(assert_return (invoke "as-store-last"))
(assert_return (invoke "as-memory.grow-value") (i32.const 1))
(assert_return (invoke "as-call-value") (i32.const 1))
(assert_return (invoke "as-return-value") (i32.const 1))
(assert_return (invoke "as-drop-operand"))
(assert_return (invoke "as-br-value") (i32.const 1))
(assert_return (invoke "as-local.set-value") (i32.const 1))
(assert_return (invoke "as-local.tee-value") (i32.const 1))
(assert_return (invoke "as-global.set-value") (i32.const 1))
(assert_return (invoke "as-load-operand") (i32.const 1))
(assert_return (invoke "as-unary-operand") (i32.const 0))
(assert_return (invoke "as-binary-operand") (i32.const 12))
(assert_return (invoke "as-test-operand") (i32.const 0))
(assert_return (invoke "as-compare-operand") (i32.const 0))
(assert_return (invoke "break-bare") (i32.const 19))
(assert_return (invoke "break-value") (i32.const 18))
(assert_return (invoke "break-repeated") (i32.const 18))
(assert_return (invoke "break-inner") (i32.const 15))
(assert_return (invoke "effects") (i32.const 1))
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (block)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i64))) (func $0 (type 0) (block)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result f32))) (func $0 (type 0) (block)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result f64))) (func $0 (type 0) (block)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (i32.const 1))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (i64.const 1))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (f32.const 1))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (f64.const 1))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (block (result i32))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i64))) (func $0 (type 0) (block (result i64))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result f32))) (func $0 (type 0) (block (result f32))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result f64))) (func $0 (type 0) (block (result f64))))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (block (block (result i32)) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (loop (block (result i32)) (drop)))
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
      (if (then (block (result i32)) (drop)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (nop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (nop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (nop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (nop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (i64.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (f64.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (i32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (f64.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (i32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (i64.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (f64.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (i32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (i64.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f64) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i64) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result f32) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result f64) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block (result i32) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block (result f32) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block (result f64) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block (result i32) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block (result i64) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block (result f64) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block (result i32) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block (result i64) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block (result f32) (unreachable) (unreachable) (unreachable) (select))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (br 0) (i32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (br 0) (i64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (br 0) (f32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (br 0) (f64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (nop) (br 0) (i32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (nop) (br 0) (i64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (nop) (br 0) (f32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (nop) (br 0) (f64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (i64.const 1) (br 0) (i32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (f32.const 1) (br 0) (i32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (f64.const 1) (br 0) (i32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (i32.const 1) (br 0) (i64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (f32.const 1) (br 0) (i64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (f64.const 1) (br 0) (i64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (i32.const 1) (br 0) (f32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (i64.const 1) (br 0) (f32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (f64.const 1) (br 0) (f32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result i64) (i32.const 1) (br 0) (f64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (i64.const 1) (br 0) (f64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (f32.const 1) (br 0) (f64.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (nop) (br 0) (i32.const 1) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (nop) (br 0) (i64.const 1) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (nop) (br 0) (f32.const 1) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (nop) (br 0) (f64.const 1) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i64.const 1) (br 0) (i32.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (f32.const 1) (br 0) (i32.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (f64.const 1) (br 0) (i32.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block (result i64) (i32.const 1) (br 0) (i64.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block (result i64) (f32.const 1) (br 0) (i64.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block (result i64) (f64.const 1) (br 0) (i64.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block (result f32) (i32.const 1) (br 0) (f32.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block (result f32) (i64.const 1) (br 0) (f32.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block (result f32) (f64.const 1) (br 0) (f32.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block (result f64) (i32.const 1) (br 0) (f64.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block (result f64) (i64.const 1) (br 0) (f64.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block (result f64) (f32.const 1) (br 0) (f64.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block (result i32) (block (result i32) (i32.const 1) (br 1)) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block (result i64) (block (result i64) (i64.const 1) (br 1)) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block (result f32) (block (result f32) (f32.const 1) (br 1)) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block (result f64) (block (result f64) (f64.const 1) (br 1)) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (block (br 1)) (i32.const 1) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (result i64) (block (br 1)) (i64.const 1) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (result f32) (block (br 1)) (f32.const 1) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (result f64) (block (br 1)) (f64.const 1) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (block (result i32) (nop) (br 1))
        (i32.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block
        (result i64)
        (block (result i64) (nop) (br 1))
        (i64.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block
        (result f32)
        (block (result f32) (nop) (br 1))
        (f32.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block
        (result f64)
        (block (result f64) (nop) (br 1))
        (f64.const 1)
        (br 0)
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
      (block
        (result i32)
        (block (result i32) (i64.const 1) (br 1))
        (i32.const 1)
        (br 0)
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
      (block
        (result i32)
        (block (result i32) (f32.const 1) (br 1))
        (i32.const 1)
        (br 0)
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
      (block
        (result i32)
        (block (result i32) (f64.const 1) (br 1))
        (i32.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block
        (result i64)
        (block (result i64) (i32.const 1) (br 1))
        (i64.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block
        (result i64)
        (block (result i64) (f32.const 1) (br 1))
        (i64.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0
      (type 0)
      (block
        (result i64)
        (block (result i64) (f64.const 1) (br 1))
        (i64.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block
        (result f32)
        (block (result f32) (i32.const 1) (br 1))
        (f32.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block
        (result f32)
        (block (result f32) (i64.const 1) (br 1))
        (f32.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0
      (type 0)
      (block
        (result f32)
        (block (result f32) (f64.const 1) (br 1))
        (f32.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block
        (result f64)
        (block (result f64) (i32.const 1) (br 1))
        (f64.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block
        (result f64)
        (block (result f64) (i64.const 1) (br 1))
        (f64.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0
      (type 0)
      (block
        (result f64)
        (block (result f64) (f32.const 1) (br 1))
        (f64.const 1)
        (br 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (br 0)) (i32.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (br 0)) (i64.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (br 0)) (f32.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (br 0)) (f64.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (nop) (br 0)) (i32.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (nop) (br 0)) (i64.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (nop) (br 0)) (f32.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (nop) (br 0)) (f64.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (i64.const 9) (br 0)) (i64.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (f32.const 9) (br 0)) (f32.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (f64.const 9) (br 0)) (f64.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (i32.const 9) (br 0)) (i32.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (f32.const 9) (br 0)) (f32.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (block (f64.const 9) (br 0)) (f64.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (i32.const 9) (br 0)) (i32.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (i64.const 9) (br 0)) (i64.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (block (f64.const 9) (br 0)) (f64.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (i32.const 9) (br 0)) (i32.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (i64.const 9) (br 0)) (i64.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (block (f32.const 9) (br 0)) (f32.floor))
  )
  "type mismatch"
)
(assert_malformed (module quote "(func block end $l)") "mismatching label")
(assert_malformed (module quote "(func block $a end $l)") "mismatching label")
