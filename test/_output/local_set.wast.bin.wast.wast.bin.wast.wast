(module
  (type $0 (func))
  (type $1 (func (param i32)))
  (type $2 (func (param i64)))
  (type $3 (func (param f32)))
  (type $4 (func (param f64)))
  (type $5 (func (param i64 f32 f64 i32 i32)))
  (type $6 (func (param i64 f32 f64 i32 i32) (result i64)))
  (func $0 (type 0) (local i32) (i32.const 0) (local.set 0))
  (func $1 (type 0) (local i64) (i64.const 0) (local.set 0))
  (func $2 (type 0) (local f32) (f32.const 0) (local.set 0))
  (func $3 (type 0) (local f64) (f64.const 0) (local.set 0))
  (func $4 (type 1) (i32.const 10) (local.set 0))
  (func $5 (type 2) (i64.const 11) (local.set 0))
  (func $6 (type 3) (f32.const 11.100_000_381_469_727) (local.set 0))
  (func $7 (type 4) (f64.const 12.199_999_999_999_999) (local.set 0))
  (func $8
    (type 5)
    (local f32 i64 i64 f64)
    (i64.const 0)
    (local.set 0)
    (f32.const 0)
    (local.set 1)
    (f64.const 0)
    (local.set 2)
    (i32.const 0)
    (local.set 3)
    (i32.const 0)
    (local.set 4)
    (f32.const 0)
    (local.set 5)
    (i64.const 0)
    (local.set 6)
    (i64.const 0)
    (local.set 7)
    (f64.const 0)
    (local.set 8)
  )
  (func $9
    (type 6)
    (local f32 i64 i64 f64)
    (f32.const -0.300_000_011_920_928_96)
    (local.set 1)
    (i32.const 40)
    (local.set 3)
    (i32.const -7)
    (local.set 4)
    (f32.const 5.5)
    (local.set 5)
    (i64.const 6)
    (local.set 6)
    (f64.const 8)
    (local.set 8)
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
  (func $10 (type 1) (block (i32.const 1) (local.set 0)))
  (func $11 (type 1) (loop (i32.const 3) (local.set 0)))
  (func $12 (type 1) (block (i32.const 9) (local.set 0) (br 0)))
  (func $13
    (type 1)
    (block (i32.const 8) (local.set 0) (i32.const 1) (br_if 0))
  )
  (func $14
    (type 1)
    (block (i32.const 6) (i32.const 9) (local.set 0) (br_if 0))
  )
  (func $15
    (type 1)
    (block (i32.const 10) (local.set 0) (i32.const 1) (br_table 0))
  )
  (func $16 (type 1) (i32.const 7) (local.set 0) (return))
  (func $17
    (type 1)
    (local.get 0)
    (if (then (i32.const 3) (local.set 0)) (else))
  )
  (func $18
    (type 1)
    (local.get 0)
    (if (then) (else (i32.const 1) (local.set 0)))
  )
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
  (export "as-block-value" (func 10))
  (export "as-loop-value" (func 11))
  (export "as-br-value" (func 12))
  (export "as-br_if-value" (func 13))
  (export "as-br_if-value-cond" (func 14))
  (export "as-br_table-value" (func 15))
  (export "as-return-value" (func 16))
  (export "as-if-then" (func 17))
  (export "as-if-else" (func 18))
)
(assert_return (invoke "type-local-i32"))
(assert_return (invoke "type-local-i64"))
(assert_return (invoke "type-local-f32"))
(assert_return (invoke "type-local-f64"))
(assert_return (invoke "type-param-i32" (i32.const 2)))
(assert_return (invoke "type-param-i64" (i64.const 3)))
(assert_return (invoke "type-param-f32" (f32.const 4.400_000_095_367_431_6)))
(assert_return (invoke "type-param-f64" (f64.const 5.5)))
(assert_return (invoke "as-block-value" (i32.const 0)))
(assert_return (invoke "as-loop-value" (i32.const 0)))
(assert_return (invoke "as-br-value" (i32.const 0)))
(assert_return (invoke "as-br_if-value" (i32.const 0)))
(assert_return (invoke "as-br_if-value-cond" (i32.const 0)))
(assert_return (invoke "as-br_table-value" (i32.const 0)))
(assert_return (invoke "as-return-value" (i32.const 0)))
(assert_return (invoke "as-if-then" (i32.const 1)))
(assert_return (invoke "as-if-else" (i32.const 0)))
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
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (local i32) (nop) (local.set 0)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32) (f32.const 0) (local.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local f32) (f64.const 0) (local.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local f64 i64) (f64.const 0) (local.set 1))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (param i32))) (func $0 (type 0) (nop) (local.set 0)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (f32.const 0) (local.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f32)))
    (func $0 (type 0) (f64.const 0) (local.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64 i64)))
    (func $0 (type 0) (f64.const 0) (local.set 1))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (param i32))) (func $0 (type 0) (local.set 0)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (block (local.set 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (loop (local.set 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 1)
      (if (then (local.set 0)) (else))
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
      (if (result i32) (then (i32.const 0)) (else (local.set 0)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (block (local.set 0) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (block (local.set 0) (br_if 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (i32.const 0) (block (local.set 0) (br_table 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (local.set 0) (return))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (local.set 0) (i32.const 1) (i32.const 2) (select))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func (param i32) (result i32)))
    (func $0 (type 0) (local.set 0) (call 1))
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
      (block (result i32) (local.set 0) (i32.const 0) (call_indirect (type 0)))
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f32)))
    (func $0 (type 0) (local i32) (f32.const 0) (local.set 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64 i32)))
    (func $0 (type 0) (local f32) (f32.const 0) (local.set 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64)))
    (func $0 (type 0) (local f64 i64) (i64.const 0) (local.set 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (func $0 (type 0) (i32.const 1) (local.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i64) (result i64)))
    (func $0 (type 0) (i64.const 1) (local.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f32) (result f32)))
    (func $0 (type 0) (f32.const 1) (local.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64) (result f64)))
    (func $0 (type 0) (f64.const 1) (local.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32 i64) (i32.const 0) (local.set 3))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32 i64) (i32.const 0) (local.set 14_324_343))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func (param i32 i64)))
    (func $0 (type 0) (i32.const 0) (local.set 2))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func (param i32 i64)))
    (func $0 (type 0) (i32.const 0) (local.set 714_324_343))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (func $0 (type 0) (local i32 i64) (i32.const 0) (local.set 3))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func (param i64)))
    (func $0 (type 0) (local i32 i64) (i32.const 0) (local.set 214_324_343))
  )
  "unknown local"
)
