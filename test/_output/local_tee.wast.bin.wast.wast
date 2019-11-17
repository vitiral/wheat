(module
  (type $0 (func (param i32 i32 i32) (result i32)))
  (type $1 (func (result i32)))
  (type $2 (func (result i64)))
  (type $3 (func (result f32)))
  (type $4 (func (result f64)))
  (type $5 (func (param i32) (result i32)))
  (type $6 (func (param i64) (result i64)))
  (type $7 (func (param f32) (result f32)))
  (type $8 (func (param f64) (result f64)))
  (type $9 (func (param i64 f32 f64 i32 i32)))
  (type $10 (func (param i64 f32 f64 i32 i32) (result i64)))
  (type $11 (func (param i64 f32 f64 i32 i32) (result f64)))
  (type $12 (func))
  (type $13 (func (param i32)))
  (type $14 (func (param i32 i32) (result i32)))
  (type $15 (func (param i64) (result i32)))
  (table $0 1 1 funcref)
  (memory $0 1)
  (global $0 (mut i32) (i32.const 0))
  (func $0 (type 1) (local i32) (i32.const 0) (local.tee 0))
  (func $1 (type 2) (local i64) (i64.const 0) (local.tee 0))
  (func $2 (type 3) (local f32) (f32.const 0) (local.tee 0))
  (func $3 (type 4) (local f64) (f64.const 0) (local.tee 0))
  (func $4 (type 5) (i32.const 10) (local.tee 0))
  (func $5 (type 6) (i64.const 11) (local.tee 0))
  (func $6 (type 7) (f32.const 11.100_000_381_469_727) (local.tee 0))
  (func $7 (type 8) (f64.const 12.199_999_999_999_999) (local.tee 0))
  (func $8
    (type 9)
    (local f32 i64 i64 f64)
    (i64.const 0)
    (local.tee 0)
    (i64.eqz)
    (drop)
    (f32.const 0)
    (local.tee 1)
    (f32.neg)
    (drop)
    (f64.const 0)
    (local.tee 2)
    (f64.neg)
    (drop)
    (i32.const 0)
    (local.tee 3)
    (i32.eqz)
    (drop)
    (i32.const 0)
    (local.tee 4)
    (i32.eqz)
    (drop)
    (f32.const 0)
    (local.tee 5)
    (f32.neg)
    (drop)
    (i64.const 0)
    (local.tee 6)
    (i64.eqz)
    (drop)
    (i64.const 0)
    (local.tee 7)
    (i64.eqz)
    (drop)
    (f64.const 0)
    (local.tee 8)
    (f64.neg)
    (drop)
  )
  (func $9
    (type 10)
    (local f32 i64 i64 f64)
    (f32.const -0.300_000_011_920_928_96)
    (local.tee 1)
    (drop)
    (i32.const 40)
    (local.tee 3)
    (drop)
    (i32.const -7)
    (local.tee 4)
    (drop)
    (f32.const 5.5)
    (local.tee 5)
    (drop)
    (i64.const 6)
    (local.tee 6)
    (drop)
    (f64.const 8)
    (local.tee 8)
    (drop)
    (local.get 0)
    (f64.convert_i64_u)
    (local.get 1)
    (f64.promote_f32)
    (local.get 2)
    (local.get 3)
    (f64.convert_i32_u)
    (local.get 4)
    (f64.convert_i32_s)
    (local.get 5)
    (f64.promote_f32)
    (local.get 6)
    (f64.convert_i64_u)
    (local.get 7)
    (f64.convert_i64_u)
    (local.get 8)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (i64.trunc_f64_s)
  )
  (func $10
    (type 11)
    (local f32 i64 i64 f64)
    (i64.const 1)
    (local.tee 0)
    (f64.convert_i64_u)
    (f32.const 2)
    (local.tee 1)
    (f64.promote_f32)
    (f64.const 3.299_999_999_999_999_8)
    (local.tee 2)
    (i32.const 4)
    (local.tee 3)
    (f64.convert_i32_u)
    (i32.const 5)
    (local.tee 4)
    (f64.convert_i32_s)
    (f32.const 5.5)
    (local.tee 5)
    (f64.promote_f32)
    (i64.const 6)
    (local.tee 6)
    (f64.convert_i64_u)
    (i64.const 0)
    (local.tee 7)
    (f64.convert_i64_u)
    (f64.const 8)
    (local.tee 8)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
    (f64.add)
  )
  (func $11 (type 12))
  (func $12 (type 5) (block (result i32) (i32.const 1) (local.tee 0) (call 11)))
  (func $13
    (type 5)
    (block (result i32) (call 11) (i32.const 1) (local.tee 0) (call 11))
  )
  (func $14
    (type 5)
    (block (result i32) (call 11) (call 11) (i32.const 1) (local.tee 0))
  )
  (func $15 (type 5) (loop (result i32) (i32.const 3) (local.tee 0) (call 11)))
  (func $16
    (type 5)
    (loop (result i32) (call 11) (i32.const 4) (local.tee 0) (call 11))
  )
  (func $17
    (type 5)
    (loop (result i32) (call 11) (call 11) (i32.const 5) (local.tee 0))
  )
  (func $18 (type 5) (block (result i32) (i32.const 9) (local.tee 0) (br 0)))
  (func $19 (type 13) (block (i32.const 1) (local.tee 0) (br_if 0)))
  (func $20
    (type 5)
    (block
      (result i32)
      (i32.const 8)
      (local.tee 0)
      (i32.const 1)
      (br_if 0)
      (drop)
      (i32.const 7)
    )
  )
  (func $21
    (type 5)
    (block
      (result i32)
      (i32.const 6)
      (i32.const 9)
      (local.tee 0)
      (br_if 0)
      (drop)
      (i32.const 7)
    )
  )
  (func $22 (type 13) (block (i32.const 0) (local.tee 0) (br_table 0 0 0)))
  (func $23
    (type 5)
    (block
      (result i32)
      (i32.const 10)
      (local.tee 0)
      (i32.const 1)
      (br_table 0 0 0)
      (i32.const 7)
    )
  )
  (func $24
    (type 5)
    (block
      (result i32)
      (i32.const 6)
      (i32.const 11)
      (local.tee 0)
      (br_table 0 0)
      (i32.const 7)
    )
  )
  (func $25 (type 5) (i32.const 7) (local.tee 0) (return))
  (func $26
    (type 5)
    (i32.const 2)
    (local.tee 0)
    (if (result i32) (then (i32.const 0)) (else (i32.const 1)))
  )
  (func $27
    (type 5)
    (local.get 0)
    (if (result i32) (then (i32.const 3) (local.tee 0)) (else (local.get 0)))
  )
  (func $28
    (type 5)
    (local.get 0)
    (if (result i32) (then (local.get 0)) (else (i32.const 4) (local.tee 0)))
  )
  (func $29
    (type 14)
    (i32.const 5)
    (local.tee 0)
    (local.get 0)
    (local.get 1)
    (select)
  )
  (func $30
    (type 14)
    (local.get 0)
    (i32.const 6)
    (local.tee 0)
    (local.get 1)
    (select)
  )
  (func $31
    (type 5)
    (i32.const 0)
    (i32.const 1)
    (i32.const 7)
    (local.tee 0)
    (select)
  )
  (func $32 (type 0) (i32.const -1))
  (func $33
    (type 5)
    (i32.const 12)
    (local.tee 0)
    (i32.const 2)
    (i32.const 3)
    (call 32)
  )
  (func $34
    (type 5)
    (i32.const 1)
    (i32.const 13)
    (local.tee 0)
    (i32.const 3)
    (call 32)
  )
  (func $35
    (type 5)
    (i32.const 1)
    (i32.const 2)
    (i32.const 14)
    (local.tee 0)
    (call 32)
  )
  (func $36
    (type 5)
    (i32.const 1)
    (local.tee 0)
    (i32.const 2)
    (i32.const 3)
    (i32.const 0)
    (call_indirect (type 0))
  )
  (func $37
    (type 5)
    (i32.const 1)
    (i32.const 2)
    (local.tee 0)
    (i32.const 3)
    (i32.const 0)
    (call_indirect (type 0))
  )
  (func $38
    (type 5)
    (i32.const 1)
    (i32.const 2)
    (i32.const 3)
    (local.tee 0)
    (i32.const 0)
    (call_indirect (type 0))
  )
  (func $39
    (type 5)
    (i32.const 1)
    (i32.const 2)
    (i32.const 3)
    (i32.const 0)
    (local.tee 0)
    (call_indirect (type 0))
  )
  (func $40 (type 12) (local i32) (i32.const 1) (local.tee 0) (local.set 0))
  (func $41 (type 5) (i32.const 1) (local.tee 0) (local.tee 0))
  (func $42 (type 12) (local i32) (i32.const 1) (local.tee 0) (global.set 0))
  (func $43 (type 5) (i32.const 1) (local.tee 0) (i32.load))
  (func $44 (type 5) (i32.const 3) (local.tee 0) (i32.load8_s))
  (func $45 (type 13) (i32.const 30) (local.tee 0) (i32.const 7) (i32.store))
  (func $46 (type 13) (i32.const 2) (i32.const 1) (local.tee 0) (i32.store))
  (func $47 (type 13) (i32.const 1) (local.tee 0) (i32.const 7) (i32.store8))
  (func $48 (type 13) (i32.const 2) (i32.const 1) (local.tee 0) (i32.store16))
  (func $49 (type 7) (f32.const nan:0xf1e2) (local.tee 0) (f32.neg))
  (func $50 (type 5) (i32.const 3) (local.tee 0) (i32.const 10) (i32.add))
  (func $51 (type 5) (i32.const 10) (i32.const 4) (local.tee 0) (i32.sub))
  (func $52 (type 5) (i32.const 0) (local.tee 0) (i32.eqz))
  (func $53 (type 5) (i32.const 43) (local.tee 0) (i32.const 10) (i32.le_s))
  (func $54 (type 5) (i32.const 10) (i32.const 42) (local.tee 0) (i32.ne))
  (func $55 (type 15) (i64.const 41) (local.tee 0) (i32.wrap_i64))
  (func $56 (type 5) (i32.const 40) (local.tee 0) (memory.grow))
  (export "type-local-i32" (func 0))
  (export "type-local-i64" (func 1))
  (export "type-local-f32" (func 2))
  (export "type-local-f64" (func 3))
  (export "type-param-i32" (func 4))
  (export "type-param-i64" (func 5))
  (export "type-param-f32" (func 6))
  (export "type-param-f64" (func 7))
  (export "type-mixed" (func 8))
  (export "write" (func 9))
  (export "result" (func 10))
  (export "as-block-first" (func 12))
  (export "as-block-mid" (func 13))
  (export "as-block-last" (func 14))
  (export "as-loop-first" (func 15))
  (export "as-loop-mid" (func 16))
  (export "as-loop-last" (func 17))
  (export "as-br-value" (func 18))
  (export "as-br_if-cond" (func 19))
  (export "as-br_if-value" (func 20))
  (export "as-br_if-value-cond" (func 21))
  (export "as-br_table-index" (func 22))
  (export "as-br_table-value" (func 23))
  (export "as-br_table-value-index" (func 24))
  (export "as-return-value" (func 25))
  (export "as-if-cond" (func 26))
  (export "as-if-then" (func 27))
  (export "as-if-else" (func 28))
  (export "as-select-first" (func 29))
  (export "as-select-second" (func 30))
  (export "as-select-cond" (func 31))
  (export "as-call-first" (func 33))
  (export "as-call-mid" (func 34))
  (export "as-call-last" (func 35))
  (export "as-call_indirect-first" (func 36))
  (export "as-call_indirect-mid" (func 37))
  (export "as-call_indirect-last" (func 38))
  (export "as-call_indirect-index" (func 39))
  (export "as-local.set-value" (func 40))
  (export "as-local.tee-value" (func 41))
  (export "as-global.set-value" (func 42))
  (export "as-load-address" (func 43))
  (export "as-loadN-address" (func 44))
  (export "as-store-address" (func 45))
  (export "as-store-value" (func 46))
  (export "as-storeN-address" (func 47))
  (export "as-storeN-value" (func 48))
  (export "as-unary-operand" (func 49))
  (export "as-binary-left" (func 50))
  (export "as-binary-right" (func 51))
  (export "as-test-operand" (func 52))
  (export "as-compare-left" (func 53))
  (export "as-compare-right" (func 54))
  (export "as-convert-operand" (func 55))
  (export "as-memory.grow-size" (func 56))
  (elem 0 (offset (i32.const 0)) 32)
)
(assert_return (invoke "type-local-i32") (i32.const 0))
(assert_return (invoke "type-local-i64") (i64.const 0))
(assert_return (invoke "type-local-f32") (f32.const 0))
(assert_return (invoke "type-local-f64") (f64.const 0))
(assert_return (invoke "type-param-i32" (i32.const 2)) (i32.const 10))
(assert_return (invoke "type-param-i64" (i64.const 3)) (i64.const 11))
(assert_return
  (invoke "type-param-f32" (f32.const 4.400_000_095_367_431_6))
  (f32.const 11.100_000_381_469_727)
)
(assert_return
  (invoke "type-param-f64" (f64.const 5.5))
  (f64.const 12.199_999_999_999_999)
)
(assert_return (invoke "as-block-first" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-block-mid" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-block-last" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-loop-first" (i32.const 0)) (i32.const 3))
(assert_return (invoke "as-loop-mid" (i32.const 0)) (i32.const 4))
(assert_return (invoke "as-loop-last" (i32.const 0)) (i32.const 5))
(assert_return (invoke "as-br-value" (i32.const 0)) (i32.const 9))
(assert_return (invoke "as-br_if-cond" (i32.const 0)))
(assert_return (invoke "as-br_if-value" (i32.const 0)) (i32.const 8))
(assert_return (invoke "as-br_if-value-cond" (i32.const 0)) (i32.const 6))
(assert_return (invoke "as-br_table-index" (i32.const 0)))
(assert_return (invoke "as-br_table-value" (i32.const 0)) (i32.const 10))
(assert_return (invoke "as-br_table-value-index" (i32.const 0)) (i32.const 6))
(assert_return (invoke "as-return-value" (i32.const 0)) (i32.const 7))
(assert_return (invoke "as-if-cond" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-if-then" (i32.const 1)) (i32.const 3))
(assert_return (invoke "as-if-else" (i32.const 0)) (i32.const 4))
(assert_return
  (invoke "as-select-first" (i32.const 0) (i32.const 1))
  (i32.const 5)
)
(assert_return
  (invoke "as-select-second" (i32.const 0) (i32.const 0))
  (i32.const 6)
)
(assert_return (invoke "as-select-cond" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-call-first" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-call-mid" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-call-last" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-call_indirect-first" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-call_indirect-mid" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-call_indirect-last" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-call_indirect-index" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-local.set-value"))
(assert_return (invoke "as-local.tee-value" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-global.set-value"))
(assert_return (invoke "as-load-address" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-loadN-address" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-store-address" (i32.const 0)))
(assert_return (invoke "as-store-value" (i32.const 0)))
(assert_return (invoke "as-storeN-address" (i32.const 0)))
(assert_return (invoke "as-storeN-value" (i32.const 0)))
(assert_return
  (invoke "as-unary-operand" (f32.const 0))
  (f32.const -nan:0xf1e2)
)
(assert_return (invoke "as-binary-left" (i32.const 0)) (i32.const 13))
(assert_return (invoke "as-binary-right" (i32.const 0)) (i32.const 6))
(assert_return (invoke "as-test-operand" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-compare-left" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-compare-right" (i32.const 0)) (i32.const 1))
(assert_return (invoke "as-convert-operand" (i64.const 0)) (i32.const 41))
(assert_return (invoke "as-memory.grow-size" (i32.const 0)) (i32.const 1))
(assert_return
  (invoke "type-mixed"
    (i64.const 1)
    (f32.const 2.200_000_047_683_715_8)
    (f64.const 3.299_999_999_999_999_8)
    (i32.const 4)
    (i32.const 5)
  )
)
(assert_return
  (invoke "write"
    (i64.const 1)
    (f32.const 2)
    (f64.const 3.299_999_999_999_999_8)
    (i32.const 4)
    (i32.const 5)
  )
  (i64.const 56)
)
(assert_return
  (invoke "result"
    (i64.const -1)
    (f32.const -2)
    (f64.const -3.299_999_999_999_999_8)
    (i32.const -4)
    (i32.const -5)
  )
  (f64.const 34.799_999_999_999_997)
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (local i32) (i32.const 0) (local.tee 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local f32) (f32.const 0) (local.tee 0) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local f64 i64) (i64.const 0) (local.tee 1) (f64.neg))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (local i32) (nop) (local.tee 0)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32) (f32.const 0) (local.tee 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local f32) (f64.const 0) (local.tee 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local f64 i64) (f64.const 0) (local.tee 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i64)))
    (func $0 (type 0) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f32)))
    (func $0 (type 0) (local.get 0) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64 i64)))
    (func $0 (type 0) (local.get 1) (f64.neg))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (param i32))) (func $0 (type 0) (nop) (local.tee 0)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (f32.const 0) (local.tee 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f32)))
    (func $0 (type 0) (f64.const 0) (local.tee 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64 i64)))
    (func $0 (type 0) (f64.const 0) (local.tee 1))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (param i32))) (func $0 (type 0) (local.tee 0) (drop)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (block (local.tee 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (loop (local.tee 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (then (local.tee 0) (drop)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (result i32) (then (i32.const 0)) (else (local.tee 0)))
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (block (local.tee 0) (br 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0
      (type 0)
      (i32.const 0)
      (block (local.tee 0) (i32.const 1) (br_if 0) (drop))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (block (local.tee 0) (br_table 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (local.tee 0) (return) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (local.tee 0) (i32.const 1) (i32.const 2) (select) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func (param i32) (result i32)))
    (func $0 (type 0) (local.tee 0) (call 1) (drop))
    (func $1 (type 1) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (type $1 (func (param i32)))
    (table $0 1 1 funcref)
    (func $0 (type 0) (local.get 0))
    (func $1
      (type 1)
      (block
        (result i32)
        (local.tee 0)
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
    (type $0 (func (param i32)))
    (func $0 (type 0) (local.tee 0) (local.set 0) (local.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (local.tee 0) (local.tee 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (local.tee 0) (global.set 0) (global.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (memory $0 0)
    (func $0 (type 0) (local.tee 0) (memory.grow) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (memory $0 0)
    (func $0 (type 0) (local.tee 0) (i32.load) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (memory $0 1)
    (func $0 (type 0) (local.tee 0) (i32.const 1) (i32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (local i32 i64) (local.get 3)))
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32 i64) (local.get 14_324_343))
  )
  "unknown local"
)
(assert_invalid
  (module (type $0 (func (param i32 i64))) (func $0 (type 0) (local.get 2)))
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32 i64) (local.get 714_324_343))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (local i32 i64) (local.get 3))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func (param i64)))
    (func $0 (type 0) (local i32 i64) (local.get 214_324_343))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func (param f32)))
    (func $0 (type 0) (local i32) (f32.const 0) (local.tee 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64 i32)))
    (func $0 (type 0) (local f32) (f32.const 0) (local.tee 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64)))
    (func $0 (type 0) (local f64 i64) (i64.const 0) (local.tee 1))
  )
  "type mismatch"
)
