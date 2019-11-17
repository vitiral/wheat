(module
  (type $0 (func (param i32) (result i64)))
  (type $1 (func (param i64) (result i32)))
  (type $2 (func (param f32) (result i32)))
  (type $3 (func (param f64) (result i32)))
  (type $4 (func (param f32) (result i64)))
  (type $5 (func (param f64) (result i64)))
  (type $6 (func (param i32) (result f32)))
  (type $7 (func (param i64) (result f32)))
  (type $8 (func (param i32) (result f64)))
  (type $9 (func (param i64) (result f64)))
  (type $10 (func (param f32) (result f64)))
  (type $11 (func (param f64) (result f32)))
  (func $0 (type 0) (local.get 0) (i64.extend_i32_s))
  (func $1 (type 0) (local.get 0) (i64.extend_i32_u))
  (func $2 (type 1) (local.get 0) (i32.wrap_i64))
  (func $3 (type 2) (local.get 0) (i32.trunc_f32_s))
  (func $4 (type 2) (local.get 0) (i32.trunc_f32_u))
  (func $5 (type 3) (local.get 0) (i32.trunc_f64_s))
  (func $6 (type 3) (local.get 0) (i32.trunc_f64_u))
  (func $7 (type 4) (local.get 0) (i64.trunc_f32_s))
  (func $8 (type 4) (local.get 0) (i64.trunc_f32_u))
  (func $9 (type 5) (local.get 0) (i64.trunc_f64_s))
  (func $10 (type 5) (local.get 0) (i64.trunc_f64_u))
  (func $11 (type 6) (local.get 0) (f32.convert_i32_s))
  (func $12 (type 7) (local.get 0) (f32.convert_i64_s))
  (func $13 (type 8) (local.get 0) (f64.convert_i32_s))
  (func $14 (type 9) (local.get 0) (f64.convert_i64_s))
  (func $15 (type 6) (local.get 0) (f32.convert_i32_u))
  (func $16 (type 7) (local.get 0) (f32.convert_i64_u))
  (func $17 (type 8) (local.get 0) (f64.convert_i32_u))
  (func $18 (type 9) (local.get 0) (f64.convert_i64_u))
  (func $19 (type 10) (local.get 0) (f64.promote_f32))
  (func $20 (type 11) (local.get 0) (f32.demote_f64))
  (func $21 (type 6) (local.get 0) (f32.reinterpret_i32))
  (func $22 (type 9) (local.get 0) (f64.reinterpret_i64))
  (func $23 (type 2) (local.get 0) (i32.reinterpret_f32))
  (func $24 (type 5) (local.get 0) (i64.reinterpret_f64))
  (export "i64.extend_i32_s" (func 0))
  (export "i64.extend_i32_u" (func 1))
  (export "i32.wrap_i64" (func 2))
  (export "i32.trunc_f32_s" (func 3))
  (export "i32.trunc_f32_u" (func 4))
  (export "i32.trunc_f64_s" (func 5))
  (export "i32.trunc_f64_u" (func 6))
  (export "i64.trunc_f32_s" (func 7))
  (export "i64.trunc_f32_u" (func 8))
  (export "i64.trunc_f64_s" (func 9))
  (export "i64.trunc_f64_u" (func 10))
  (export "f32.convert_i32_s" (func 11))
  (export "f32.convert_i64_s" (func 12))
  (export "f64.convert_i32_s" (func 13))
  (export "f64.convert_i64_s" (func 14))
  (export "f32.convert_i32_u" (func 15))
  (export "f32.convert_i64_u" (func 16))
  (export "f64.convert_i32_u" (func 17))
  (export "f64.convert_i64_u" (func 18))
  (export "f64.promote_f32" (func 19))
  (export "f32.demote_f64" (func 20))
  (export "f32.reinterpret_i32" (func 21))
  (export "f64.reinterpret_i64" (func 22))
  (export "i32.reinterpret_f32" (func 23))
  (export "i64.reinterpret_f64" (func 24))
)
(assert_return (invoke "i64.extend_i32_s" (i32.const 0)) (i64.const 0))
(assert_return
  (invoke "i64.extend_i32_s" (i32.const 10_000))
  (i64.const 10_000)
)
(assert_return
  (invoke "i64.extend_i32_s" (i32.const -10_000))
  (i64.const -10_000)
)
(assert_return (invoke "i64.extend_i32_s" (i32.const -1)) (i64.const -1))
(assert_return
  (invoke "i64.extend_i32_s" (i32.const 2_147_483_647))
  (i64.const 2_147_483_647)
)
(assert_return
  (invoke "i64.extend_i32_s" (i32.const -2_147_483_648))
  (i64.const -2_147_483_648)
)
(assert_return (invoke "i64.extend_i32_u" (i32.const 0)) (i64.const 0))
(assert_return
  (invoke "i64.extend_i32_u" (i32.const 10_000))
  (i64.const 10_000)
)
(assert_return
  (invoke "i64.extend_i32_u" (i32.const -10_000))
  (i64.const 4_294_957_296)
)
(assert_return
  (invoke "i64.extend_i32_u" (i32.const -1))
  (i64.const 4_294_967_295)
)
(assert_return
  (invoke "i64.extend_i32_u" (i32.const 2_147_483_647))
  (i64.const 2_147_483_647)
)
(assert_return
  (invoke "i64.extend_i32_u" (i32.const -2_147_483_648))
  (i64.const 2_147_483_648)
)
(assert_return (invoke "i32.wrap_i64" (i64.const -1)) (i32.const -1))
(assert_return
  (invoke "i32.wrap_i64" (i64.const -100_000))
  (i32.const -100_000)
)
(assert_return
  (invoke "i32.wrap_i64" (i64.const 2_147_483_648))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "i32.wrap_i64" (i64.const -2_147_483_649))
  (i32.const 2_147_483_647)
)
(assert_return (invoke "i32.wrap_i64" (i64.const -4_294_967_296)) (i32.const 0))
(assert_return
  (invoke "i32.wrap_i64" (i64.const -4_294_967_297))
  (i32.const -1)
)
(assert_return (invoke "i32.wrap_i64" (i64.const -4_294_967_295)) (i32.const 1))
(assert_return (invoke "i32.wrap_i64" (i64.const 0)) (i32.const 0))
(assert_return
  (invoke "i32.wrap_i64" (i64.const 1_311_768_467_463_790_320))
  (i32.const -1_698_898_192)
)
(assert_return (invoke "i32.wrap_i64" (i64.const 4_294_967_295)) (i32.const -1))
(assert_return (invoke "i32.wrap_i64" (i64.const 4_294_967_296)) (i32.const 0))
(assert_return (invoke "i32.wrap_i64" (i64.const 4_294_967_297)) (i32.const 1))
(assert_return (invoke "i32.trunc_f32_s" (f32.const 0)) (i32.const 0))
(assert_return (invoke "i32.trunc_f32_s" (f32.const -0)) (i32.const 0))
(assert_return
  (invoke "i32.trunc_f32_s" (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "i32.trunc_f32_s" (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return (invoke "i32.trunc_f32_s" (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "i32.trunc_f32_s" (f32.const 1.100_000_023_841_857_9))
  (i32.const 1)
)
(assert_return (invoke "i32.trunc_f32_s" (f32.const 1.5)) (i32.const 1))
(assert_return (invoke "i32.trunc_f32_s" (f32.const -1)) (i32.const -1))
(assert_return
  (invoke "i32.trunc_f32_s" (f32.const -1.100_000_023_841_857_9))
  (i32.const -1)
)
(assert_return (invoke "i32.trunc_f32_s" (f32.const -1.5)) (i32.const -1))
(assert_return
  (invoke "i32.trunc_f32_s" (f32.const -1.899_999_976_158_142_1))
  (i32.const -1)
)
(assert_return (invoke "i32.trunc_f32_s" (f32.const -2)) (i32.const -2))
(assert_return
  (invoke "i32.trunc_f32_s" (f32.const 2_147_483_520))
  (i32.const 2_147_483_520)
)
(assert_return
  (invoke "i32.trunc_f32_s" (f32.const -2_147_483_648))
  (i32.const -2_147_483_648)
)
(assert_trap
  (invoke "i32.trunc_f32_s" (f32.const 2_147_483_648))
  "integer overflow"
)
(assert_trap
  (invoke "i32.trunc_f32_s" (f32.const -2_147_483_904))
  "integer overflow"
)
(assert_trap (invoke "i32.trunc_f32_s" (f32.const inf)) "integer overflow")
(assert_trap (invoke "i32.trunc_f32_s" (f32.const -inf)) "integer overflow")
(assert_trap
  (invoke "i32.trunc_f32_s" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f32_s" (f32.const nan:0x200000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f32_s" (f32.const -nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f32_s" (f32.const -nan:0x200000))
  "invalid conversion to integer"
)
(assert_return (invoke "i32.trunc_f32_u" (f32.const 0)) (i32.const 0))
(assert_return (invoke "i32.trunc_f32_u" (f32.const -0)) (i32.const 0))
(assert_return
  (invoke "i32.trunc_f32_u" (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "i32.trunc_f32_u" (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return (invoke "i32.trunc_f32_u" (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "i32.trunc_f32_u" (f32.const 1.100_000_023_841_857_9))
  (i32.const 1)
)
(assert_return (invoke "i32.trunc_f32_u" (f32.const 1.5)) (i32.const 1))
(assert_return
  (invoke "i32.trunc_f32_u" (f32.const 1.899_999_976_158_142_1))
  (i32.const 1)
)
(assert_return (invoke "i32.trunc_f32_u" (f32.const 2)) (i32.const 2))
(assert_return
  (invoke "i32.trunc_f32_u" (f32.const 2_147_483_648))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "i32.trunc_f32_u" (f32.const 4_294_967_040))
  (i32.const -256)
)
(assert_return
  (invoke "i32.trunc_f32_u" (f32.const -0.899_999_976_158_142_09))
  (i32.const 0)
)
(assert_return
  (invoke "i32.trunc_f32_u" (f32.const -0.999_999_940_395_355_22))
  (i32.const 0)
)
(assert_trap
  (invoke "i32.trunc_f32_u" (f32.const 4_294_967_296))
  "integer overflow"
)
(assert_trap (invoke "i32.trunc_f32_u" (f32.const -1)) "integer overflow")
(assert_trap (invoke "i32.trunc_f32_u" (f32.const inf)) "integer overflow")
(assert_trap (invoke "i32.trunc_f32_u" (f32.const -inf)) "integer overflow")
(assert_trap
  (invoke "i32.trunc_f32_u" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f32_u" (f32.const nan:0x200000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f32_u" (f32.const -nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f32_u" (f32.const -nan:0x200000))
  "invalid conversion to integer"
)
(assert_return (invoke "i32.trunc_f64_s" (f64.const 0)) (i32.const 0))
(assert_return (invoke "i32.trunc_f64_s" (f64.const -0)) (i32.const 0))
(assert_return
  (invoke "i32.trunc_f64_s" (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "i32.trunc_f64_s" (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return (invoke "i32.trunc_f64_s" (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "i32.trunc_f64_s" (f64.const 1.100_000_000_000_000_1))
  (i32.const 1)
)
(assert_return (invoke "i32.trunc_f64_s" (f64.const 1.5)) (i32.const 1))
(assert_return (invoke "i32.trunc_f64_s" (f64.const -1)) (i32.const -1))
(assert_return
  (invoke "i32.trunc_f64_s" (f64.const -1.100_000_000_000_000_1))
  (i32.const -1)
)
(assert_return (invoke "i32.trunc_f64_s" (f64.const -1.5)) (i32.const -1))
(assert_return
  (invoke "i32.trunc_f64_s" (f64.const -1.899_999_999_999_999_9))
  (i32.const -1)
)
(assert_return (invoke "i32.trunc_f64_s" (f64.const -2)) (i32.const -2))
(assert_return
  (invoke "i32.trunc_f64_s" (f64.const 2_147_483_647))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "i32.trunc_f64_s" (f64.const -2_147_483_648))
  (i32.const -2_147_483_648)
)
(assert_trap
  (invoke "i32.trunc_f64_s" (f64.const 2_147_483_648))
  "integer overflow"
)
(assert_trap
  (invoke "i32.trunc_f64_s" (f64.const -2_147_483_649))
  "integer overflow"
)
(assert_trap (invoke "i32.trunc_f64_s" (f64.const inf)) "integer overflow")
(assert_trap (invoke "i32.trunc_f64_s" (f64.const -inf)) "integer overflow")
(assert_trap
  (invoke "i32.trunc_f64_s" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f64_s" (f64.const nan:0x4000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f64_s" (f64.const -nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f64_s" (f64.const -nan:0x4000000000000))
  "invalid conversion to integer"
)
(assert_return (invoke "i32.trunc_f64_u" (f64.const 0)) (i32.const 0))
(assert_return (invoke "i32.trunc_f64_u" (f64.const -0)) (i32.const 0))
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return (invoke "i32.trunc_f64_u" (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const 1.100_000_000_000_000_1))
  (i32.const 1)
)
(assert_return (invoke "i32.trunc_f64_u" (f64.const 1.5)) (i32.const 1))
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const 1.899_999_999_999_999_9))
  (i32.const 1)
)
(assert_return (invoke "i32.trunc_f64_u" (f64.const 2)) (i32.const 2))
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const 2_147_483_648))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const 4_294_967_295))
  (i32.const -1)
)
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const -0.900_000_000_000_000_02))
  (i32.const 0)
)
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const -0.999_999_999_999_999_89))
  (i32.const 0)
)
(assert_return
  (invoke "i32.trunc_f64_u" (f64.const 100_000_000))
  (i32.const 100_000_000)
)
(assert_trap
  (invoke "i32.trunc_f64_u" (f64.const 4_294_967_296))
  "integer overflow"
)
(assert_trap (invoke "i32.trunc_f64_u" (f64.const -1)) "integer overflow")
(assert_trap
  (invoke "i32.trunc_f64_u" (f64.const 10_000_000_000_000_000))
  "integer overflow"
)
(assert_trap (invoke "i32.trunc_f64_u" (f64.const 1e+30)) "integer overflow")
(assert_trap
  (invoke "i32.trunc_f64_u" (f64.const 9.223_372_036_854_775_8e+18))
  "integer overflow"
)
(assert_trap (invoke "i32.trunc_f64_u" (f64.const inf)) "integer overflow")
(assert_trap (invoke "i32.trunc_f64_u" (f64.const -inf)) "integer overflow")
(assert_trap
  (invoke "i32.trunc_f64_u" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f64_u" (f64.const nan:0x4000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f64_u" (f64.const -nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i32.trunc_f64_u" (f64.const -nan:0x4000000000000))
  "invalid conversion to integer"
)
(assert_return (invoke "i64.trunc_f32_s" (f32.const 0)) (i64.const 0))
(assert_return (invoke "i64.trunc_f32_s" (f32.const -0)) (i64.const 0))
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const 1.401_298_464_324_817_1e-45))
  (i64.const 0)
)
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const -1.401_298_464_324_817_1e-45))
  (i64.const 0)
)
(assert_return (invoke "i64.trunc_f32_s" (f32.const 1)) (i64.const 1))
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const 1.100_000_023_841_857_9))
  (i64.const 1)
)
(assert_return (invoke "i64.trunc_f32_s" (f32.const 1.5)) (i64.const 1))
(assert_return (invoke "i64.trunc_f32_s" (f32.const -1)) (i64.const -1))
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const -1.100_000_023_841_857_9))
  (i64.const -1)
)
(assert_return (invoke "i64.trunc_f32_s" (f32.const -1.5)) (i64.const -1))
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const -1.899_999_976_158_142_1))
  (i64.const -1)
)
(assert_return (invoke "i64.trunc_f32_s" (f32.const -2)) (i64.const -2))
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const 4_294_967_296))
  (i64.const 4_294_967_296)
)
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const -4_294_967_296))
  (i64.const -4_294_967_296)
)
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const 9.223_371_487_098_961_9e+18))
  (i64.const 9_223_371_487_098_961_920)
)
(assert_return
  (invoke "i64.trunc_f32_s" (f32.const -9.223_372_036_854_775_8e+18))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_trap
  (invoke "i64.trunc_f32_s" (f32.const 9.223_372_036_854_775_8e+18))
  "integer overflow"
)
(assert_trap
  (invoke "i64.trunc_f32_s" (f32.const -9.223_373_136_366_403_6e+18))
  "integer overflow"
)
(assert_trap (invoke "i64.trunc_f32_s" (f32.const inf)) "integer overflow")
(assert_trap (invoke "i64.trunc_f32_s" (f32.const -inf)) "integer overflow")
(assert_trap
  (invoke "i64.trunc_f32_s" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f32_s" (f32.const nan:0x200000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f32_s" (f32.const -nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f32_s" (f32.const -nan:0x200000))
  "invalid conversion to integer"
)
(assert_return (invoke "i64.trunc_f32_u" (f32.const 0)) (i64.const 0))
(assert_return (invoke "i64.trunc_f32_u" (f32.const -0)) (i64.const 0))
(assert_return
  (invoke "i64.trunc_f32_u" (f32.const 1.401_298_464_324_817_1e-45))
  (i64.const 0)
)
(assert_return
  (invoke "i64.trunc_f32_u" (f32.const -1.401_298_464_324_817_1e-45))
  (i64.const 0)
)
(assert_return (invoke "i64.trunc_f32_u" (f32.const 1)) (i64.const 1))
(assert_return
  (invoke "i64.trunc_f32_u" (f32.const 1.100_000_023_841_857_9))
  (i64.const 1)
)
(assert_return (invoke "i64.trunc_f32_u" (f32.const 1.5)) (i64.const 1))
(assert_return
  (invoke "i64.trunc_f32_u" (f32.const 4_294_967_296))
  (i64.const 4_294_967_296)
)
(assert_return
  (invoke "i64.trunc_f32_u" (f32.const 1.844_674_297_419_792_4e+19))
  (i64.const -1_099_511_627_776)
)
(assert_return
  (invoke "i64.trunc_f32_u" (f32.const -0.899_999_976_158_142_09))
  (i64.const 0)
)
(assert_return
  (invoke "i64.trunc_f32_u" (f32.const -0.999_999_940_395_355_22))
  (i64.const 0)
)
(assert_trap
  (invoke "i64.trunc_f32_u" (f32.const 1.844_674_407_370_955_2e+19))
  "integer overflow"
)
(assert_trap (invoke "i64.trunc_f32_u" (f32.const -1)) "integer overflow")
(assert_trap (invoke "i64.trunc_f32_u" (f32.const inf)) "integer overflow")
(assert_trap (invoke "i64.trunc_f32_u" (f32.const -inf)) "integer overflow")
(assert_trap
  (invoke "i64.trunc_f32_u" (f32.const nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f32_u" (f32.const nan:0x200000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f32_u" (f32.const -nan:0x400000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f32_u" (f32.const -nan:0x200000))
  "invalid conversion to integer"
)
(assert_return (invoke "i64.trunc_f64_s" (f64.const 0)) (i64.const 0))
(assert_return (invoke "i64.trunc_f64_s" (f64.const -0)) (i64.const 0))
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const 4.940_656_458_412_465_4e-324))
  (i64.const 0)
)
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const -4.940_656_458_412_465_4e-324))
  (i64.const 0)
)
(assert_return (invoke "i64.trunc_f64_s" (f64.const 1)) (i64.const 1))
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const 1.100_000_000_000_000_1))
  (i64.const 1)
)
(assert_return (invoke "i64.trunc_f64_s" (f64.const 1.5)) (i64.const 1))
(assert_return (invoke "i64.trunc_f64_s" (f64.const -1)) (i64.const -1))
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const -1.100_000_000_000_000_1))
  (i64.const -1)
)
(assert_return (invoke "i64.trunc_f64_s" (f64.const -1.5)) (i64.const -1))
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const -1.899_999_999_999_999_9))
  (i64.const -1)
)
(assert_return (invoke "i64.trunc_f64_s" (f64.const -2)) (i64.const -2))
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const 4_294_967_296))
  (i64.const 4_294_967_296)
)
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const -4_294_967_296))
  (i64.const -4_294_967_296)
)
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const 9.223_372_036_854_774_8e+18))
  (i64.const 9_223_372_036_854_774_784)
)
(assert_return
  (invoke "i64.trunc_f64_s" (f64.const -9.223_372_036_854_775_8e+18))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_trap
  (invoke "i64.trunc_f64_s" (f64.const 9.223_372_036_854_775_8e+18))
  "integer overflow"
)
(assert_trap
  (invoke "i64.trunc_f64_s" (f64.const -9.223_372_036_854_777_9e+18))
  "integer overflow"
)
(assert_trap (invoke "i64.trunc_f64_s" (f64.const inf)) "integer overflow")
(assert_trap (invoke "i64.trunc_f64_s" (f64.const -inf)) "integer overflow")
(assert_trap
  (invoke "i64.trunc_f64_s" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f64_s" (f64.const nan:0x4000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f64_s" (f64.const -nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f64_s" (f64.const -nan:0x4000000000000))
  "invalid conversion to integer"
)
(assert_return (invoke "i64.trunc_f64_u" (f64.const 0)) (i64.const 0))
(assert_return (invoke "i64.trunc_f64_u" (f64.const -0)) (i64.const 0))
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const 4.940_656_458_412_465_4e-324))
  (i64.const 0)
)
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const -4.940_656_458_412_465_4e-324))
  (i64.const 0)
)
(assert_return (invoke "i64.trunc_f64_u" (f64.const 1)) (i64.const 1))
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const 1.100_000_000_000_000_1))
  (i64.const 1)
)
(assert_return (invoke "i64.trunc_f64_u" (f64.const 1.5)) (i64.const 1))
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const 4_294_967_295))
  (i64.const 4_294_967_295)
)
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const 4_294_967_296))
  (i64.const 4_294_967_296)
)
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const 1.844_674_407_370_955e+19))
  (i64.const -2_048)
)
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const -0.900_000_000_000_000_02))
  (i64.const 0)
)
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const -0.999_999_999_999_999_89))
  (i64.const 0)
)
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const 100_000_000))
  (i64.const 100_000_000)
)
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const 10_000_000_000_000_000))
  (i64.const 10_000_000_000_000_000)
)
(assert_return
  (invoke "i64.trunc_f64_u" (f64.const 9.223_372_036_854_775_8e+18))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_trap
  (invoke "i64.trunc_f64_u" (f64.const 1.844_674_407_370_955_2e+19))
  "integer overflow"
)
(assert_trap (invoke "i64.trunc_f64_u" (f64.const -1)) "integer overflow")
(assert_trap (invoke "i64.trunc_f64_u" (f64.const inf)) "integer overflow")
(assert_trap (invoke "i64.trunc_f64_u" (f64.const -inf)) "integer overflow")
(assert_trap
  (invoke "i64.trunc_f64_u" (f64.const nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f64_u" (f64.const nan:0x4000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f64_u" (f64.const -nan:0x8000000000000))
  "invalid conversion to integer"
)
(assert_trap
  (invoke "i64.trunc_f64_u" (f64.const -nan:0x4000000000000))
  "invalid conversion to integer"
)
(assert_return (invoke "f32.convert_i32_s" (i32.const 1)) (f32.const 1))
(assert_return (invoke "f32.convert_i32_s" (i32.const -1)) (f32.const -1))
(assert_return (invoke "f32.convert_i32_s" (i32.const 0)) (f32.const 0))
(assert_return
  (invoke "f32.convert_i32_s" (i32.const 2_147_483_647))
  (f32.const 2_147_483_648)
)
(assert_return
  (invoke "f32.convert_i32_s" (i32.const -2_147_483_648))
  (f32.const -2_147_483_648)
)
(assert_return
  (invoke "f32.convert_i32_s" (i32.const 1_234_567_890))
  (f32.const 1_234_567_936)
)
(assert_return
  (invoke "f32.convert_i32_s" (i32.const 16_777_217))
  (f32.const 16_777_216)
)
(assert_return
  (invoke "f32.convert_i32_s" (i32.const -16_777_217))
  (f32.const -16_777_216)
)
(assert_return
  (invoke "f32.convert_i32_s" (i32.const 16_777_219))
  (f32.const 16_777_220)
)
(assert_return
  (invoke "f32.convert_i32_s" (i32.const -16_777_219))
  (f32.const -16_777_220)
)
(assert_return (invoke "f32.convert_i64_s" (i64.const 1)) (f32.const 1))
(assert_return (invoke "f32.convert_i64_s" (i64.const -1)) (f32.const -1))
(assert_return (invoke "f32.convert_i64_s" (i64.const 0)) (f32.const 0))
(assert_return
  (invoke "f32.convert_i64_s" (i64.const 9_223_372_036_854_775_807))
  (f32.const 9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const -9_223_372_036_854_775_808))
  (f32.const -9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const 314_159_265_358_979))
  (f32.const 314_159_275_180_032)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const 16_777_217))
  (f32.const 16_777_216)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const -16_777_217))
  (f32.const -16_777_216)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const 16_777_219))
  (f32.const 16_777_220)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const -16_777_219))
  (f32.const -16_777_220)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const 9_223_371_212_221_054_977))
  (f32.const 9.223_371_487_098_961_9e+18)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const -9_223_371_761_976_868_863))
  (f32.const -9.223_371_487_098_961_9e+18)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const 9_007_199_791_611_905))
  (f32.const 9_007_200_328_482_816)
)
(assert_return
  (invoke "f32.convert_i64_s" (i64.const -9_007_199_791_611_905))
  (f32.const -9_007_200_328_482_816)
)
(assert_return (invoke "f64.convert_i32_s" (i32.const 1)) (f64.const 1))
(assert_return (invoke "f64.convert_i32_s" (i32.const -1)) (f64.const -1))
(assert_return (invoke "f64.convert_i32_s" (i32.const 0)) (f64.const 0))
(assert_return
  (invoke "f64.convert_i32_s" (i32.const 2_147_483_647))
  (f64.const 2_147_483_647)
)
(assert_return
  (invoke "f64.convert_i32_s" (i32.const -2_147_483_648))
  (f64.const -2_147_483_648)
)
(assert_return
  (invoke "f64.convert_i32_s" (i32.const 987_654_321))
  (f64.const 987_654_321)
)
(assert_return (invoke "f64.convert_i64_s" (i64.const 1)) (f64.const 1))
(assert_return (invoke "f64.convert_i64_s" (i64.const -1)) (f64.const -1))
(assert_return (invoke "f64.convert_i64_s" (i64.const 0)) (f64.const 0))
(assert_return
  (invoke "f64.convert_i64_s" (i64.const 9_223_372_036_854_775_807))
  (f64.const 9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f64.convert_i64_s" (i64.const -9_223_372_036_854_775_808))
  (f64.const -9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f64.convert_i64_s" (i64.const 4_669_201_609_102_990))
  (f64.const 4_669_201_609_102_990)
)
(assert_return
  (invoke "f64.convert_i64_s" (i64.const 9_007_199_254_740_993))
  (f64.const 9_007_199_254_740_992)
)
(assert_return
  (invoke "f64.convert_i64_s" (i64.const -9_007_199_254_740_993))
  (f64.const -9_007_199_254_740_992)
)
(assert_return
  (invoke "f64.convert_i64_s" (i64.const 9_007_199_254_740_995))
  (f64.const 9_007_199_254_740_996)
)
(assert_return
  (invoke "f64.convert_i64_s" (i64.const -9_007_199_254_740_995))
  (f64.const -9_007_199_254_740_996)
)
(assert_return (invoke "f32.convert_i32_u" (i32.const 1)) (f32.const 1))
(assert_return (invoke "f32.convert_i32_u" (i32.const 0)) (f32.const 0))
(assert_return
  (invoke "f32.convert_i32_u" (i32.const 2_147_483_647))
  (f32.const 2_147_483_648)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const -2_147_483_648))
  (f32.const 2_147_483_648)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const 305_419_896))
  (f32.const 305_419_904)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const -1))
  (f32.const 4_294_967_296)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const -2_147_483_520))
  (f32.const 2_147_483_648)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const -2_147_483_519))
  (f32.const 2_147_483_904)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const -2_147_483_518))
  (f32.const 2_147_483_904)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const -384))
  (f32.const 4_294_966_784)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const -383))
  (f32.const 4_294_967_040)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const -382))
  (f32.const 4_294_967_040)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const 16_777_217))
  (f32.const 16_777_216)
)
(assert_return
  (invoke "f32.convert_i32_u" (i32.const 16_777_219))
  (f32.const 16_777_220)
)
(assert_return (invoke "f32.convert_i64_u" (i64.const 1)) (f32.const 1))
(assert_return (invoke "f32.convert_i64_u" (i64.const 0)) (f32.const 0))
(assert_return
  (invoke "f32.convert_i64_u" (i64.const 9_223_372_036_854_775_807))
  (f32.const 9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f32.convert_i64_u" (i64.const -9_223_372_036_854_775_808))
  (f32.const 9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f32.convert_i64_u" (i64.const -1))
  (f32.const 1.844_674_407_370_955_2e+19)
)
(assert_return
  (invoke "f32.convert_i64_u" (i64.const 16_777_217))
  (f32.const 16_777_216)
)
(assert_return
  (invoke "f32.convert_i64_u" (i64.const 16_777_219))
  (f32.const 16_777_220)
)
(assert_return
  (invoke "f32.convert_i64_u" (i64.const 9_007_199_791_611_905))
  (f32.const 9_007_200_328_482_816)
)
(assert_return
  (invoke "f32.convert_i64_u" (i64.const 9_223_371_761_976_868_863))
  (f32.const 9.223_371_487_098_961_9e+18)
)
(assert_return
  (invoke "f32.convert_i64_u" (i64.const -9_223_371_487_098_961_919))
  (f32.const 9.223_373_136_366_403_6e+18)
)
(assert_return
  (invoke "f32.convert_i64_u" (i64.const -1_649_267_441_663))
  (f32.const 1.844_674_297_419_792_4e+19)
)
(assert_return (invoke "f64.convert_i32_u" (i32.const 1)) (f64.const 1))
(assert_return (invoke "f64.convert_i32_u" (i32.const 0)) (f64.const 0))
(assert_return
  (invoke "f64.convert_i32_u" (i32.const 2_147_483_647))
  (f64.const 2_147_483_647)
)
(assert_return
  (invoke "f64.convert_i32_u" (i32.const -2_147_483_648))
  (f64.const 2_147_483_648)
)
(assert_return
  (invoke "f64.convert_i32_u" (i32.const -1))
  (f64.const 4_294_967_295)
)
(assert_return (invoke "f64.convert_i64_u" (i64.const 1)) (f64.const 1))
(assert_return (invoke "f64.convert_i64_u" (i64.const 0)) (f64.const 0))
(assert_return
  (invoke "f64.convert_i64_u" (i64.const 9_223_372_036_854_775_807))
  (f64.const 9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const -9_223_372_036_854_775_808))
  (f64.const 9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const -1))
  (f64.const 1.844_674_407_370_955_2e+19)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const -9_223_372_036_854_774_784))
  (f64.const 9.223_372_036_854_775_8e+18)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const -9_223_372_036_854_774_783))
  (f64.const 9.223_372_036_854_777_9e+18)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const -9_223_372_036_854_774_782))
  (f64.const 9.223_372_036_854_777_9e+18)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const -3_072))
  (f64.const 1.844_674_407_370_954_8e+19)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const -3_071))
  (f64.const 1.844_674_407_370_955e+19)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const -3_070))
  (f64.const 1.844_674_407_370_955e+19)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const 9_007_199_254_740_993))
  (f64.const 9_007_199_254_740_992)
)
(assert_return
  (invoke "f64.convert_i64_u" (i64.const 9_007_199_254_740_995))
  (f64.const 9_007_199_254_740_996)
)
(assert_return (invoke "f64.promote_f32" (f32.const 0)) (f64.const 0))
(assert_return (invoke "f64.promote_f32" (f32.const -0)) (f64.const -0))
(assert_return
  (invoke "f64.promote_f32" (f32.const 1.401_298_464_324_817_1e-45))
  (f64.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f64.promote_f32" (f32.const -1.401_298_464_324_817_1e-45))
  (f64.const -1.401_298_464_324_817_1e-45)
)
(assert_return (invoke "f64.promote_f32" (f32.const 1)) (f64.const 1))
(assert_return (invoke "f64.promote_f32" (f32.const -1)) (f64.const -1))
(assert_return
  (invoke "f64.promote_f32" (f32.const -3.402_823_466_385_288_6e+38))
  (f64.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f64.promote_f32" (f32.const 3.402_823_466_385_288_6e+38))
  (f64.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f64.promote_f32" (f32.const 1.504_632_769_052_528e-36))
  (f64.const 1.504_632_769_052_528e-36)
)
(assert_return
  (invoke "f64.promote_f32" (f32.const 6.638_253_671_010_439_5e+37))
  (f64.const 6.638_253_671_010_439_5e+37)
)
(assert_return (invoke "f64.promote_f32" (f32.const inf)) (f64.const inf))
(assert_return (invoke "f64.promote_f32" (f32.const -inf)) (f64.const -inf))
(assert_return_canonical_nan
  (invoke "f64.promote_f32" (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "f64.promote_f32" (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "f64.promote_f32" (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "f64.promote_f32" (f32.const -nan:0x200000))
)
(assert_return (invoke "f32.demote_f64" (f64.const 0)) (f32.const 0))
(assert_return (invoke "f32.demote_f64" (f64.const -0)) (f32.const -0))
(assert_return
  (invoke "f32.demote_f64" (f64.const 4.940_656_458_412_465_4e-324))
  (f32.const 0)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -4.940_656_458_412_465_4e-324))
  (f32.const -0)
)
(assert_return (invoke "f32.demote_f64" (f64.const 1)) (f32.const 1))
(assert_return (invoke "f32.demote_f64" (f64.const -1)) (f32.const -1))
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.175_494_280_757_364_3e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -1.175_494_280_757_364_3e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.175_494_280_757_364_2e-38))
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -1.175_494_280_757_364_2e-38))
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 3.402_823_364_973_240_6e+38))
  (f32.const 3.402_823_263_561_192_6e+38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -3.402_823_364_973_240_6e+38))
  (f32.const -3.402_823_263_561_192_6e+38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 3.402_823_364_973_241e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -3.402_823_364_973_241e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 3.402_823_567_797_336_2e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -3.402_823_567_797_336_2e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 3.402_823_567_797_336_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -3.402_823_567_797_336_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.504_632_769_052_528e-36))
  (f32.const 1.504_632_769_052_528e-36)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 6.638_253_671_010_439_5e+37))
  (f32.const 6.638_253_671_010_439_5e+37)
)
(assert_return (invoke "f32.demote_f64" (f64.const inf)) (f32.const inf))
(assert_return (invoke "f32.demote_f64" (f64.const -inf)) (f32.const -inf))
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.000_000_000_000_000_2))
  (f32.const 1)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 0.999_999_999_999_999_89))
  (f32.const 1)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.000_000_059_604_644_8))
  (f32.const 1)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.000_000_059_604_645))
  (f32.const 1.000_000_119_209_289_6)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.000_000_178_813_934_1))
  (f32.const 1.000_000_119_209_289_6)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.000_000_178_813_934_3))
  (f32.const 1.000_000_238_418_579_1)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.000_000_298_023_223_9))
  (f32.const 1.000_000_238_418_579_1)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 16_777_217))
  (f32.const 16_777_216)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 16_777_217.000_000_004))
  (f32.const 16_777_218)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 16_777_218.999_999_996))
  (f32.const 16_777_218)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 16_777_219))
  (f32.const 16_777_220)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 4.242_584_432_991_427_3e+32))
  (f32.const 4.242_584_541_686_203_5e+32)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.569_262_107_843_487_9e-34))
  (f32.const 1.569_262_114_268_084_5e-34)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 1.055_177_368_860_517_2e-38))
  (f32.const 1.055_177_323_247_048e-38)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -2.823_812_848_414_193_3))
  (f32.const -2.823_812_961_578_369_1)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -9.063_376_370_095_757e+33))
  (f32.const -9.063_376_213_401_508_2e+33)
)
(assert_return_canonical_nan
  (invoke "f32.demote_f64" (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "f32.demote_f64" (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "f32.demote_f64" (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "f32.demote_f64" (f64.const -nan:0x4000000000000))
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 2.225_073_858_507_201_4e-308))
  (f32.const 0)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -2.225_073_858_507_201_4e-308))
  (f32.const -0)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 7.006_492_321_624_085_4e-46))
  (f32.const 0)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -7.006_492_321_624_085_4e-46))
  (f32.const -0)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const 7.006_492_321_624_086_9e-46))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f32.demote_f64" (f64.const -7.006_492_321_624_086_9e-46))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return (invoke "f32.reinterpret_i32" (i32.const 0)) (f32.const 0))
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const -2_147_483_648))
  (f32.const -0)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const -1))
  (f32.const -nan:0x7fffff)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const 123_456_789))
  (f32.const 1.653_599_701_342_256_5e-34)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const -2_147_483_647))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const 2_139_095_040))
  (f32.const inf)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const -8_388_608))
  (f32.const -inf)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const 2_143_289_344))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const -4_194_304))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const 2_141_192_192))
  (f32.const nan:0x200000)
)
(assert_return
  (invoke "f32.reinterpret_i32" (i32.const -6_291_456))
  (f32.const -nan:0x200000)
)
(assert_return (invoke "f64.reinterpret_i64" (i64.const 0)) (f64.const 0))
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const 1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const -1))
  (f64.const -nan:0xfffffffffffff)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const -9_223_372_036_854_775_808))
  (f64.const -0)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const 1_234_567_890))
  (f64.const 6.099_575_819_077_150_2e-315)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const -9_223_372_036_854_775_807))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const 9_218_868_437_227_405_312))
  (f64.const inf)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const -4_503_599_627_370_496))
  (f64.const -inf)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const 9_221_120_237_041_090_560))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const -2_251_799_813_685_248))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const 9_219_994_337_134_247_936))
  (f64.const nan:0x4000000000000)
)
(assert_return
  (invoke "f64.reinterpret_i64" (i64.const -3_377_699_720_527_872))
  (f64.const -nan:0x4000000000000)
)
(assert_return (invoke "i32.reinterpret_f32" (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const -0))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const -nan:0x7fffff))
  (i32.const -1)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const -2_147_483_647)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const 1))
  (i32.const 1_065_353_216)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const 3.141_592_502_593_994_1))
  (i32.const 1_078_530_010)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 2_139_095_039)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const -8_388_609)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const inf))
  (i32.const 2_139_095_040)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const -inf))
  (i32.const -8_388_608)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const nan:0x400000))
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const -nan:0x400000))
  (i32.const -4_194_304)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const nan:0x200000))
  (i32.const 2_141_192_192)
)
(assert_return
  (invoke "i32.reinterpret_f32" (f32.const -nan:0x200000))
  (i32.const -6_291_456)
)
(assert_return (invoke "i64.reinterpret_f64" (f64.const 0)) (i64.const 0))
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const -0))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const 4.940_656_458_412_465_4e-324))
  (i64.const 1)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const -nan:0xfffffffffffff))
  (i64.const -1)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const -4.940_656_458_412_465_4e-324))
  (i64.const -9_223_372_036_854_775_807)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const 1))
  (i64.const 4_607_182_418_800_017_408)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const 3.141_592_653_589_79))
  (i64.const 4_614_256_656_552_045_841)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const 1.797_693_134_862_315_7e+308))
  (i64.const 9_218_868_437_227_405_311)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const -1.797_693_134_862_315_7e+308))
  (i64.const -4_503_599_627_370_497)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const inf))
  (i64.const 9_218_868_437_227_405_312)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const -inf))
  (i64.const -4_503_599_627_370_496)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const nan:0x8000000000000))
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const -nan:0x8000000000000))
  (i64.const -2_251_799_813_685_248)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const nan:0x4000000000000))
  (i64.const 9_219_994_337_134_247_936)
)
(assert_return
  (invoke "i64.reinterpret_f64" (f64.const -nan:0x4000000000000))
  (i64.const -3_377_699_720_527_872)
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (f32.const 0) (i32.wrap_i64))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.trunc_f32_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.trunc_f32_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.trunc_f64_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.trunc_f64_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (i32.reinterpret_f32))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (f32.const 0) (i64.extend_i32_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (f32.const 0) (i64.extend_i32_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.trunc_f32_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.trunc_f32_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.trunc_f64_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.trunc_f64_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (i32.const 0) (i64.reinterpret_f64))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.convert_i32_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.convert_i32_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i32.const 0) (f32.convert_i64_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i32.const 0) (f32.convert_i64_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i32.const 0) (f32.demote_f64))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.reinterpret_i32))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f64.convert_i32_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f64.convert_i32_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i32.const 0) (f64.convert_i64_s))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i32.const 0) (f64.convert_i64_u))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i32.const 0) (f64.promote_f32))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i32.const 0) (f64.reinterpret_i64))
  )
  "type mismatch"
)
