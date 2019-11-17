(module
  (type $0 (func (result i32)))
  (type $1 (func (result i64)))
  (func $0 (type 0) (i32.const 195_940_365) (return))
  (func $1 (type 0) (i32.const -1) (return))
  (func $2 (type 0) (i32.const 2_147_483_647) (return))
  (func $3 (type 0) (i32.const -2_147_483_647) (return))
  (func $4 (type 0) (i32.const -2_147_483_648) (return))
  (func $5 (type 0) (i32.const -2_147_483_648) (return))
  (func $6 (type 0) (i32.const -2_147_483_648) (i32.const 1) (i32.add) (return))
  (func $7 (type 0) (i32.const 0) (return))
  (func $8 (type 0) (i32.const 10) (return))
  (func $9 (type 0) (i32.const -1) (return))
  (func $10 (type 0) (i32.const 42) (return))
  (func $11 (type 1) (i64.const 913_028_331_277_281_902) (return))
  (func $12 (type 1) (i64.const -1) (return))
  (func $13 (type 1) (i64.const 9_223_372_036_854_775_807) (return))
  (func $14 (type 1) (i64.const -9_223_372_036_854_775_807) (return))
  (func $15 (type 1) (i64.const -9_223_372_036_854_775_808) (return))
  (func $16 (type 1) (i64.const -9_223_372_036_854_775_808) (return))
  (func $17
    (type 1)
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 1)
    (i64.add)
    (return)
  )
  (func $18 (type 1) (i64.const 0) (return))
  (func $19 (type 1) (i64.const 10) (return))
  (func $20 (type 1) (i64.const -1) (return))
  (func $21 (type 1) (i64.const 42) (return))
  (func $22 (type 0) (i32.const 1_000_000))
  (func $23 (type 0) (i32.const 1_000))
  (func $24 (type 0) (i32.const 168_755_353))
  (func $25 (type 0) (i32.const 109_071))
  (func $26 (type 1) (i64.const 1_000_000))
  (func $27 (type 1) (i64.const 1_000))
  (func $28 (type 1) (i64.const 3_078_696_982_321_561))
  (func $29 (type 1) (i64.const 109_071))
  (export "i32.test" (func 0))
  (export "i32.umax" (func 1))
  (export "i32.smax" (func 2))
  (export "i32.neg_smax" (func 3))
  (export "i32.smin" (func 4))
  (export "i32.alt_smin" (func 5))
  (export "i32.inc_smin" (func 6))
  (export "i32.neg_zero" (func 7))
  (export "i32.not_octal" (func 8))
  (export "i32.unsigned_decimal" (func 9))
  (export "i32.plus_sign" (func 10))
  (export "i64.test" (func 11))
  (export "i64.umax" (func 12))
  (export "i64.smax" (func 13))
  (export "i64.neg_smax" (func 14))
  (export "i64.smin" (func 15))
  (export "i64.alt_smin" (func 16))
  (export "i64.inc_smin" (func 17))
  (export "i64.neg_zero" (func 18))
  (export "i64.not_octal" (func 19))
  (export "i64.unsigned_decimal" (func 20))
  (export "i64.plus_sign" (func 21))
  (export "i32-dec-sep1" (func 22))
  (export "i32-dec-sep2" (func 23))
  (export "i32-hex-sep1" (func 24))
  (export "i32-hex-sep2" (func 25))
  (export "i64-dec-sep1" (func 26))
  (export "i64-dec-sep2" (func 27))
  (export "i64-hex-sep1" (func 28))
  (export "i64-hex-sep2" (func 29))
)
(assert_return (invoke "i32.test") (i32.const 195_940_365))
(assert_return (invoke "i32.umax") (i32.const -1))
(assert_return (invoke "i32.smax") (i32.const 2_147_483_647))
(assert_return (invoke "i32.neg_smax") (i32.const -2_147_483_647))
(assert_return (invoke "i32.smin") (i32.const -2_147_483_648))
(assert_return (invoke "i32.alt_smin") (i32.const -2_147_483_648))
(assert_return (invoke "i32.inc_smin") (i32.const -2_147_483_647))
(assert_return (invoke "i32.neg_zero") (i32.const 0))
(assert_return (invoke "i32.not_octal") (i32.const 10))
(assert_return (invoke "i32.unsigned_decimal") (i32.const -1))
(assert_return (invoke "i32.plus_sign") (i32.const 42))
(assert_return (invoke "i64.test") (i64.const 913_028_331_277_281_902))
(assert_return (invoke "i64.umax") (i64.const -1))
(assert_return (invoke "i64.smax") (i64.const 9_223_372_036_854_775_807))
(assert_return (invoke "i64.neg_smax") (i64.const -9_223_372_036_854_775_807))
(assert_return (invoke "i64.smin") (i64.const -9_223_372_036_854_775_808))
(assert_return (invoke "i64.alt_smin") (i64.const -9_223_372_036_854_775_808))
(assert_return (invoke "i64.inc_smin") (i64.const -9_223_372_036_854_775_807))
(assert_return (invoke "i64.neg_zero") (i64.const 0))
(assert_return (invoke "i64.not_octal") (i64.const 10))
(assert_return (invoke "i64.unsigned_decimal") (i64.const -1))
(assert_return (invoke "i64.plus_sign") (i64.const 42))
(assert_return (invoke "i32-dec-sep1") (i32.const 1_000_000))
(assert_return (invoke "i32-dec-sep2") (i32.const 1_000))
(assert_return (invoke "i32-hex-sep1") (i32.const 168_755_353))
(assert_return (invoke "i32-hex-sep2") (i32.const 109_071))
(assert_return (invoke "i64-dec-sep1") (i64.const 1_000_000))
(assert_return (invoke "i64-dec-sep2") (i64.const 1_000))
(assert_return (invoke "i64-hex-sep1") (i64.const 3_078_696_982_321_561))
(assert_return (invoke "i64-hex-sep2") (i64.const 109_071))
(assert_malformed
  (module quote "(global i32 (i32.const _100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const +_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const -_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const 99_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const 1__000))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const _0x100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const 0_x100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const 0x_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const 0x00_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i32 (i32.const 0xff__ffff))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const _100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const +_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const -_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const 99_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const 1__000))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const _0x100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const 0_x100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const 0x_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const 0x00_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global i64 (i64.const 0xff__ffff))")
  "unknown operator"
)
