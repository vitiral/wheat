(module
  (type $0 (func (result i32)))
  (type $1 (func (param i32 i32)))
  (type $2 (func (param i32) (result i32)))
  (memory $0 1)
  (func $0 (type 0) (memory.size) (i32.const 65_536) (i32.mul))
  (func $1 (type 1) (call 0) (local.get 0) (i32.add) (local.get 1) (i32.store))
  (func $2 (type 2) (call 0) (local.get 0) (i32.add) (i32.load))
  (func $3 (type 2) (local.get 0) (memory.grow))
  (export "store" (func 1))
  (export "load" (func 2))
  (export "memory.grow" (func 3))
)
(assert_return (invoke "store" (i32.const -4) (i32.const 42)))
(assert_return (invoke "load" (i32.const -4)) (i32.const 42))
(assert_trap
  (invoke "store" (i32.const -3) (i32.const 13))
  "out of bounds memory access"
)
(assert_trap (invoke "load" (i32.const -3)) "out of bounds memory access")
(assert_trap
  (invoke "store" (i32.const -2) (i32.const 13))
  "out of bounds memory access"
)
(assert_trap (invoke "load" (i32.const -2)) "out of bounds memory access")
(assert_trap
  (invoke "store" (i32.const -1) (i32.const 13))
  "out of bounds memory access"
)
(assert_trap (invoke "load" (i32.const -1)) "out of bounds memory access")
(assert_trap
  (invoke "store" (i32.const 0) (i32.const 13))
  "out of bounds memory access"
)
(assert_trap (invoke "load" (i32.const 0)) "out of bounds memory access")
(assert_trap
  (invoke "store" (i32.const -2_147_483_648) (i32.const 13))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i32.const -2_147_483_648))
  "out of bounds memory access"
)
(assert_return (invoke "memory.grow" (i32.const 65_537)) (i32.const -1))
(module
  (type $0 (func (param i32) (result i32)))
  (type $1 (func (param i32) (result i64)))
  (type $2 (func (param i32) (result f32)))
  (type $3 (func (param i32) (result f64)))
  (type $4 (func (param i32 i32)))
  (type $5 (func (param i32 i64)))
  (type $6 (func (param i32 f32)))
  (type $7 (func (param i32 f64)))
  (memory $0 1)
  (func $0 (type 0) (local.get 0) (i32.load))
  (func $1 (type 1) (local.get 0) (i64.load))
  (func $2 (type 2) (local.get 0) (f32.load))
  (func $3 (type 3) (local.get 0) (f64.load))
  (func $4 (type 0) (local.get 0) (i32.load8_s))
  (func $5 (type 0) (local.get 0) (i32.load8_u))
  (func $6 (type 0) (local.get 0) (i32.load16_s))
  (func $7 (type 0) (local.get 0) (i32.load16_u))
  (func $8 (type 1) (local.get 0) (i64.load8_s))
  (func $9 (type 1) (local.get 0) (i64.load8_u))
  (func $10 (type 1) (local.get 0) (i64.load16_s))
  (func $11 (type 1) (local.get 0) (i64.load16_u))
  (func $12 (type 1) (local.get 0) (i64.load32_s))
  (func $13 (type 1) (local.get 0) (i64.load32_u))
  (func $14 (type 4) (local.get 0) (local.get 1) (i32.store))
  (func $15 (type 5) (local.get 0) (local.get 1) (i64.store))
  (func $16 (type 6) (local.get 0) (local.get 1) (f32.store))
  (func $17 (type 7) (local.get 0) (local.get 1) (f64.store))
  (func $18 (type 4) (local.get 0) (local.get 1) (i32.store8))
  (func $19 (type 4) (local.get 0) (local.get 1) (i32.store16))
  (func $20 (type 5) (local.get 0) (local.get 1) (i64.store8))
  (func $21 (type 5) (local.get 0) (local.get 1) (i64.store16))
  (func $22 (type 5) (local.get 0) (local.get 1) (i64.store32))
  (export "i32.load" (func 0))
  (export "i64.load" (func 1))
  (export "f32.load" (func 2))
  (export "f64.load" (func 3))
  (export "i32.load8_s" (func 4))
  (export "i32.load8_u" (func 5))
  (export "i32.load16_s" (func 6))
  (export "i32.load16_u" (func 7))
  (export "i64.load8_s" (func 8))
  (export "i64.load8_u" (func 9))
  (export "i64.load16_s" (func 10))
  (export "i64.load16_u" (func 11))
  (export "i64.load32_s" (func 12))
  (export "i64.load32_u" (func 13))
  (export "i32.store" (func 14))
  (export "i64.store" (func 15))
  (export "f32.store" (func 16))
  (export "f64.store" (func 17))
  (export "i32.store8" (func 18))
  (export "i32.store16" (func 19))
  (export "i64.store8" (func 20))
  (export "i64.store16" (func 21))
  (export "i64.store32" (func 22))
  (data 0 (offset (i32.const 0)) "\61\62\63\64\65\66\67\68")
  (data 0 (offset (i32.const 65_528)) "\61\62\63\64\65\66\67\68")
)
(assert_trap
  (invoke "i32.store" (i32.const 65_536) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 65_535) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 65_534) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 65_533) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const -1) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const -2) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const -3) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const -4) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 65_536) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 65_535) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 65_534) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 65_533) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 65_532) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 65_531) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 65_530) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 65_529) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const -1) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const -2) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const -3) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const -4) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const -5) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const -6) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const -7) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const -8) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 65_536) (f32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 65_535) (f32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 65_534) (f32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 65_533) (f32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const -1) (f32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const -2) (f32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const -3) (f32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const -4) (f32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 65_536) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 65_535) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 65_534) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 65_533) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 65_532) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 65_531) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 65_530) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 65_529) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const -1) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const -2) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const -3) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const -4) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const -5) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const -6) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const -7) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const -8) (f64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store8" (i32.const 65_536) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store8" (i32.const -1) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store16" (i32.const 65_536) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store16" (i32.const 65_535) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store16" (i32.const -1) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store16" (i32.const -2) (i32.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store8" (i32.const 65_536) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store8" (i32.const -1) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store16" (i32.const 65_536) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store16" (i32.const 65_535) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store16" (i32.const -1) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store16" (i32.const -2) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 65_536) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 65_535) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 65_534) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 65_533) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const -1) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const -2) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const -3) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const -4) (i64.const 0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 65_534))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 65_533))
  "out of bounds memory access"
)
(assert_trap (invoke "i32.load" (i32.const -1)) "out of bounds memory access")
(assert_trap (invoke "i32.load" (i32.const -2)) "out of bounds memory access")
(assert_trap (invoke "i32.load" (i32.const -3)) "out of bounds memory access")
(assert_trap (invoke "i32.load" (i32.const -4)) "out of bounds memory access")
(assert_trap
  (invoke "i64.load" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 65_534))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 65_533))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 65_532))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 65_531))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 65_530))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 65_529))
  "out of bounds memory access"
)
(assert_trap (invoke "i64.load" (i32.const -1)) "out of bounds memory access")
(assert_trap (invoke "i64.load" (i32.const -2)) "out of bounds memory access")
(assert_trap (invoke "i64.load" (i32.const -3)) "out of bounds memory access")
(assert_trap (invoke "i64.load" (i32.const -4)) "out of bounds memory access")
(assert_trap (invoke "i64.load" (i32.const -5)) "out of bounds memory access")
(assert_trap (invoke "i64.load" (i32.const -6)) "out of bounds memory access")
(assert_trap (invoke "i64.load" (i32.const -7)) "out of bounds memory access")
(assert_trap (invoke "i64.load" (i32.const -8)) "out of bounds memory access")
(assert_trap
  (invoke "f32.load" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 65_534))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 65_533))
  "out of bounds memory access"
)
(assert_trap (invoke "f32.load" (i32.const -1)) "out of bounds memory access")
(assert_trap (invoke "f32.load" (i32.const -2)) "out of bounds memory access")
(assert_trap (invoke "f32.load" (i32.const -3)) "out of bounds memory access")
(assert_trap (invoke "f32.load" (i32.const -4)) "out of bounds memory access")
(assert_trap
  (invoke "f64.load" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 65_534))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 65_533))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 65_532))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 65_531))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 65_530))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 65_529))
  "out of bounds memory access"
)
(assert_trap (invoke "f64.load" (i32.const -1)) "out of bounds memory access")
(assert_trap (invoke "f64.load" (i32.const -2)) "out of bounds memory access")
(assert_trap (invoke "f64.load" (i32.const -3)) "out of bounds memory access")
(assert_trap (invoke "f64.load" (i32.const -4)) "out of bounds memory access")
(assert_trap (invoke "f64.load" (i32.const -5)) "out of bounds memory access")
(assert_trap (invoke "f64.load" (i32.const -6)) "out of bounds memory access")
(assert_trap (invoke "f64.load" (i32.const -7)) "out of bounds memory access")
(assert_trap (invoke "f64.load" (i32.const -8)) "out of bounds memory access")
(assert_trap
  (invoke "i32.load8_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load8_s" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load8_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load8_u" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_s" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_s" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_s" (i32.const -2))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_u" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_u" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_u" (i32.const -2))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load8_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load8_s" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load8_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load8_u" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_s" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_s" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_s" (i32.const -2))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_u" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_u" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_u" (i32.const -2))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 65_534))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 65_533))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const -2))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const -3))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const -4))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 65_536))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 65_535))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 65_534))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 65_533))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const -1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const -2))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const -3))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const -4))
  "out of bounds memory access"
)
(assert_return
  (invoke "i64.load" (i32.const 65_528))
  (i64.const 7_523_094_288_207_667_809)
)
(assert_return
  (invoke "i64.load" (i32.const 0))
  (i64.const 7_523_094_288_207_667_809)
)
