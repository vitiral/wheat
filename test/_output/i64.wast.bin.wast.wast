(module
  (type $0 (func (param i64 i64) (result i64)))
  (type $1 (func (param i64) (result i64)))
  (type $2 (func (param i64) (result i32)))
  (type $3 (func (param i64 i64) (result i32)))
  (func $0 (type 0) (local.get 0) (local.get 1) (i64.add))
  (func $1 (type 0) (local.get 0) (local.get 1) (i64.sub))
  (func $2 (type 0) (local.get 0) (local.get 1) (i64.mul))
  (func $3 (type 0) (local.get 0) (local.get 1) (i64.div_s))
  (func $4 (type 0) (local.get 0) (local.get 1) (i64.div_u))
  (func $5 (type 0) (local.get 0) (local.get 1) (i64.rem_s))
  (func $6 (type 0) (local.get 0) (local.get 1) (i64.rem_u))
  (func $7 (type 0) (local.get 0) (local.get 1) (i64.and))
  (func $8 (type 0) (local.get 0) (local.get 1) (i64.or))
  (func $9 (type 0) (local.get 0) (local.get 1) (i64.xor))
  (func $10 (type 0) (local.get 0) (local.get 1) (i64.shl))
  (func $11 (type 0) (local.get 0) (local.get 1) (i64.shr_s))
  (func $12 (type 0) (local.get 0) (local.get 1) (i64.shr_u))
  (func $13 (type 0) (local.get 0) (local.get 1) (i64.rotl))
  (func $14 (type 0) (local.get 0) (local.get 1) (i64.rotr))
  (func $15 (type 1) (local.get 0) (i64.clz))
  (func $16 (type 1) (local.get 0) (i64.ctz))
  (func $17 (type 1) (local.get 0) (i64.popcnt))
  (func $18 (type 2) (local.get 0) (i64.eqz))
  (func $19 (type 3) (local.get 0) (local.get 1) (i64.eq))
  (func $20 (type 3) (local.get 0) (local.get 1) (i64.ne))
  (func $21 (type 3) (local.get 0) (local.get 1) (i64.lt_s))
  (func $22 (type 3) (local.get 0) (local.get 1) (i64.lt_u))
  (func $23 (type 3) (local.get 0) (local.get 1) (i64.le_s))
  (func $24 (type 3) (local.get 0) (local.get 1) (i64.le_u))
  (func $25 (type 3) (local.get 0) (local.get 1) (i64.gt_s))
  (func $26 (type 3) (local.get 0) (local.get 1) (i64.gt_u))
  (func $27 (type 3) (local.get 0) (local.get 1) (i64.ge_s))
  (func $28 (type 3) (local.get 0) (local.get 1) (i64.ge_u))
  (export "add" (func 0))
  (export "sub" (func 1))
  (export "mul" (func 2))
  (export "div_s" (func 3))
  (export "div_u" (func 4))
  (export "rem_s" (func 5))
  (export "rem_u" (func 6))
  (export "and" (func 7))
  (export "or" (func 8))
  (export "xor" (func 9))
  (export "shl" (func 10))
  (export "shr_s" (func 11))
  (export "shr_u" (func 12))
  (export "rotl" (func 13))
  (export "rotr" (func 14))
  (export "clz" (func 15))
  (export "ctz" (func 16))
  (export "popcnt" (func 17))
  (export "eqz" (func 18))
  (export "eq" (func 19))
  (export "ne" (func 20))
  (export "lt_s" (func 21))
  (export "lt_u" (func 22))
  (export "le_s" (func 23))
  (export "le_u" (func 24))
  (export "gt_s" (func 25))
  (export "gt_u" (func 26))
  (export "ge_s" (func 27))
  (export "ge_u" (func 28))
)
(assert_return (invoke "add" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "add" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "add" (i64.const -1) (i64.const -1)) (i64.const -2))
(assert_return (invoke "add" (i64.const -1) (i64.const 1)) (i64.const 0))
(assert_return
  (invoke "add" (i64.const 9_223_372_036_854_775_807) (i64.const 1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "add" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "add"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "add" (i64.const 1_073_741_823) (i64.const 1))
  (i64.const 1_073_741_824)
)
(assert_return (invoke "sub" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "sub" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "sub" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "sub" (i64.const 9_223_372_036_854_775_807) (i64.const -1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "sub" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "sub"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "sub" (i64.const 1_073_741_823) (i64.const -1))
  (i64.const 1_073_741_824)
)
(assert_return (invoke "mul" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "mul" (i64.const 1) (i64.const 0)) (i64.const 0))
(assert_return (invoke "mul" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "mul" (i64.const 1_152_921_504_606_846_976) (i64.const 4_096))
  (i64.const 0)
)
(assert_return
  (invoke "mul" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i64.const 0)
)
(assert_return
  (invoke "mul" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "mul" (i64.const 9_223_372_036_854_775_807) (i64.const -1))
  (i64.const -9_223_372_036_854_775_807)
)
(assert_return
  (invoke "mul"
    (i64.const 81_985_529_216_486_895)
    (i64.const -81_985_529_216_486_896)
  )
  (i64.const 2_465_395_958_572_223_728)
)
(assert_return
  (invoke "mul"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i64.const 1)
)
(assert_trap
  (invoke "div_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  "integer overflow"
)
(assert_trap
  (invoke "div_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_s" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "div_s" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "div_s" (i64.const 0) (i64.const -1)) (i64.const 0))
(assert_return (invoke "div_s" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "div_s" (i64.const -9_223_372_036_854_775_808) (i64.const 2))
  (i64.const -4_611_686_018_427_387_904)
)
(assert_return
  (invoke "div_s" (i64.const -9_223_372_036_854_775_807) (i64.const 1_000))
  (i64.const -9_223_372_036_854_775)
)
(assert_return (invoke "div_s" (i64.const 5) (i64.const 2)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const -5) (i64.const 2)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const 5) (i64.const -2)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const -5) (i64.const -2)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 7) (i64.const 3)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const -7) (i64.const 3)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const 7) (i64.const -3)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const -7) (i64.const -3)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 11) (i64.const 5)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 17) (i64.const 7)) (i64.const 2))
(assert_trap
  (invoke "div_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_u" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_u" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "div_u" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "div_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const 0)
)
(assert_return
  (invoke "div_u" (i64.const -9_223_372_036_854_775_808) (i64.const 2))
  (i64.const 4_611_686_018_427_387_904)
)
(assert_return
  (invoke "div_u"
    (i64.const -8_074_936_608_141_340_688)
    (i64.const 4_294_967_297)
  )
  (i64.const 2_414_874_607)
)
(assert_return
  (invoke "div_u" (i64.const -9_223_372_036_854_775_807) (i64.const 1_000))
  (i64.const 9_223_372_036_854_775)
)
(assert_return (invoke "div_u" (i64.const 5) (i64.const 2)) (i64.const 2))
(assert_return
  (invoke "div_u" (i64.const -5) (i64.const 2))
  (i64.const 9_223_372_036_854_775_805)
)
(assert_return (invoke "div_u" (i64.const 5) (i64.const -2)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const -5) (i64.const -2)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const 7) (i64.const 3)) (i64.const 2))
(assert_return (invoke "div_u" (i64.const 11) (i64.const 5)) (i64.const 2))
(assert_return (invoke "div_u" (i64.const 17) (i64.const 7)) (i64.const 2))
(assert_trap
  (invoke "rem_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_s" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return
  (invoke "rem_s" (i64.const 9_223_372_036_854_775_807) (i64.const -1))
  (i64.const 0)
)
(assert_return (invoke "rem_s" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const 0) (i64.const -1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "rem_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const 0)
)
(assert_return
  (invoke "rem_s" (i64.const -9_223_372_036_854_775_808) (i64.const 2))
  (i64.const 0)
)
(assert_return
  (invoke "rem_s" (i64.const -9_223_372_036_854_775_807) (i64.const 1_000))
  (i64.const -807)
)
(assert_return (invoke "rem_s" (i64.const 5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -5) (i64.const 2)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 5) (i64.const -2)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -5) (i64.const -2)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 7) (i64.const 3)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -7) (i64.const 3)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 7) (i64.const -3)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -7) (i64.const -3)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 11) (i64.const 5)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const 17) (i64.const 7)) (i64.const 3))
(assert_trap
  (invoke "rem_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_u" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return (invoke "rem_u" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_u" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_u" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "rem_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "rem_u" (i64.const -9_223_372_036_854_775_808) (i64.const 2))
  (i64.const 0)
)
(assert_return
  (invoke "rem_u"
    (i64.const -8_074_936_608_141_340_688)
    (i64.const 4_294_967_297)
  )
  (i64.const 2_147_483_649)
)
(assert_return
  (invoke "rem_u" (i64.const -9_223_372_036_854_775_807) (i64.const 1_000))
  (i64.const 809)
)
(assert_return (invoke "rem_u" (i64.const 5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const -5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 5) (i64.const -2)) (i64.const 5))
(assert_return (invoke "rem_u" (i64.const -5) (i64.const -2)) (i64.const -5))
(assert_return (invoke "rem_u" (i64.const 7) (i64.const 3)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 11) (i64.const 5)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 17) (i64.const 7)) (i64.const 3))
(assert_return (invoke "and" (i64.const 1) (i64.const 0)) (i64.const 0))
(assert_return (invoke "and" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "and" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "and" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "and"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "and" (i64.const 9_223_372_036_854_775_807) (i64.const -1))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "and" (i64.const 4_042_326_015) (i64.const 4_294_963_440))
  (i64.const 4_042_322_160)
)
(assert_return (invoke "and" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return (invoke "or" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "or" (i64.const 0) (i64.const 1)) (i64.const 1))
(assert_return (invoke "or" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "or" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "or"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const -1)
)
(assert_return
  (invoke "or" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "or" (i64.const 4_042_326_015) (i64.const 4_294_963_440))
  (i64.const 4_294_967_295)
)
(assert_return (invoke "or" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return (invoke "xor" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "xor" (i64.const 0) (i64.const 1)) (i64.const 1))
(assert_return (invoke "xor" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "xor" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "xor"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const -1)
)
(assert_return
  (invoke "xor" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "xor" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "xor" (i64.const -1) (i64.const 9_223_372_036_854_775_807))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "xor" (i64.const 4_042_326_015) (i64.const 4_294_963_440))
  (i64.const 252_645_135)
)
(assert_return (invoke "xor" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return (invoke "shl" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "shl" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return
  (invoke "shl" (i64.const 9_223_372_036_854_775_807) (i64.const 1))
  (i64.const -2)
)
(assert_return (invoke "shl" (i64.const -1) (i64.const 1)) (i64.const -2))
(assert_return
  (invoke "shl" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const 0)
)
(assert_return
  (invoke "shl" (i64.const 4_611_686_018_427_387_904) (i64.const 1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "shl" (i64.const 1) (i64.const 63))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return (invoke "shl" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shl" (i64.const 1) (i64.const 65)) (i64.const 2))
(assert_return
  (invoke "shl" (i64.const 1) (i64.const -1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "shl" (i64.const 1) (i64.const 9_223_372_036_854_775_807))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return
  (invoke "shr_s" (i64.const 9_223_372_036_854_775_807) (i64.const 1))
  (i64.const 4_611_686_018_427_387_903)
)
(assert_return
  (invoke "shr_s" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const -4_611_686_018_427_387_904)
)
(assert_return
  (invoke "shr_s" (i64.const 4_611_686_018_427_387_904) (i64.const 1))
  (i64.const 2_305_843_009_213_693_952)
)
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 65)) (i64.const 0))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "shr_s" (i64.const 1) (i64.const 9_223_372_036_854_775_807))
  (i64.const 0)
)
(assert_return
  (invoke "shr_s" (i64.const 1) (i64.const -9_223_372_036_854_775_808))
  (i64.const 1)
)
(assert_return
  (invoke "shr_s" (i64.const -9_223_372_036_854_775_808) (i64.const 63))
  (i64.const -1)
)
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 64)) (i64.const -1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 65)) (i64.const -1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return
  (invoke "shr_s" (i64.const -1) (i64.const 9_223_372_036_854_775_807))
  (i64.const -1)
)
(assert_return
  (invoke "shr_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i64.const -1)
)
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 1))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "shr_u" (i64.const 9_223_372_036_854_775_807) (i64.const 1))
  (i64.const 4_611_686_018_427_387_903)
)
(assert_return
  (invoke "shr_u" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const 4_611_686_018_427_387_904)
)
(assert_return
  (invoke "shr_u" (i64.const 4_611_686_018_427_387_904) (i64.const 1))
  (i64.const 2_305_843_009_213_693_952)
)
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 65)) (i64.const 0))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "shr_u" (i64.const 1) (i64.const 9_223_372_036_854_775_807))
  (i64.const 0)
)
(assert_return
  (invoke "shr_u" (i64.const 1) (i64.const -9_223_372_036_854_775_808))
  (i64.const 1)
)
(assert_return
  (invoke "shr_u" (i64.const -9_223_372_036_854_775_808) (i64.const 63))
  (i64.const 1)
)
(assert_return (invoke "shr_u" (i64.const -1) (i64.const 64)) (i64.const -1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 65))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return (invoke "shr_u" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 9_223_372_036_854_775_807))
  (i64.const 1)
)
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i64.const -1)
)
(assert_return (invoke "rotl" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "rotl" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "rotl" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return (invoke "rotl" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return
  (invoke "rotl" (i64.const -6_067_025_490_386_449_714) (i64.const 1))
  (i64.const 6_312_693_092_936_652_189)
)
(assert_return
  (invoke "rotl" (i64.const -144_115_184_384_868_352) (i64.const 4))
  (i64.const -2_305_842_950_157_893_617)
)
(assert_return
  (invoke "rotl" (i64.const -6_067_173_104_435_169_271) (i64.const 53))
  (i64.const 87_109_505_680_009_935)
)
(assert_return
  (invoke "rotl" (i64.const -6_066_028_401_059_725_156) (i64.const 63))
  (i64.const 6_190_357_836_324_913_230)
)
(assert_return
  (invoke "rotl" (i64.const -6_067_173_104_435_169_271) (i64.const 245))
  (i64.const 87_109_505_680_009_935)
)
(assert_return
  (invoke "rotl" (i64.const -6_067_067_139_002_042_359) (i64.const -19))
  (i64.const -3_530_481_836_149_793_302)
)
(assert_return
  (invoke "rotl"
    (i64.const -6_066_028_401_059_725_156)
    (i64.const -9_223_372_036_854_775_745)
  )
  (i64.const 6_190_357_836_324_913_230)
)
(assert_return
  (invoke "rotl" (i64.const 1) (i64.const 63))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "rotl" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const 1)
)
(assert_return
  (invoke "rotr" (i64.const 1) (i64.const 1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return (invoke "rotr" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "rotr" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return (invoke "rotr" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return
  (invoke "rotr" (i64.const -6_067_025_490_386_449_714) (i64.const 1))
  (i64.const 6_189_859_291_661_550_951)
)
(assert_return
  (invoke "rotr" (i64.const -144_115_184_384_868_352) (i64.const 4))
  (i64.const 1_143_914_305_582_792_704)
)
(assert_return
  (invoke "rotr" (i64.const -6_067_173_104_435_169_271) (i64.const 53))
  (i64.const 7_534_987_797_011_123_550)
)
(assert_return
  (invoke "rotr" (i64.const -6_066_028_401_059_725_156) (i64.const 63))
  (i64.const 6_314_687_271_590_101_305)
)
(assert_return
  (invoke "rotr" (i64.const -6_067_173_104_435_169_271) (i64.const 245))
  (i64.const 7_534_987_797_011_123_550)
)
(assert_return
  (invoke "rotr" (i64.const -6_067_067_139_002_042_359) (i64.const -19))
  (i64.const -7_735_078_922_541_506_965)
)
(assert_return
  (invoke "rotr"
    (i64.const -6_066_028_401_059_725_156)
    (i64.const -9_223_372_036_854_775_745)
  )
  (i64.const 6_314_687_271_590_101_305)
)
(assert_return (invoke "rotr" (i64.const 1) (i64.const 63)) (i64.const 2))
(assert_return
  (invoke "rotr" (i64.const -9_223_372_036_854_775_808) (i64.const 63))
  (i64.const 1)
)
(assert_return (invoke "clz" (i64.const -1)) (i64.const 0))
(assert_return (invoke "clz" (i64.const 0)) (i64.const 64))
(assert_return (invoke "clz" (i64.const 32_768)) (i64.const 48))
(assert_return (invoke "clz" (i64.const 255)) (i64.const 56))
(assert_return
  (invoke "clz" (i64.const -9_223_372_036_854_775_808))
  (i64.const 0)
)
(assert_return (invoke "clz" (i64.const 1)) (i64.const 63))
(assert_return (invoke "clz" (i64.const 2)) (i64.const 62))
(assert_return
  (invoke "clz" (i64.const 9_223_372_036_854_775_807))
  (i64.const 1)
)
(assert_return (invoke "ctz" (i64.const -1)) (i64.const 0))
(assert_return (invoke "ctz" (i64.const 0)) (i64.const 64))
(assert_return (invoke "ctz" (i64.const 32_768)) (i64.const 15))
(assert_return (invoke "ctz" (i64.const 65_536)) (i64.const 16))
(assert_return
  (invoke "ctz" (i64.const -9_223_372_036_854_775_808))
  (i64.const 63)
)
(assert_return
  (invoke "ctz" (i64.const 9_223_372_036_854_775_807))
  (i64.const 0)
)
(assert_return (invoke "popcnt" (i64.const -1)) (i64.const 64))
(assert_return (invoke "popcnt" (i64.const 0)) (i64.const 0))
(assert_return (invoke "popcnt" (i64.const 32_768)) (i64.const 1))
(assert_return
  (invoke "popcnt" (i64.const -9_223_231_297_218_904_064))
  (i64.const 4)
)
(assert_return
  (invoke "popcnt" (i64.const 9_223_372_036_854_775_807))
  (i64.const 63)
)
(assert_return
  (invoke "popcnt" (i64.const -6_148_914_692_668_172_971))
  (i64.const 32)
)
(assert_return
  (invoke "popcnt" (i64.const -7_378_697_629_197_489_494))
  (i64.const 32)
)
(assert_return
  (invoke "popcnt" (i64.const -2_401_053_088_876_216_593))
  (i64.const 48)
)
(assert_return (invoke "eqz" (i64.const 0)) (i32.const 1))
(assert_return (invoke "eqz" (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "eqz" (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "eqz" (i64.const 9_223_372_036_854_775_807))
  (i32.const 0)
)
(assert_return (invoke "eqz" (i64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "eq" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "eq" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "eq" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "eq" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "eq" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return (invoke "ne" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "ne" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "ne" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "ne" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "ne" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ne" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "lt_s" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_s" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "lt_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_u" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "le_s" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "le_s" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "le_s" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "le_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return (invoke "le_u" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "le_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "le_u" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "le_u" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_u" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "le_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "gt_s" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "gt_s" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "gt_s" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "gt_u" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "gt_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "gt_u" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "gt_u" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_u" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return (invoke "ge_s" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_s" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ge_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_u" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.add))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.and))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.div_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.div_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.mul))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.or))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.rem_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.rem_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.rotl))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.rotr))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.shl))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.shr_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.shr_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.sub))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.xor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.clz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.popcnt))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.eq))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.ge_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.ge_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.gt_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.gt_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.le_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.le_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.lt_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.lt_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (f32.const 0) (i64.ne))
  )
  "type mismatch"
)
