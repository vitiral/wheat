(module (type $0 (func)) (func $0 (type 0) (i32.const 123_456_789) (drop)))
(module (type $0 (func)) (func $0 (type 0) (i32.const -1_697_645_601) (drop)))
(assert_malformed (module quote "(func (i32.const) drop)") "unexpected token")
(assert_malformed
  (module quote "(func (i32.const 0x) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (i32.const 1x) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (i32.const 0xg) drop)")
  "unknown operator"
)
(module (type $0 (func)) (func $0 (type 0) (i64.const 123_456_789) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (i64.const 82_586_009_202_572_527) (drop))
)
(assert_malformed (module quote "(func (i64.const) drop)") "unexpected token")
(assert_malformed
  (module quote "(func (i64.const 0x) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (i64.const 1x) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (i64.const 0xg) drop)")
  "unknown operator"
)
(module (type $0 (func)) (func $0 (type 0) (f32.const 123_456_792) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_900_681_729_9e+27) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_900_681_729_9e+27) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_916_647_000_3e-11) (drop))
)
(module (type $0 (func)) (func $0 (type 0) (f32.const 123_456_792) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_900_681_729_9e+27) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_900_681_729_9e+27) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_916_647_000_3e-11) (drop))
)
(module (type $0 (func)) (func $0 (type 0) (f32.const 123_456_792) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_900_681_729_9e+27) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_900_681_729_9e+27) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.234_567_916_647_000_3e-11) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 81_985_531_201_716_224) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 4.298_403_018_268_539_6e+22) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 4.298_403_018_268_539_6e+22) (drop))
)
(module (type $0 (func)) (func $0 (type 0) (f32.const 156_374_990_848) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 81_985_531_201_716_224) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 4.298_403_018_268_539_6e+22) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 4.298_403_018_268_539_6e+22) (drop))
)
(module (type $0 (func)) (func $0 (type 0) (f32.const 156_374_990_848) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 81_985_531_201_716_224) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 4.298_403_018_268_539_6e+22) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 4.298_403_018_268_539_6e+22) (drop))
)
(module (type $0 (func)) (func $0 (type 0) (f32.const 156_374_990_848) (drop)))
(assert_malformed (module quote "(func (f32.const) drop)") "unexpected token")
(assert_malformed
  (module quote "(func (f32.const .0) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const .0e0) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0e) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0e+) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0.0e) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0.0e-) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 1x) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0xg) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x.) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x0.g) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x0p) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x0p+) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x0p-) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x0.0p) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x0.0p+) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x0.0p-) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const 0x0pA) drop)")
  "unknown operator"
)
(module (type $0 (func)) (func $0 (type 0) (f64.const 123_456_789) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const 1.234_567_89e+27) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const 1.234_567_89e+27) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const 1.234_567_89e-11) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const 123_456_789) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const 1.234_567_89e+27) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const 1.234_567_89e+27) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const 1.234_567_89e-11) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 123_456_789.012_345_67) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.234_567_890_123_456_9e+27) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.234_567_890_123_456_9e+27) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.234_567_890_123_456_8e-11) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.375_488_932_539_311_4e+24) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 7.211_523_414_631_705e+29) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 7.211_523_414_631_705e+29) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 2.623_536_934_927_580_7e+18) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.375_488_932_539_311_4e+24) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 7.211_523_414_631_705e+29) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 7.211_523_414_631_705e+29) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 2.623_536_934_927_580_7e+18) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.375_488_932_539_311_4e+24) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 7.211_523_414_631_705e+29) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 7.211_523_414_631_705e+29) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 2.623_536_934_927_580_7e+18) (drop))
)
(assert_malformed (module quote "(func (f64.const) drop)") "unexpected token")
(assert_malformed
  (module quote "(func (f64.const .0) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const .0e0) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0e) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0e+) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0.0e) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0.0e-) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 1x) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0xg) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x.) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x0.g) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x0p) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x0p+) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x0p-) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x0.0p) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x0.0p+) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x0.0p-) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const 0x0pA) drop)")
  "unknown operator"
)
(module (type $0 (func)) (func $0 (type 0) (i32.const -1) (drop)))
(module (type $0 (func)) (func $0 (type 0) (i32.const -2_147_483_648) (drop)))
(assert_malformed
  (module quote "(func (i32.const 0x100000000) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (i32.const -0x80000001) drop)")
  "constant out of range"
)
(module (type $0 (func)) (func $0 (type 0) (i32.const -1) (drop)))
(module (type $0 (func)) (func $0 (type 0) (i32.const -2_147_483_648) (drop)))
(assert_malformed
  (module quote "(func (i32.const 4294967296) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (i32.const -2147483649) drop)")
  "constant out of range"
)
(module (type $0 (func)) (func $0 (type 0) (i64.const -1) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (i64.const -9_223_372_036_854_775_808) (drop))
)
(assert_malformed
  (module quote "(func (i64.const 0x10000000000000000) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (i64.const -0x8000000000000001) drop)")
  "constant out of range"
)
(module (type $0 (func)) (func $0 (type 0) (i64.const -1) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (i64.const -9_223_372_036_854_775_808) (drop))
)
(assert_malformed
  (module quote "(func (i64.const 18446744073709551616) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (i64.const -9223372036854775809) drop)")
  "constant out of range"
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 1.701_411_834_604_692_3e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const -1.701_411_834_604_692_3e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 3.402_823_466_385_288_6e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const -3.402_823_466_385_288_6e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 3.402_823_466_385_288_6e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const -3.402_823_466_385_288_6e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 3.402_823_466_385_288_6e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const -3.402_823_466_385_288_6e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 3.402_823_466_385_288_6e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const -3.402_823_466_385_288_6e+38) (drop))
)
(assert_malformed
  (module quote "(func (f32.const 0x1p128) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f32.const -0x1p128) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f32.const 0x1.ffffffp127) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f32.const -0x1.ffffffp127) drop)")
  "constant out of range"
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 9.999_999_680_285_692_5e+37) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const -9.999_999_680_285_692_5e+37) (drop))
)
(assert_malformed
  (module quote "(func (f32.const 1e39) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f32.const -1e39) drop)")
  "constant out of range"
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const 3.402_823_466_385_288_6e+38) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f32.const -3.402_823_466_385_288_6e+38) (drop))
)
(assert_malformed
  (module quote
    "(func (f32.const 340282356779733661637539395458142568448) drop)"
  )
  "constant out of range"
)
(assert_malformed
  (module quote
    "(func (f32.const -340282356779733661637539395458142568448) drop)"
  )
  "constant out of range"
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 8.988_465_674_311_579_5e+307) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const -8.988_465_674_311_579_5e+307) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.797_693_134_862_315_7e+308) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const -1.797_693_134_862_315_7e+308) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.797_693_134_862_315_7e+308) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const -1.797_693_134_862_315_7e+308) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.797_693_134_862_315_7e+308) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const -1.797_693_134_862_315_7e+308) (drop))
)
(assert_malformed
  (module quote "(func (f64.const 0x1p1024) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f64.const -0x1p1024) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f64.const 0x1.fffffffffffff8p1023) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f64.const -0x1.fffffffffffff8p1023) drop)")
  "constant out of range"
)
(module (type $0 (func)) (func $0 (type 0) (f64.const 1e+308) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const -1e+308) (drop)))
(assert_malformed
  (module quote "(func (f64.const 1e309) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f64.const -1e309) drop)")
  "constant out of range"
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const 1.797_693_134_862_315_7e+308) (drop))
)
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const -1.797_693_134_862_315_7e+308) (drop))
)
(assert_malformed
  (module quote
    "(func (f64.const 269653970229347356221791135597556535197105851288767494898376215204735891170042808140884337949150317257310688430271573696351481990334196274152701320055306275479074865864826923114368235135583993416113802762682700913456874855354834422248712838998185022412196739306217084753107265771378949821875606039276187287552) drop)"
  )
  "constant out of range"
)
(assert_malformed
  (module quote
    "(func (f64.const -269653970229347356221791135597556535197105851288767494898376215204735891170042808140884337949150317257310688430271573696351481990334196274152701320055306275479074865864826923114368235135583993416113802762682700913456874855354834422248712838998185022412196739306217084753107265771378949821875606039276187287552) drop)"
  )
  "constant out of range"
)
(module (type $0 (func)) (func $0 (type 0) (f32.const nan:0x1) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f64.const nan:0x1) (drop)))
(module (type $0 (func)) (func $0 (type 0) (f32.const nan:0x7fffff) (drop)))
(module
  (type $0 (func))
  (func $0 (type 0) (f64.const nan:0xfffffffffffff) (drop))
)
(assert_malformed
  (module quote "(func (f32.const nan:1) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f64.const nan:1) drop)")
  "unknown operator"
)
(assert_malformed
  (module quote "(func (f32.const nan:0x0) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f64.const nan:0x0) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f32.const nan:0x80_0000) drop)")
  "constant out of range"
)
(assert_malformed
  (module quote "(func (f64.const nan:0x10_0000_0000_0000) drop)")
  "constant out of range"
)
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_784_197_001_252_3e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_784_197_001_252_3e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_784_197_001_252_3e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_784_197_001_252_3e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_787_373_374_804_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_787_373_374_804_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_787_373_374_804_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_787_373_374_804_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_784_197_001_252_3e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_784_197_001_252_3e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_784_197_001_252_3e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_784_197_001_252_3e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_787_373_374_804_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_787_373_374_804_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_787_373_374_804_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_787_373_374_804_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_784_197_001_252_3e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_784_197_001_252_3e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_784_197_001_252_3e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_784_197_001_252_3e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_785_255_792_436_4e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_785_255_792_436_4e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -8.881_786_314_583_620_5e-16))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -8.881_786_314_583_620_5e-16))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_899_906_842_624))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_899_906_842_624))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_899_906_842_624))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_899_906_842_624))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_309_495_808))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_309_495_808))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_309_495_808))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_309_495_808))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_899_906_842_624))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_899_906_842_624))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_899_906_842_624))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_899_906_842_624))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_899_906_842_624))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_899_906_842_624))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_899_906_842_624))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_899_906_842_624))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_041_060_352))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_041_060_352))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1_125_900_175_278_080))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1_125_900_175_278_080))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 0))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 0))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -0))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -0))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -1.401_298_464_324_817_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -1.401_298_464_324_817_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -2.802_596_928_649_634_1e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -2.802_596_928_649_634_1e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 4.203_895_392_974_451_2e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 4.203_895_392_974_451_2e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -4.203_895_392_974_451_2e-45))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -4.203_895_392_974_451_2e-45))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 3.402_823_466_385_288_6e+38))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 3.402_823_466_385_288_6e+38))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -3.402_823_466_385_288_6e+38))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -3.402_823_466_385_288_6e+38))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 3.402_823_466_385_288_6e+38))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 3.402_823_466_385_288_6e+38))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -3.402_823_466_385_288_6e+38))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -3.402_823_466_385_288_6e+38))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const 3.402_823_466_385_288_6e+38))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const 3.402_823_466_385_288_6e+38))
(module
  (type $0 (func (result f32)))
  (func $0 (type 0) (f32.const -3.402_823_466_385_288_6e+38))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f32.const -3.402_823_466_385_288_6e+38))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_1e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_1e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_1e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_1e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_1e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_1e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_1e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_1e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_884_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_884_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_2e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_2e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.409_919_865_102_885_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.409_919_865_102_885_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.409_919_865_102_885_7e-181))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.409_919_865_102_885_7e-181))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 5.357_543_035_931_336_6e+300))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 5.357_543_035_931_336_6e+300))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -5.357_543_035_931_336_6e+300))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -5.357_543_035_931_336_6e+300))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 5.357_543_035_931_337_8e+300))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 5.357_543_035_931_337_8e+300))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -5.357_543_035_931_337_8e+300))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -5.357_543_035_931_337_8e+300))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 5.357_543_035_931_337_8e+300))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 5.357_543_035_931_337_8e+300))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -5.357_543_035_931_337_8e+300))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -5.357_543_035_931_337_8e+300))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 5.357_543_035_931_339e+300))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 5.357_543_035_931_339e+300))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -5.357_543_035_931_339e+300))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -5.357_543_035_931_339e+300))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_993e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_993e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_993e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_993e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_993_9e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_993_9e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_994_8e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_994_8e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.149_515_568_880_995_7e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.149_515_568_880_995_7e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.149_515_568_880_995_7e+180))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.149_515_568_880_995_7e+180))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_286_8e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_286_8e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_286_8e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_286_8e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_1e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_1e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_5e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_5e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.584_563_250_285_287_8e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.584_563_250_285_287_8e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.584_563_250_285_287_8e+29))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.584_563_250_285_287_8e+29))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.152_921_504_606_847e+18))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.152_921_504_606_847e+18))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.152_921_504_606_847e+18))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.152_921_504_606_847e+18))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.152_921_504_606_847_2e+18))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.152_921_504_606_847_2e+18))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.152_921_504_606_847_2e+18))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.152_921_504_606_847_2e+18))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.152_921_504_606_847_2e+18))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.152_921_504_606_847_2e+18))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.152_921_504_606_847_2e+18))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.152_921_504_606_847_2e+18))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.152_921_504_606_847_5e+18))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.152_921_504_606_847_5e+18))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.152_921_504_606_847_5e+18))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.152_921_504_606_847_5e+18))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 0))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 0))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -0))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -0))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -4.940_656_458_412_465_4e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -4.940_656_458_412_465_4e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -9.881_312_916_824_930_9e-324))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -9.881_312_916_824_930_9e-324))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 2.225_073_858_507_202_9e-308))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 2.225_073_858_507_202_9e-308))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -2.225_073_858_507_202_9e-308))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -2.225_073_858_507_202_9e-308))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.797_693_134_862_315_7e+308))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.797_693_134_862_315_7e+308))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.797_693_134_862_315_7e+308))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.797_693_134_862_315_7e+308))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const 1.797_693_134_862_315_7e+308))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const 1.797_693_134_862_315_7e+308))
(module
  (type $0 (func (result f64)))
  (func $0 (type 0) (f64.const -1.797_693_134_862_315_7e+308))
  (export "f" (func 0))
)
(assert_return (invoke "f") (f64.const -1.797_693_134_862_315_7e+308))
