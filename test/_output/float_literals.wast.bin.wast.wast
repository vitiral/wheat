(module
  (type $0 (func (result i32)))
  (type $1 (func (result i64)))
  (type $2 (func (result f32)))
  (type $3 (func (result f64)))
  (func $0 (type 0) (f32.const nan:0x400000) (i32.reinterpret_f32))
  (func $1 (type 0) (f32.const nan:0x400000) (i32.reinterpret_f32))
  (func $2 (type 0) (f32.const -nan:0x400000) (i32.reinterpret_f32))
  (func $3 (type 0) (f32.const nan:0x400000) (i32.reinterpret_f32))
  (func $4 (type 0) (f32.const nan:0x200000) (i32.reinterpret_f32))
  (func $5 (type 0) (f32.const -nan:0x7fffff) (i32.reinterpret_f32))
  (func $6 (type 0) (f32.const nan:0x12345) (i32.reinterpret_f32))
  (func $7 (type 0) (f32.const nan:0x304050) (i32.reinterpret_f32))
  (func $8 (type 0) (f32.const -nan:0x2abcde) (i32.reinterpret_f32))
  (func $9 (type 0) (f32.const inf) (i32.reinterpret_f32))
  (func $10 (type 0) (f32.const inf) (i32.reinterpret_f32))
  (func $11 (type 0) (f32.const -inf) (i32.reinterpret_f32))
  (func $12 (type 0) (f32.const 0) (i32.reinterpret_f32))
  (func $13 (type 0) (f32.const 0) (i32.reinterpret_f32))
  (func $14 (type 0) (f32.const -0) (i32.reinterpret_f32))
  (func $15 (type 0) (f32.const 6.283_185_482_025_146_5) (i32.reinterpret_f32))
  (func $16
    (type 0)
    (f32.const 1.401_298_464_324_817_1e-45)
    (i32.reinterpret_f32)
  )
  (func $17
    (type 0)
    (f32.const 1.175_494_350_822_287_5e-38)
    (i32.reinterpret_f32)
  )
  (func $18
    (type 0)
    (f32.const 3.402_823_466_385_288_6e+38)
    (i32.reinterpret_f32)
  )
  (func $19
    (type 0)
    (f32.const 1.175_494_210_692_441_1e-38)
    (i32.reinterpret_f32)
  )
  (func $20 (type 0) (f32.const 1_024) (i32.reinterpret_f32))
  (func $21 (type 0) (f32.const 0) (i32.reinterpret_f32))
  (func $22 (type 0) (f32.const 0) (i32.reinterpret_f32))
  (func $23 (type 0) (f32.const -0) (i32.reinterpret_f32))
  (func $24 (type 0) (f32.const 6.283_185_482_025_146_5) (i32.reinterpret_f32))
  (func $25
    (type 0)
    (f32.const 1.401_298_464_324_817_1e-45)
    (i32.reinterpret_f32)
  )
  (func $26
    (type 0)
    (f32.const 1.175_494_350_822_287_5e-38)
    (i32.reinterpret_f32)
  )
  (func $27
    (type 0)
    (f32.const 1.175_494_210_692_441_1e-38)
    (i32.reinterpret_f32)
  )
  (func $28
    (type 0)
    (f32.const 3.402_823_466_385_288_6e+38)
    (i32.reinterpret_f32)
  )
  (func $29 (type 0) (f32.const 10_000_000_000) (i32.reinterpret_f32))
  (func $30 (type 0) (f32.const 1.000_000_119_209_289_6) (i32.reinterpret_f32))
  (func $31 (type 1) (f64.const nan:0x8000000000000) (i64.reinterpret_f64))
  (func $32 (type 1) (f64.const nan:0x8000000000000) (i64.reinterpret_f64))
  (func $33 (type 1) (f64.const -nan:0x8000000000000) (i64.reinterpret_f64))
  (func $34 (type 1) (f64.const nan:0x8000000000000) (i64.reinterpret_f64))
  (func $35 (type 1) (f64.const nan:0x4000000000000) (i64.reinterpret_f64))
  (func $36 (type 1) (f64.const -nan:0xfffffffffffff) (i64.reinterpret_f64))
  (func $37 (type 1) (f64.const nan:0x123456789abc) (i64.reinterpret_f64))
  (func $38 (type 1) (f64.const nan:0x3040506070809) (i64.reinterpret_f64))
  (func $39 (type 1) (f64.const -nan:0x2abcdef012345) (i64.reinterpret_f64))
  (func $40 (type 1) (f64.const inf) (i64.reinterpret_f64))
  (func $41 (type 1) (f64.const inf) (i64.reinterpret_f64))
  (func $42 (type 1) (f64.const -inf) (i64.reinterpret_f64))
  (func $43 (type 1) (f64.const 0) (i64.reinterpret_f64))
  (func $44 (type 1) (f64.const 0) (i64.reinterpret_f64))
  (func $45 (type 1) (f64.const -0) (i64.reinterpret_f64))
  (func $46 (type 1) (f64.const 6.283_185_307_179_586_2) (i64.reinterpret_f64))
  (func $47
    (type 1)
    (f64.const 4.940_656_458_412_465_4e-324)
    (i64.reinterpret_f64)
  )
  (func $48
    (type 1)
    (f64.const 2.225_073_858_507_201_4e-308)
    (i64.reinterpret_f64)
  )
  (func $49
    (type 1)
    (f64.const 2.225_073_858_507_200_9e-308)
    (i64.reinterpret_f64)
  )
  (func $50
    (type 1)
    (f64.const 1.797_693_134_862_315_7e+308)
    (i64.reinterpret_f64)
  )
  (func $51
    (type 1)
    (f64.const 1.267_650_600_228_229_4e+30)
    (i64.reinterpret_f64)
  )
  (func $52 (type 1) (f64.const 0) (i64.reinterpret_f64))
  (func $53 (type 1) (f64.const 0) (i64.reinterpret_f64))
  (func $54 (type 1) (f64.const -0) (i64.reinterpret_f64))
  (func $55 (type 1) (f64.const 6.283_185_307_179_586_2) (i64.reinterpret_f64))
  (func $56
    (type 1)
    (f64.const 4.940_656_458_412_465_4e-324)
    (i64.reinterpret_f64)
  )
  (func $57
    (type 1)
    (f64.const 2.225_073_858_507_201_4e-308)
    (i64.reinterpret_f64)
  )
  (func $58
    (type 1)
    (f64.const 2.225_073_858_507_200_9e-308)
    (i64.reinterpret_f64)
  )
  (func $59
    (type 1)
    (f64.const 1.797_693_134_862_315_7e+308)
    (i64.reinterpret_f64)
  )
  (func $60 (type 1) (f64.const 1e+100) (i64.reinterpret_f64))
  (func $61 (type 1) (f64.const 1.000_000_119_000_000_1) (i64.reinterpret_f64))
  (func $62 (type 2) (f32.const 1_000_000))
  (func $63 (type 2) (f32.const 1_000))
  (func $64 (type 2) (f32.const 1_003.141_601_562_5))
  (func $65 (type 2) (f32.const 990_000_028_057_600))
  (func $66 (type 2) (f32.const 1.220_001_185_726_903_4e+28))
  (func $67 (type 2) (f32.const 168_755_360))
  (func $68 (type 2) (f32.const 109_071))
  (func $69 (type 2) (f32.const 41_215.941_406_25))
  (func $70 (type 2) (f32.const 1_966_080))
  (func $71 (type 2) (f32.const 23_605_224_144_896))
  (func $72 (type 3) (f64.const 1_000_000))
  (func $73 (type 3) (f64.const 1_000))
  (func $74 (type 3) (f64.const 1_003.141_591_999_999_9))
  (func $75 (type 3) (f64.const 9.899_999_999_999_999_4e-122))
  (func $76 (type 3) (f64.const 1.220_001_135_4e+28))
  (func $77 (type 3) (f64.const 3_078_696_982_321_561))
  (func $78 (type 3) (f64.const 109_071))
  (func $79 (type 3) (f64.const 41_215.942_407_941_911))
  (func $80 (type 3) (f64.const 1_966_080))
  (func $81 (type 3) (f64.const 23_605_225_168_752))
  (export "f32.nan" (func 0))
  (export "f32.positive_nan" (func 1))
  (export "f32.negative_nan" (func 2))
  (export "f32.plain_nan" (func 3))
  (export "f32.informally_known_as_plain_snan" (func 4))
  (export "f32.all_ones_nan" (func 5))
  (export "f32.misc_nan" (func 6))
  (export "f32.misc_positive_nan" (func 7))
  (export "f32.misc_negative_nan" (func 8))
  (export "f32.infinity" (func 9))
  (export "f32.positive_infinity" (func 10))
  (export "f32.negative_infinity" (func 11))
  (export "f32.zero" (func 12))
  (export "f32.positive_zero" (func 13))
  (export "f32.negative_zero" (func 14))
  (export "f32.misc" (func 15))
  (export "f32.min_positive" (func 16))
  (export "f32.min_normal" (func 17))
  (export "f32.max_finite" (func 18))
  (export "f32.max_subnormal" (func 19))
  (export "f32.trailing_dot" (func 20))
  (export "f32_dec.zero" (func 21))
  (export "f32_dec.positive_zero" (func 22))
  (export "f32_dec.negative_zero" (func 23))
  (export "f32_dec.misc" (func 24))
  (export "f32_dec.min_positive" (func 25))
  (export "f32_dec.min_normal" (func 26))
  (export "f32_dec.max_subnormal" (func 27))
  (export "f32_dec.max_finite" (func 28))
  (export "f32_dec.trailing_dot" (func 29))
  (export "f32_dec.root_beer_float" (func 30))
  (export "f64.nan" (func 31))
  (export "f64.positive_nan" (func 32))
  (export "f64.negative_nan" (func 33))
  (export "f64.plain_nan" (func 34))
  (export "f64.informally_known_as_plain_snan" (func 35))
  (export "f64.all_ones_nan" (func 36))
  (export "f64.misc_nan" (func 37))
  (export "f64.misc_positive_nan" (func 38))
  (export "f64.misc_negative_nan" (func 39))
  (export "f64.infinity" (func 40))
  (export "f64.positive_infinity" (func 41))
  (export "f64.negative_infinity" (func 42))
  (export "f64.zero" (func 43))
  (export "f64.positive_zero" (func 44))
  (export "f64.negative_zero" (func 45))
  (export "f64.misc" (func 46))
  (export "f64.min_positive" (func 47))
  (export "f64.min_normal" (func 48))
  (export "f64.max_subnormal" (func 49))
  (export "f64.max_finite" (func 50))
  (export "f64.trailing_dot" (func 51))
  (export "f64_dec.zero" (func 52))
  (export "f64_dec.positive_zero" (func 53))
  (export "f64_dec.negative_zero" (func 54))
  (export "f64_dec.misc" (func 55))
  (export "f64_dec.min_positive" (func 56))
  (export "f64_dec.min_normal" (func 57))
  (export "f64_dec.max_subnormal" (func 58))
  (export "f64_dec.max_finite" (func 59))
  (export "f64_dec.trailing_dot" (func 60))
  (export "f64_dec.root_beer_float" (func 61))
  (export "f32-dec-sep1" (func 62))
  (export "f32-dec-sep2" (func 63))
  (export "f32-dec-sep3" (func 64))
  (export "f32-dec-sep4" (func 65))
  (export "f32-dec-sep5" (func 66))
  (export "f32-hex-sep1" (func 67))
  (export "f32-hex-sep2" (func 68))
  (export "f32-hex-sep3" (func 69))
  (export "f32-hex-sep4" (func 70))
  (export "f32-hex-sep5" (func 71))
  (export "f64-dec-sep1" (func 72))
  (export "f64-dec-sep2" (func 73))
  (export "f64-dec-sep3" (func 74))
  (export "f64-dec-sep4" (func 75))
  (export "f64-dec-sep5" (func 76))
  (export "f64-hex-sep1" (func 77))
  (export "f64-hex-sep2" (func 78))
  (export "f64-hex-sep3" (func 79))
  (export "f64-hex-sep4" (func 80))
  (export "f64-hex-sep5" (func 81))
)
(assert_return (invoke "f32.nan") (i32.const 2_143_289_344))
(assert_return (invoke "f32.positive_nan") (i32.const 2_143_289_344))
(assert_return (invoke "f32.negative_nan") (i32.const -4_194_304))
(assert_return (invoke "f32.plain_nan") (i32.const 2_143_289_344))
(assert_return
  (invoke "f32.informally_known_as_plain_snan")
  (i32.const 2_141_192_192)
)
(assert_return (invoke "f32.all_ones_nan") (i32.const -1))
(assert_return (invoke "f32.misc_nan") (i32.const 2_139_169_605))
(assert_return (invoke "f32.misc_positive_nan") (i32.const 2_142_257_232))
(assert_return (invoke "f32.misc_negative_nan") (i32.const -5_587_746))
(assert_return (invoke "f32.infinity") (i32.const 2_139_095_040))
(assert_return (invoke "f32.positive_infinity") (i32.const 2_139_095_040))
(assert_return (invoke "f32.negative_infinity") (i32.const -8_388_608))
(assert_return (invoke "f32.zero") (i32.const 0))
(assert_return (invoke "f32.positive_zero") (i32.const 0))
(assert_return (invoke "f32.negative_zero") (i32.const -2_147_483_648))
(assert_return (invoke "f32.misc") (i32.const 1_086_918_619))
(assert_return (invoke "f32.min_positive") (i32.const 1))
(assert_return (invoke "f32.min_normal") (i32.const 8_388_608))
(assert_return (invoke "f32.max_subnormal") (i32.const 8_388_607))
(assert_return (invoke "f32.max_finite") (i32.const 2_139_095_039))
(assert_return (invoke "f32.trailing_dot") (i32.const 1_149_239_296))
(assert_return (invoke "f32_dec.zero") (i32.const 0))
(assert_return (invoke "f32_dec.positive_zero") (i32.const 0))
(assert_return (invoke "f32_dec.negative_zero") (i32.const -2_147_483_648))
(assert_return (invoke "f32_dec.misc") (i32.const 1_086_918_619))
(assert_return (invoke "f32_dec.min_positive") (i32.const 1))
(assert_return (invoke "f32_dec.min_normal") (i32.const 8_388_608))
(assert_return (invoke "f32_dec.max_subnormal") (i32.const 8_388_607))
(assert_return (invoke "f32_dec.max_finite") (i32.const 2_139_095_039))
(assert_return (invoke "f32_dec.trailing_dot") (i32.const 1_343_554_297))
(assert_return (invoke "f32_dec.root_beer_float") (i32.const 1_065_353_217))
(assert_return (invoke "f64.nan") (i64.const 9_221_120_237_041_090_560))
(assert_return
  (invoke "f64.positive_nan")
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return (invoke "f64.negative_nan") (i64.const -2_251_799_813_685_248))
(assert_return (invoke "f64.plain_nan") (i64.const 9_221_120_237_041_090_560))
(assert_return
  (invoke "f64.informally_known_as_plain_snan")
  (i64.const 9_219_994_337_134_247_936)
)
(assert_return (invoke "f64.all_ones_nan") (i64.const -1))
(assert_return (invoke "f64.misc_nan") (i64.const 9_218_888_453_225_749_180))
(assert_return
  (invoke "f64.misc_positive_nan")
  (i64.const 9_219_717_281_780_008_969)
)
(assert_return
  (invoke "f64.misc_negative_nan")
  (i64.const -3_751_748_707_474_619)
)
(assert_return (invoke "f64.infinity") (i64.const 9_218_868_437_227_405_312))
(assert_return
  (invoke "f64.positive_infinity")
  (i64.const 9_218_868_437_227_405_312)
)
(assert_return
  (invoke "f64.negative_infinity")
  (i64.const -4_503_599_627_370_496)
)
(assert_return (invoke "f64.zero") (i64.const 0))
(assert_return (invoke "f64.positive_zero") (i64.const 0))
(assert_return
  (invoke "f64.negative_zero")
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return (invoke "f64.misc") (i64.const 4_618_760_256_179_416_344))
(assert_return (invoke "f64.min_positive") (i64.const 1))
(assert_return (invoke "f64.min_normal") (i64.const 4_503_599_627_370_496))
(assert_return (invoke "f64.max_subnormal") (i64.const 4_503_599_627_370_495))
(assert_return (invoke "f64.max_finite") (i64.const 9_218_868_437_227_405_311))
(assert_return
  (invoke "f64.trailing_dot")
  (i64.const 5_057_542_381_537_067_008)
)
(assert_return (invoke "f64_dec.zero") (i64.const 0))
(assert_return (invoke "f64_dec.positive_zero") (i64.const 0))
(assert_return
  (invoke "f64_dec.negative_zero")
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return (invoke "f64_dec.misc") (i64.const 4_618_760_256_179_416_344))
(assert_return (invoke "f64_dec.min_positive") (i64.const 1))
(assert_return (invoke "f64_dec.min_normal") (i64.const 4_503_599_627_370_496))
(assert_return
  (invoke "f64_dec.max_subnormal")
  (i64.const 4_503_599_627_370_495)
)
(assert_return
  (invoke "f64_dec.max_finite")
  (i64.const 9_218_868_437_227_405_311)
)
(assert_return
  (invoke "f64_dec.trailing_dot")
  (i64.const 6_103_021_453_049_119_613)
)
(assert_return
  (invoke "f64_dec.root_beer_float")
  (i64.const 4_607_182_419_335_945_764)
)
(assert_return (invoke "f32-dec-sep1") (f32.const 1_000_000))
(assert_return (invoke "f32-dec-sep2") (f32.const 1_000))
(assert_return (invoke "f32-dec-sep3") (f32.const 1_003.141_601_562_5))
(assert_return (invoke "f32-dec-sep4") (f32.const 990_000_028_057_600))
(assert_return (invoke "f32-dec-sep5") (f32.const 1.220_001_185_726_903_4e+28))
(assert_return (invoke "f32-hex-sep1") (f32.const 168_755_360))
(assert_return (invoke "f32-hex-sep2") (f32.const 109_071))
(assert_return (invoke "f32-hex-sep3") (f32.const 41_215.941_406_25))
(assert_return (invoke "f32-hex-sep4") (f32.const 1_966_080))
(assert_return (invoke "f32-hex-sep5") (f32.const 23_605_224_144_896))
(assert_return (invoke "f64-dec-sep1") (f64.const 1_000_000))
(assert_return (invoke "f64-dec-sep2") (f64.const 1_000))
(assert_return (invoke "f64-dec-sep3") (f64.const 1_003.141_591_999_999_9))
(assert_return (invoke "f64-dec-sep4") (f64.const 9.899_999_999_999_999_4e-122))
(assert_return (invoke "f64-dec-sep5") (f64.const 1.220_001_135_4e+28))
(assert_return (invoke "f64-hex-sep1") (f64.const 3_078_696_982_321_561))
(assert_return (invoke "f64-hex-sep2") (f64.const 109_071))
(assert_return (invoke "f64-hex-sep3") (f64.const 41_215.942_407_941_911))
(assert_return (invoke "f64-hex-sep4") (f64.const 1_966_080))
(assert_return (invoke "f64-hex-sep5") (f64.const 23_605_225_168_752))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4_294_967_249))
  (export "4294967249" (func 0))
)
(assert_return (invoke "4294967249") (f64.const 4_294_967_249))
(assert_malformed
  (module quote "(global f32 (f32.const _100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const +_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const -_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 99_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1__000))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const _1.0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1.0_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1_.0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1._0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const _1e1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1e1_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1_e1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1e_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const _1.0e1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1.0e1_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1.0_e1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1.0e_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1.0e+_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 1.0e_+1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const _0x100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0_x100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x00_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0xff__ffff))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x_1.0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1.0_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1_.0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1._0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x_1p1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1p1_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1_p1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1p_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x_1.0p1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1.0p1_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1.0_p1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1.0p_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1.0p+_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f32 (f32.const 0x1.0p_+1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const _100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const +_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const -_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 99_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1__000))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const _1.0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1.0_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1_.0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1._0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const _1e1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1e1_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1_e1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1e_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const _1.0e1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1.0e1_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1.0_e1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1.0e_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1.0e+_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 1.0e_+1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const _0x100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0_x100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x_100))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x00_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0xff__ffff))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x_1.0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1.0_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1_.0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1._0))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x_1p1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1p1_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1_p1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1p_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x_1.0p1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1.0p1_))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1.0_p1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1.0p_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1.0p+_1))")
  "unknown operator"
)
(assert_malformed
  (module quote "(global f64 (f64.const 0x1.0p_+1))")
  "unknown operator"
)
