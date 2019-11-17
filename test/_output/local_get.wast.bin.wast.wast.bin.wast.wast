(module
  (type $0 (func (result i32)))
  (type $1 (func (result i64)))
  (type $2 (func (result f32)))
  (type $3 (func (result f64)))
  (type $4 (func (param i32) (result i32)))
  (type $5 (func (param i64) (result i64)))
  (type $6 (func (param f32) (result f32)))
  (type $7 (func (param f64) (result f64)))
  (type $8 (func (param i64 f32 f64 i32 i32)))
  (type $9 (func (param i64 f32 f64 i32 i32) (result f64)))
  (func $0 (type 0) (local i32) (local.get 0))
  (func $1 (type 1) (local i64) (local.get 0))
  (func $2 (type 2) (local f32) (local.get 0))
  (func $3 (type 3) (local f64) (local.get 0))
  (func $4 (type 4) (local.get 0))
  (func $5 (type 5) (local.get 0))
  (func $6 (type 6) (local.get 0))
  (func $7 (type 7) (local.get 0))
  (func $8
    (type 8)
    (local f32 i64 i64 f64)
    (local.get 0)
    (i64.eqz)
    (drop)
    (local.get 1)
    (f32.neg)
    (drop)
    (local.get 2)
    (f64.neg)
    (drop)
    (local.get 3)
    (i32.eqz)
    (drop)
    (local.get 4)
    (i32.eqz)
    (drop)
    (local.get 5)
    (f32.neg)
    (drop)
    (local.get 6)
    (i64.eqz)
    (drop)
    (local.get 7)
    (i64.eqz)
    (drop)
    (local.get 8)
    (f64.neg)
    (drop)
  )
  (func $9
    (type 9)
    (local f32 i64 i64 f64)
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
  )
  (func $10 (type 4) (block (result i32) (local.get 0)))
  (func $11 (type 4) (loop (result i32) (local.get 0)))
  (func $12 (type 4) (block (result i32) (local.get 0) (br 0)))
  (func $13 (type 4) (block (result i32) (local.get 0) (i32.const 1) (br_if 0)))
  (func $14 (type 4) (block (result i32) (local.get 0) (local.get 0) (br_if 0)))
  (func $15
    (type 4)
    (block
      (block
        (block (local.get 0) (br_table 0 1 2) (i32.const 0) (return))
        (i32.const 1)
        (return)
      )
      (i32.const 2)
      (return)
    )
    (i32.const 3)
  )
  (func $16 (type 4) (local.get 0) (return))
  (func $17
    (type 4)
    (local.get 0)
    (if (result i32) (then (local.get 0)) (else (i32.const 0)))
  )
  (func $18
    (type 4)
    (local.get 0)
    (if (result i32) (then (i32.const 1)) (else (local.get 0)))
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
  (export "read" (func 9))
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
(assert_return (invoke "type-local-i32") (i32.const 0))
(assert_return (invoke "type-local-i64") (i64.const 0))
(assert_return (invoke "type-local-f32") (f32.const 0))
(assert_return (invoke "type-local-f64") (f64.const 0))
(assert_return (invoke "type-param-i32" (i32.const 2)) (i32.const 2))
(assert_return (invoke "type-param-i64" (i64.const 3)) (i64.const 3))
(assert_return
  (invoke "type-param-f32" (f32.const 4.400_000_095_367_431_6))
  (f32.const 4.400_000_095_367_431_6)
)
(assert_return (invoke "type-param-f64" (f64.const 5.5)) (f64.const 5.5))
(assert_return (invoke "as-block-value" (i32.const 6)) (i32.const 6))
(assert_return (invoke "as-loop-value" (i32.const 7)) (i32.const 7))
(assert_return (invoke "as-br-value" (i32.const 8)) (i32.const 8))
(assert_return (invoke "as-br_if-value" (i32.const 9)) (i32.const 9))
(assert_return (invoke "as-br_if-value-cond" (i32.const 10)) (i32.const 10))
(assert_return (invoke "as-br_table-value" (i32.const 1)) (i32.const 2))
(assert_return (invoke "as-return-value" (i32.const 0)) (i32.const 0))
(assert_return (invoke "as-if-then" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-if-else" (i32.const 0)) (i32.const 0))
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
  (invoke "read"
    (i64.const 1)
    (f32.const 2)
    (f64.const 3.299_999_999_999_999_8)
    (i32.const 4)
    (i32.const 5)
  )
  (f64.const 34.799_999_999_999_997)
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (local i32) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (local f32) (local.get 0) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (local f64 i64) (local.get 1) (f64.neg))
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
    (type $0 (func (param f32) (result i32)))
    (func $0 (type 0) (local.get 0) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64 i64) (result f64)))
    (func $0 (type 0) (local.get 1) (f64.neg))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (local i32) (local.get 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (local i64) (local.get 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (local f32) (local.get 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (local f64) (local.get 0)))
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
    (type $0 (func (param i32 i64)))
    (func $0 (type 0) (local.get 714_324_343))
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
