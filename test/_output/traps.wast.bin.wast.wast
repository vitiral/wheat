(module
  (type $0 (func (param i32 i32)))
  (type $1 (func (param i64 i64)))
  (func $0 (type 0) (local.get 0) (local.get 1) (i32.div_s) (drop))
  (func $1 (type 0) (local.get 0) (local.get 1) (i32.div_u) (drop))
  (func $2 (type 1) (local.get 0) (local.get 1) (i64.div_s) (drop))
  (func $3 (type 1) (local.get 0) (local.get 1) (i64.div_u) (drop))
  (export "no_dce.i32.div_s" (func 0))
  (export "no_dce.i32.div_u" (func 1))
  (export "no_dce.i64.div_s" (func 2))
  (export "no_dce.i64.div_u" (func 3))
)
(assert_trap
  (invoke "no_dce.i32.div_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i32.div_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i64.div_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i64.div_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i32.div_s" (i32.const -2_147_483_648) (i32.const -1))
  "integer overflow"
)
(assert_trap
  (invoke "no_dce.i64.div_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -1)
  )
  "integer overflow"
)
(module
  (type $0 (func (param i32 i32)))
  (type $1 (func (param i64 i64)))
  (func $0 (type 0) (local.get 0) (local.get 1) (i32.rem_s) (drop))
  (func $1 (type 0) (local.get 0) (local.get 1) (i32.rem_u) (drop))
  (func $2 (type 1) (local.get 0) (local.get 1) (i64.rem_s) (drop))
  (func $3 (type 1) (local.get 0) (local.get 1) (i64.rem_u) (drop))
  (export "no_dce.i32.rem_s" (func 0))
  (export "no_dce.i32.rem_u" (func 1))
  (export "no_dce.i64.rem_s" (func 2))
  (export "no_dce.i64.rem_u" (func 3))
)
(assert_trap
  (invoke "no_dce.i32.rem_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i32.rem_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i64.rem_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "no_dce.i64.rem_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(module
  (type $0 (func (param f32)))
  (type $1 (func (param f64)))
  (func $0 (type 0) (local.get 0) (i32.trunc_f32_s) (drop))
  (func $1 (type 0) (local.get 0) (i32.trunc_f32_u) (drop))
  (func $2 (type 1) (local.get 0) (i32.trunc_f64_s) (drop))
  (func $3 (type 1) (local.get 0) (i32.trunc_f64_u) (drop))
  (func $4 (type 0) (local.get 0) (i64.trunc_f32_s) (drop))
  (func $5 (type 0) (local.get 0) (i64.trunc_f32_u) (drop))
  (func $6 (type 1) (local.get 0) (i64.trunc_f64_s) (drop))
  (func $7 (type 1) (local.get 0) (i64.trunc_f64_u) (drop))
  (export "no_dce.i32.trunc_f32_s" (func 0))
  (export "no_dce.i32.trunc_f32_u" (func 1))
  (export "no_dce.i32.trunc_f64_s" (func 2))
  (export "no_dce.i32.trunc_f64_u" (func 3))
  (export "no_dce.i64.trunc_f32_s" (func 4))
  (export "no_dce.i64.trunc_f32_u" (func 5))
  (export "no_dce.i64.trunc_f64_s" (func 6))
  (export "no_dce.i64.trunc_f64_u" (func 7))
)
(assert_trap
  (invoke "no_dce.i32.trunc_f32_s" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i32.trunc_f32_u" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i32.trunc_f64_s" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i32.trunc_f64_u" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i64.trunc_f32_s" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i64.trunc_f32_u" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i64.trunc_f64_s" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "no_dce.i64.trunc_f64_u" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(module
  (type $0 (func (param i32)))
  (memory $0 1)
  (func $0 (type 0) (local.get 0) (i32.load) (drop))
  (func $1 (type 0) (local.get 0) (i32.load16_s) (drop))
  (func $2 (type 0) (local.get 0) (i32.load16_u) (drop))
  (func $3 (type 0) (local.get 0) (i32.load8_s) (drop))
  (func $4 (type 0) (local.get 0) (i32.load8_u) (drop))
  (func $5 (type 0) (local.get 0) (i64.load) (drop))
  (func $6 (type 0) (local.get 0) (i64.load32_s) (drop))
  (func $7 (type 0) (local.get 0) (i64.load32_u) (drop))
  (func $8 (type 0) (local.get 0) (i64.load16_s) (drop))
  (func $9 (type 0) (local.get 0) (i64.load16_u) (drop))
  (func $10 (type 0) (local.get 0) (i64.load8_s) (drop))
  (func $11 (type 0) (local.get 0) (i64.load8_u) (drop))
  (func $12 (type 0) (local.get 0) (f32.load) (drop))
  (func $13 (type 0) (local.get 0) (f64.load) (drop))
  (export "no_dce.i32.load" (func 0))
  (export "no_dce.i32.load16_s" (func 1))
  (export "no_dce.i32.load16_u" (func 2))
  (export "no_dce.i32.load8_s" (func 3))
  (export "no_dce.i32.load8_u" (func 4))
  (export "no_dce.i64.load" (func 5))
  (export "no_dce.i64.load32_s" (func 6))
  (export "no_dce.i64.load32_u" (func 7))
  (export "no_dce.i64.load16_s" (func 8))
  (export "no_dce.i64.load16_u" (func 9))
  (export "no_dce.i64.load8_s" (func 10))
  (export "no_dce.i64.load8_u" (func 11))
  (export "no_dce.f32.load" (func 12))
  (export "no_dce.f64.load" (func 13))
)
(assert_trap
  (invoke "no_dce.i32.load" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load16_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load16_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load8_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load8_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load32_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load32_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load16_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load16_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load8_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load8_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.f32.load" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.f64.load" (i32.const 65_536))
  "out of bounds memory access"
)
