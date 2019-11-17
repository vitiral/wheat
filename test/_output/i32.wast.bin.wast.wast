(module
  (type $0 (func (param i32 i32) (result i32)))
  (type $1 (func (param i32) (result i32)))
  (func $0 (type 0) (local.get 0) (local.get 1) (i32.add))
  (func $1 (type 0) (local.get 0) (local.get 1) (i32.sub))
  (func $2 (type 0) (local.get 0) (local.get 1) (i32.mul))
  (func $3 (type 0) (local.get 0) (local.get 1) (i32.div_s))
  (func $4 (type 0) (local.get 0) (local.get 1) (i32.div_u))
  (func $5 (type 0) (local.get 0) (local.get 1) (i32.rem_s))
  (func $6 (type 0) (local.get 0) (local.get 1) (i32.rem_u))
  (func $7 (type 0) (local.get 0) (local.get 1) (i32.and))
  (func $8 (type 0) (local.get 0) (local.get 1) (i32.or))
  (func $9 (type 0) (local.get 0) (local.get 1) (i32.xor))
  (func $10 (type 0) (local.get 0) (local.get 1) (i32.shl))
  (func $11 (type 0) (local.get 0) (local.get 1) (i32.shr_s))
  (func $12 (type 0) (local.get 0) (local.get 1) (i32.shr_u))
  (func $13 (type 0) (local.get 0) (local.get 1) (i32.rotl))
  (func $14 (type 0) (local.get 0) (local.get 1) (i32.rotr))
  (func $15 (type 1) (local.get 0) (i32.clz))
  (func $16 (type 1) (local.get 0) (i32.ctz))
  (func $17 (type 1) (local.get 0) (i32.popcnt))
  (func $18 (type 1) (local.get 0) (i32.eqz))
  (func $19 (type 0) (local.get 0) (local.get 1) (i32.eq))
  (func $20 (type 0) (local.get 0) (local.get 1) (i32.ne))
  (func $21 (type 0) (local.get 0) (local.get 1) (i32.lt_s))
  (func $22 (type 0) (local.get 0) (local.get 1) (i32.lt_u))
  (func $23 (type 0) (local.get 0) (local.get 1) (i32.le_s))
  (func $24 (type 0) (local.get 0) (local.get 1) (i32.le_u))
  (func $25 (type 0) (local.get 0) (local.get 1) (i32.gt_s))
  (func $26 (type 0) (local.get 0) (local.get 1) (i32.gt_u))
  (func $27 (type 0) (local.get 0) (local.get 1) (i32.ge_s))
  (func $28 (type 0) (local.get 0) (local.get 1) (i32.ge_u))
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
(assert_return (invoke "add" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "add" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "add" (i32.const -1) (i32.const -1)) (i32.const -2))
(assert_return (invoke "add" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "add" (i32.const 2_147_483_647) (i32.const 1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "add" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "add" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "add" (i32.const 1_073_741_823) (i32.const 1))
  (i32.const 1_073_741_824)
)
(assert_return (invoke "sub" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "sub" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "sub" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "sub" (i32.const 2_147_483_647) (i32.const -1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "sub" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "sub" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "sub" (i32.const 1_073_741_823) (i32.const -1))
  (i32.const 1_073_741_824)
)
(assert_return (invoke "mul" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "mul" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "mul" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "mul" (i32.const 268_435_456) (i32.const 4_096))
  (i32.const 0)
)
(assert_return
  (invoke "mul" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "mul" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "mul" (i32.const 2_147_483_647) (i32.const -1))
  (i32.const -2_147_483_647)
)
(assert_return
  (invoke "mul" (i32.const 19_088_743) (i32.const 1_985_229_328))
  (i32.const 898_528_368)
)
(assert_return
  (invoke "mul" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_trap
  (invoke "div_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i32.const -2_147_483_648) (i32.const -1))
  "integer overflow"
)
(assert_trap
  (invoke "div_s" (i32.const -2_147_483_648) (i32.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "div_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "div_s" (i32.const 0) (i32.const -1)) (i32.const 0))
(assert_return (invoke "div_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "div_s" (i32.const -2_147_483_648) (i32.const 2))
  (i32.const -1_073_741_824)
)
(assert_return
  (invoke "div_s" (i32.const -2_147_483_647) (i32.const 1_000))
  (i32.const -2_147_483)
)
(assert_return (invoke "div_s" (i32.const 5) (i32.const 2)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const -5) (i32.const 2)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const 5) (i32.const -2)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const -5) (i32.const -2)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 7) (i32.const 3)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const -7) (i32.const 3)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const 7) (i32.const -3)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const -7) (i32.const -3)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 11) (i32.const 5)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 17) (i32.const 7)) (i32.const 2))
(assert_trap
  (invoke "div_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_u" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "div_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "div_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "div_u" (i32.const -2_147_483_648) (i32.const 2))
  (i32.const 1_073_741_824)
)
(assert_return
  (invoke "div_u" (i32.const -1_880_092_688) (i32.const 65_537))
  (i32.const 36_847)
)
(assert_return
  (invoke "div_u" (i32.const -2_147_483_647) (i32.const 1_000))
  (i32.const 2_147_483)
)
(assert_return (invoke "div_u" (i32.const 5) (i32.const 2)) (i32.const 2))
(assert_return
  (invoke "div_u" (i32.const -5) (i32.const 2))
  (i32.const 2_147_483_645)
)
(assert_return (invoke "div_u" (i32.const 5) (i32.const -2)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const -5) (i32.const -2)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const 7) (i32.const 3)) (i32.const 2))
(assert_return (invoke "div_u" (i32.const 11) (i32.const 5)) (i32.const 2))
(assert_return (invoke "div_u" (i32.const 17) (i32.const 7)) (i32.const 2))
(assert_trap
  (invoke "rem_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_s" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return
  (invoke "rem_s" (i32.const 2_147_483_647) (i32.const -1))
  (i32.const 0)
)
(assert_return (invoke "rem_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const 0) (i32.const -1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "rem_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "rem_s" (i32.const -2_147_483_648) (i32.const 2))
  (i32.const 0)
)
(assert_return
  (invoke "rem_s" (i32.const -2_147_483_647) (i32.const 1_000))
  (i32.const -647)
)
(assert_return (invoke "rem_s" (i32.const 5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -5) (i32.const 2)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 5) (i32.const -2)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -5) (i32.const -2)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 7) (i32.const 3)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -7) (i32.const 3)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 7) (i32.const -3)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -7) (i32.const -3)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 11) (i32.const 5)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const 17) (i32.const 7)) (i32.const 3))
(assert_trap
  (invoke "rem_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_u" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return (invoke "rem_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "rem_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "rem_u" (i32.const -2_147_483_648) (i32.const 2))
  (i32.const 0)
)
(assert_return
  (invoke "rem_u" (i32.const -1_880_092_688) (i32.const 65_537))
  (i32.const 32_769)
)
(assert_return
  (invoke "rem_u" (i32.const -2_147_483_647) (i32.const 1_000))
  (i32.const 649)
)
(assert_return (invoke "rem_u" (i32.const 5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const -5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 5) (i32.const -2)) (i32.const 5))
(assert_return (invoke "rem_u" (i32.const -5) (i32.const -2)) (i32.const -5))
(assert_return (invoke "rem_u" (i32.const 7) (i32.const 3)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 11) (i32.const 5)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 17) (i32.const 7)) (i32.const 3))
(assert_return (invoke "and" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "and" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "and" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "and" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "and" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "and" (i32.const 2_147_483_647) (i32.const -1))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "and" (i32.const -252_641_281) (i32.const -3_856))
  (i32.const -252_645_136)
)
(assert_return (invoke "and" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return (invoke "or" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "or" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return (invoke "or" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "or" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "or" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const -1)
)
(assert_return
  (invoke "or" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "or" (i32.const -252_641_281) (i32.const -3_856))
  (i32.const -1)
)
(assert_return (invoke "or" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return (invoke "xor" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "xor" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return (invoke "xor" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "xor" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "xor" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const -1)
)
(assert_return
  (invoke "xor" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "xor" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "xor" (i32.const -1) (i32.const 2_147_483_647))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "xor" (i32.const -252_641_281) (i32.const -3_856))
  (i32.const 252_645_135)
)
(assert_return (invoke "xor" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "shl" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "shl" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return
  (invoke "shl" (i32.const 2_147_483_647) (i32.const 1))
  (i32.const -2)
)
(assert_return (invoke "shl" (i32.const -1) (i32.const 1)) (i32.const -2))
(assert_return
  (invoke "shl" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "shl" (i32.const 1_073_741_824) (i32.const 1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "shl" (i32.const 1) (i32.const 31))
  (i32.const -2_147_483_648)
)
(assert_return (invoke "shl" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shl" (i32.const 1) (i32.const 33)) (i32.const 2))
(assert_return
  (invoke "shl" (i32.const 1) (i32.const -1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "shl" (i32.const 1) (i32.const 2_147_483_647))
  (i32.const -2_147_483_648)
)
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return
  (invoke "shr_s" (i32.const 2_147_483_647) (i32.const 1))
  (i32.const 1_073_741_823)
)
(assert_return
  (invoke "shr_s" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const -1_073_741_824)
)
(assert_return
  (invoke "shr_s" (i32.const 1_073_741_824) (i32.const 1))
  (i32.const 536_870_912)
)
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 33)) (i32.const 0))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "shr_s" (i32.const 1) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "shr_s" (i32.const 1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "shr_s" (i32.const -2_147_483_648) (i32.const 31))
  (i32.const -1)
)
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 32)) (i32.const -1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 33)) (i32.const -1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return
  (invoke "shr_s" (i32.const -1) (i32.const 2_147_483_647))
  (i32.const -1)
)
(assert_return
  (invoke "shr_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const -1)
)
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 1))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "shr_u" (i32.const 2_147_483_647) (i32.const 1))
  (i32.const 1_073_741_823)
)
(assert_return
  (invoke "shr_u" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const 1_073_741_824)
)
(assert_return
  (invoke "shr_u" (i32.const 1_073_741_824) (i32.const 1))
  (i32.const 536_870_912)
)
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 33)) (i32.const 0))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "shr_u" (i32.const 1) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "shr_u" (i32.const 1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "shr_u" (i32.const -2_147_483_648) (i32.const 31))
  (i32.const 1)
)
(assert_return (invoke "shr_u" (i32.const -1) (i32.const 32)) (i32.const -1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 33))
  (i32.const 2_147_483_647)
)
(assert_return (invoke "shr_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const -1)
)
(assert_return (invoke "rotl" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "rotl" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "rotl" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return (invoke "rotl" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return
  (invoke "rotl" (i32.const -1_412_589_450) (i32.const 1))
  (i32.const 1_469_788_397)
)
(assert_return
  (invoke "rotl" (i32.const -33_498_112) (i32.const 4))
  (i32.const -535_969_777)
)
(assert_return
  (invoke "rotl" (i32.const -1_329_474_845) (i32.const 5))
  (i32.const 406_477_942)
)
(assert_return
  (invoke "rotl" (i32.const 32_768) (i32.const 37))
  (i32.const 1_048_576)
)
(assert_return
  (invoke "rotl" (i32.const -1_329_474_845) (i32.const 65_285))
  (i32.const 406_477_942)
)
(assert_return
  (invoke "rotl" (i32.const 1_989_852_383) (i32.const -19))
  (i32.const 1_469_837_011)
)
(assert_return
  (invoke "rotl" (i32.const 1_989_852_383) (i32.const -2_147_483_635))
  (i32.const 1_469_837_011)
)
(assert_return
  (invoke "rotl" (i32.const 1) (i32.const 31))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "rotl" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "rotr" (i32.const 1) (i32.const 1))
  (i32.const -2_147_483_648)
)
(assert_return (invoke "rotr" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "rotr" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return (invoke "rotr" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return
  (invoke "rotr" (i32.const -16_724_992) (i32.const 1))
  (i32.const 2_139_121_152)
)
(assert_return
  (invoke "rotr" (i32.const 524_288) (i32.const 4))
  (i32.const 32_768)
)
(assert_return
  (invoke "rotr" (i32.const -1_329_474_845) (i32.const 5))
  (i32.const 495_324_823)
)
(assert_return
  (invoke "rotr" (i32.const 32_768) (i32.const 37))
  (i32.const 1_024)
)
(assert_return
  (invoke "rotr" (i32.const -1_329_474_845) (i32.const 65_285))
  (i32.const 495_324_823)
)
(assert_return
  (invoke "rotr" (i32.const 1_989_852_383) (i32.const -19))
  (i32.const -419_711_787)
)
(assert_return
  (invoke "rotr" (i32.const 1_989_852_383) (i32.const -2_147_483_635))
  (i32.const -419_711_787)
)
(assert_return (invoke "rotr" (i32.const 1) (i32.const 31)) (i32.const 2))
(assert_return
  (invoke "rotr" (i32.const -2_147_483_648) (i32.const 31))
  (i32.const 1)
)
(assert_return (invoke "clz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "clz" (i32.const 0)) (i32.const 32))
(assert_return (invoke "clz" (i32.const 32_768)) (i32.const 16))
(assert_return (invoke "clz" (i32.const 255)) (i32.const 24))
(assert_return (invoke "clz" (i32.const -2_147_483_648)) (i32.const 0))
(assert_return (invoke "clz" (i32.const 1)) (i32.const 31))
(assert_return (invoke "clz" (i32.const 2)) (i32.const 30))
(assert_return (invoke "clz" (i32.const 2_147_483_647)) (i32.const 1))
(assert_return (invoke "ctz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "ctz" (i32.const 0)) (i32.const 32))
(assert_return (invoke "ctz" (i32.const 32_768)) (i32.const 15))
(assert_return (invoke "ctz" (i32.const 65_536)) (i32.const 16))
(assert_return (invoke "ctz" (i32.const -2_147_483_648)) (i32.const 31))
(assert_return (invoke "ctz" (i32.const 2_147_483_647)) (i32.const 0))
(assert_return (invoke "popcnt" (i32.const -1)) (i32.const 32))
(assert_return (invoke "popcnt" (i32.const 0)) (i32.const 0))
(assert_return (invoke "popcnt" (i32.const 32_768)) (i32.const 1))
(assert_return (invoke "popcnt" (i32.const -2_147_450_880)) (i32.const 2))
(assert_return (invoke "popcnt" (i32.const 2_147_483_647)) (i32.const 31))
(assert_return (invoke "popcnt" (i32.const -1_431_655_766)) (i32.const 16))
(assert_return (invoke "popcnt" (i32.const 1_431_655_765)) (i32.const 16))
(assert_return (invoke "popcnt" (i32.const -559_038_737)) (i32.const 24))
(assert_return (invoke "eqz" (i32.const 0)) (i32.const 1))
(assert_return (invoke "eqz" (i32.const 1)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const -2_147_483_648)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const 2_147_483_647)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "eq" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "eq" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "eq" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "eq" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "eq" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return (invoke "ne" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "ne" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "ne" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "ne" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "ne" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ne" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "lt_s" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "lt_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "lt_u" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_u" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "le_s" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "le_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "le_s" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return (invoke "le_u" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "le_u" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "le_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "le_u" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_u" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "gt_s" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "gt_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "gt_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "gt_u" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "gt_u" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "gt_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "gt_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_u" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return (invoke "ge_s" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "ge_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ge_u" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_u" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (i32.eqz) (drop)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (block (i32.eqz) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (loop (i32.eqz) (drop)))
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
      (if (then (i32.eqz) (drop)) (else))
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
      (if (result i32) (then (i32.const 0)) (else (i32.eqz)))
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (block (i32.eqz) (br 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (block (i32.eqz) (i32.const 1) (br_if 0) (drop))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (block (i32.eqz) (br_table 0) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (i32.eqz) (return) (drop)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.eqz) (i32.const 1) (i32.const 2) (select) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (type $1 (func (param i32) (result i32)))
    (func $0 (type 0) (i32.eqz) (call 1) (drop))
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
        (i32.eqz)
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
    (func $0 (type 0) (local i32) (i32.eqz) (local.set 0) (local.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32) (i32.eqz) (local.tee 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (i32.eqz) (global.set 0) (global.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.eqz) (memory.grow) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.eqz) (i32.load) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.eqz) (i32.const 1) (i32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (i32.add) (drop)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (i32.const 0) (i32.add) (drop)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (i32.const 0) (block (i32.add) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (block (i32.const 0) (i32.add) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (i32.const 0) (loop (i32.add) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (loop (i32.const 0) (i32.add) (drop)))
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
      (i32.const 0)
      (i32.add)
      (if (then (drop)) (else))
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
      (i32.const 0)
      (if (then (i32.add)) (else (drop)))
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
      (i32.const 0)
      (if (result i32) (then (i32.const 0)) (else (i32.add) (i32.const 0)))
      (drop)
      (drop)
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
      (if (result i32) (then (i32.const 0)) (else (i32.add)))
      (drop)
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
      (block (i32.add) (br 0) (drop))
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
      (block (i32.const 0) (i32.add) (br 0) (drop))
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
      (block (i32.add) (i32.const 1) (br_if 0) (drop))
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
      (block (i32.const 0) (i32.add) (i32.const 1) (br_if 0) (drop))
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
      (block (i32.add) (br_table 0) (drop))
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
      (block (i32.const 0) (i32.add) (br_table 0) (drop))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (i32.add) (return) (drop)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (i32.add) (return) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.add) (i32.const 1) (i32.const 2) (select) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.add)
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
    (type $1 (func (param i32 i32) (result i32)))
    (func $0 (type 0) (i32.add) (call 1) (drop))
    (func $1 (type 1) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (type $1 (func (param i32 i32) (result i32)))
    (func $0 (type 0) (i32.const 0) (i32.add) (call 1) (drop))
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
        (i32.add)
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
    (type $0 (func (param i32) (result i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (func $0 (type 0) (local.get 0))
    (func $1
      (type 1)
      (block
        (result i32)
        (i32.const 0)
        (i32.add)
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
    (func $0 (type 0) (local i32) (i32.add) (local.set 0) (local.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (local i32)
      (i32.const 0)
      (i32.add)
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
    (func $0 (type 0) (local i32) (i32.add) (local.tee 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32) (i32.const 0) (i32.add) (local.tee 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (i32.add) (global.set 0) (global.get 0) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.add)
      (global.set 0)
      (global.get 0)
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.add) (memory.grow) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.add) (memory.grow) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.add) (i32.load) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.add) (i32.load) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.add) (i32.const 1) (i32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 1)
    (func $0 (type 0) (i32.const 1) (i32.add) (i32.const 0) (i32.store))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.add))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.and))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.div_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.div_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.mul))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.or))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.rem_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.rem_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.rotl))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.rotr))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.shl))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.shr_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.shr_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.sub))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.xor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.clz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.ctz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.popcnt))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.eq))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.ge_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.ge_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.gt_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.gt_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.le_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.le_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.lt_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.lt_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (i32.ne))
  )
  "type mismatch"
)
