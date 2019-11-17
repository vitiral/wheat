(module
  (type $0 (func (param f32 f32) (result f32)))
  (type $1 (func (param f32) (result f32)))
  (func $0 (type 0) (local.get 0) (local.get 1) (f32.add))
  (func $1 (type 0) (local.get 0) (local.get 1) (f32.sub))
  (func $2 (type 0) (local.get 0) (local.get 1) (f32.mul))
  (func $3 (type 0) (local.get 0) (local.get 1) (f32.div))
  (func $4 (type 1) (local.get 0) (f32.sqrt))
  (func $5 (type 0) (local.get 0) (local.get 1) (f32.min))
  (func $6 (type 0) (local.get 0) (local.get 1) (f32.max))
  (func $7 (type 1) (local.get 0) (f32.ceil))
  (func $8 (type 1) (local.get 0) (f32.floor))
  (func $9 (type 1) (local.get 0) (f32.trunc))
  (func $10 (type 1) (local.get 0) (f32.nearest))
  (export "add" (func 0))
  (export "sub" (func 1))
  (export "mul" (func 2))
  (export "div" (func 3))
  (export "sqrt" (func 4))
  (export "min" (func 5))
  (export "max" (func 6))
  (export "ceil" (func 7))
  (export "floor" (func 8))
  (export "trunc" (func 9))
  (export "nearest" (func 10))
)
(assert_return (invoke "add" (f32.const -0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "add" (f32.const -0) (f32.const 0)) (f32.const 0))
(assert_return (invoke "add" (f32.const 0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "add" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "add" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "add" (f32.const -0) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const -0) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const -0) (f32.const -1)) (f32.const -1))
(assert_return (invoke "add" (f32.const -0) (f32.const 1)) (f32.const 1))
(assert_return (invoke "add" (f32.const 0) (f32.const -1)) (f32.const -1))
(assert_return (invoke "add" (f32.const 0) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "add" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "add" (f32.const -0) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -0) (f32.const inf)) (f32.const inf))
(assert_return (invoke "add" (f32.const 0) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const 0) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "add" (f32.const -0.5) (f32.const -0)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 0)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -0)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 0)) (f32.const 0.5))
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return (invoke "add" (f32.const -0.5) (f32.const -0.5)) (f32.const -1))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "add" (f32.const -0.5) (f32.const -1)) (f32.const -1.5))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 1)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -1)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 1)) (f32.const 1.5))
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 5.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -5.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "add" (f32.const -0.5) (f32.const inf)) (f32.const inf))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const 0.5) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "add" (f32.const -1) (f32.const -0)) (f32.const -1))
(assert_return (invoke "add" (f32.const -1) (f32.const 0)) (f32.const -1))
(assert_return (invoke "add" (f32.const 1) (f32.const -0)) (f32.const 1))
(assert_return (invoke "add" (f32.const 1) (f32.const 0)) (f32.const 1))
(assert_return
  (invoke "add" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return (invoke "add" (f32.const -1) (f32.const -0.5)) (f32.const -1.5))
(assert_return (invoke "add" (f32.const -1) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 1) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 1) (f32.const 0.5)) (f32.const 1.5))
(assert_return (invoke "add" (f32.const -1) (f32.const -1)) (f32.const -2))
(assert_return (invoke "add" (f32.const -1) (f32.const 1)) (f32.const 0))
(assert_return (invoke "add" (f32.const 1) (f32.const -1)) (f32.const 0))
(assert_return (invoke "add" (f32.const 1) (f32.const 1)) (f32.const 2))
(assert_return
  (invoke "add" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -7.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 5.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -5.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 7.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "add" (f32.const -1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -1) (f32.const inf)) (f32.const inf))
(assert_return (invoke "add" (f32.const 1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const 1) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -6.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -5.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 5.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 6.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -7.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -5.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 5.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 7.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -12.566_370_964_050_293)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 12.566_370_964_050_293)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "add" (f32.const -inf) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -0)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "add" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return_canonical_nan (invoke "add" (f32.const -inf) (f32.const inf)))
(assert_return_canonical_nan (invoke "add" (f32.const inf) (f32.const -inf)))
(assert_return (invoke "add" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "sub" (f32.const -0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "sub" (f32.const -0) (f32.const 0)) (f32.const -0))
(assert_return (invoke "sub" (f32.const 0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "sub" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "sub" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "sub" (f32.const -0) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -0) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const 0) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const 0) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -0) (f32.const -1)) (f32.const 1))
(assert_return (invoke "sub" (f32.const -0) (f32.const 1)) (f32.const -1))
(assert_return (invoke "sub" (f32.const 0) (f32.const -1)) (f32.const 1))
(assert_return (invoke "sub" (f32.const 0) (f32.const 1)) (f32.const -1))
(assert_return
  (invoke "sub" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "sub" (f32.const -0) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -0) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const 0) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const 0) (f32.const inf)) (f32.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -0)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 0)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -0)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 0)) (f32.const 0.5))
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 0.5)) (f32.const -1))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -0.5)) (f32.const 1))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -1)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 1)) (f32.const -1.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -1)) (f32.const 1.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 1)) (f32.const -0.5))
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 5.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -5.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const inf)) (f32.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "sub" (f32.const -1) (f32.const -0)) (f32.const -1))
(assert_return (invoke "sub" (f32.const -1) (f32.const 0)) (f32.const -1))
(assert_return (invoke "sub" (f32.const 1) (f32.const -0)) (f32.const 1))
(assert_return (invoke "sub" (f32.const 1) (f32.const 0)) (f32.const 1))
(assert_return
  (invoke "sub" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return (invoke "sub" (f32.const -1) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -1) (f32.const 0.5)) (f32.const -1.5))
(assert_return (invoke "sub" (f32.const 1) (f32.const -0.5)) (f32.const 1.5))
(assert_return (invoke "sub" (f32.const 1) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -1) (f32.const -1)) (f32.const 0))
(assert_return (invoke "sub" (f32.const -1) (f32.const 1)) (f32.const -2))
(assert_return (invoke "sub" (f32.const 1) (f32.const -1)) (f32.const 2))
(assert_return (invoke "sub" (f32.const 1) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "sub" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 5.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -7.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 7.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -5.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "sub" (f32.const -1) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -1) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const 1) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const 1) (f32.const inf)) (f32.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -5.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -6.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 6.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 5.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -5.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -7.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 7.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 5.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -12.566_370_964_050_293)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 12.566_370_964_050_293)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "sub" (f32.const -inf) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -0)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "sub" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return_canonical_nan (invoke "sub" (f32.const -inf) (f32.const -inf)))
(assert_return (invoke "sub" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "sub" (f32.const inf) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "mul" (f32.const -0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0) (f32.const 0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "mul" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "mul" (f32.const -0) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0) (f32.const 0.5)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0) (f32.const -1)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0) (f32.const 1)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const -1)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "mul" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return_canonical_nan (invoke "mul" (f32.const -0) (f32.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const -0) (f32.const inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const 0) (f32.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const 0) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "mul" (f32.const -0.5) (f32.const -0)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const 0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const -0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -0.5))
  (f32.const 0.25)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 0.5))
  (f32.const -0.25)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -0.5))
  (f32.const -0.25)
)
(assert_return (invoke "mul" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.25))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const -1)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const 1)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const -1)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const 1)) (f32.const 0.5))
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1.701_411_733_192_644_3e+38)
)
(assert_return (invoke "mul" (f32.const -0.5) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "mul" (f32.const -1) (f32.const -0)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -1) (f32.const 0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 1) (f32.const -0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 1) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "mul" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "mul" (f32.const -1) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -1) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 1) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 1) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -1) (f32.const -1)) (f32.const 1))
(assert_return (invoke "mul" (f32.const -1) (f32.const 1)) (f32.const -1))
(assert_return (invoke "mul" (f32.const 1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "mul" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "mul" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "mul" (f32.const -1) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -1) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 1) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 39.478_420_257_568_359)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -39.478_420_257_568_359)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -39.478_420_257_568_359)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 39.478_420_257_568_359)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const 1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan (invoke "mul" (f32.const -inf) (f32.const -0)))
(assert_return_canonical_nan (invoke "mul" (f32.const -inf) (f32.const 0)))
(assert_return_canonical_nan (invoke "mul" (f32.const inf) (f32.const -0)))
(assert_return_canonical_nan (invoke "mul" (f32.const inf) (f32.const 0)))
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return (invoke "mul" (f32.const -inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -0.5)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return (invoke "mul" (f32.const -inf) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan (invoke "div" (f32.const -0) (f32.const -0)))
(assert_return_canonical_nan (invoke "div" (f32.const -0) (f32.const 0)))
(assert_return_canonical_nan (invoke "div" (f32.const 0) (f32.const -0)))
(assert_return_canonical_nan (invoke "div" (f32.const 0) (f32.const 0)))
(assert_return
  (invoke "div" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "div" (f32.const -0) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0) (f32.const 0.5)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0) (f32.const -1)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0) (f32.const 1)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const -1)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "div" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return (invoke "div" (f32.const -0) (f32.const -inf)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0) (f32.const inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const -inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const inf)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "div" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 8_388_608)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -8_388_608)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -8_388_608)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 8_388_608)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 1.870_856_764_138_491_4e-39)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -1.870_856_764_138_491_4e-39)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.870_856_764_138_491_4e-39)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.870_856_764_138_491_4e-39)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -0)) (f32.const inf))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 4.253_529_586_511_730_8e+37)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -4.253_529_586_511_730_8e+37)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -4.253_529_586_511_730_8e+37)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 4.253_529_586_511_730_8e+37)
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -0.5)) (f32.const 1))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 0.5)) (f32.const -1))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -0.5)) (f32.const -1))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "div" (f32.const -0.5) (f32.const -1)) (f32.const 0.5))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 1)) (f32.const -0.5))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -1)) (f32.const -0.5))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 1)) (f32.const 0.5))
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0.079_577_468_335_628_51)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0.079_577_468_335_628_51)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0.079_577_468_335_628_51)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0.079_577_468_335_628_51)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 1.469_367_938_527_859_4e-39)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -1.469_367_938_527_859_4e-39)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -1.469_367_938_527_859_4e-39)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1.469_367_938_527_859_4e-39)
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -inf)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0.5) (f32.const inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0.5) (f32.const inf)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "div" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "div" (f32.const -1) (f32.const -0)) (f32.const inf))
(assert_return (invoke "div" (f32.const -1) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 1) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 1) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 8.507_059_173_023_461_6e+37)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -8.507_059_173_023_461_6e+37)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -8.507_059_173_023_461_6e+37)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 8.507_059_173_023_461_6e+37)
)
(assert_return (invoke "div" (f32.const -1) (f32.const -0.5)) (f32.const 2))
(assert_return (invoke "div" (f32.const -1) (f32.const 0.5)) (f32.const -2))
(assert_return (invoke "div" (f32.const 1) (f32.const -0.5)) (f32.const -2))
(assert_return (invoke "div" (f32.const 1) (f32.const 0.5)) (f32.const 2))
(assert_return (invoke "div" (f32.const -1) (f32.const -1)) (f32.const 1))
(assert_return (invoke "div" (f32.const -1) (f32.const 1)) (f32.const -1))
(assert_return (invoke "div" (f32.const 1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "div" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "div" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0.159_154_936_671_257_02)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0.159_154_936_671_257_02)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0.159_154_936_671_257_02)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0.159_154_936_671_257_02)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 2.938_735_877_055_718_8e-39)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -2.938_735_877_055_718_8e-39)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -2.938_735_877_055_718_8e-39)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 2.938_735_877_055_718_8e-39)
)
(assert_return (invoke "div" (f32.const -1) (f32.const -inf)) (f32.const 0))
(assert_return (invoke "div" (f32.const -1) (f32.const inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 1) (f32.const -inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 1) (f32.const inf)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "div" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 12.566_370_964_050_293)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -12.566_370_964_050_293)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -12.566_370_964_050_293)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 12.566_370_964_050_293)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.846_462_399_952_139_2e-38)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.846_462_399_952_139_2e-38)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.846_462_399_952_139_2e-38)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.846_462_399_952_139_2e-38)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const 0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 5.415_761_348_704_500_5e+37)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -5.415_761_348_704_500_5e+37)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -5.415_761_348_704_500_5e+37)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 5.415_761_348_704_500_5e+37)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "div" (f32.const -inf) (f32.const -0)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return (invoke "div" (f32.const -inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -0.5)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return_canonical_nan (invoke "div" (f32.const -inf) (f32.const -inf)))
(assert_return_canonical_nan (invoke "div" (f32.const -inf) (f32.const inf)))
(assert_return_canonical_nan (invoke "div" (f32.const inf) (f32.const -inf)))
(assert_return_canonical_nan (invoke "div" (f32.const inf) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "div" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "min" (f32.const -0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const -0) (f32.const 0)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "min" (f32.const -0) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const -0) (f32.const 0.5)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "min" (f32.const -0) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const -0) (f32.const 1)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const 0) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return (invoke "min" (f32.const -0) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -0) (f32.const inf)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const 0) (f32.const inf)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "min" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "min" (f32.const -0.5) (f32.const -0)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const -0.5) (f32.const 0)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "min" (f32.const -0.5) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -0.5) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const -0.5) (f32.const 1)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 1)) (f32.const 0.5))
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "min" (f32.const -0.5) (f32.const inf)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const 0.5) (f32.const inf)) (f32.const 0.5))
(assert_return_canonical_nan
  (invoke "min" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "min" (f32.const -1) (f32.const -0)) (f32.const -1))
(assert_return (invoke "min" (f32.const -1) (f32.const 0)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const 1) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "min" (f32.const -1) (f32.const -0.5)) (f32.const -1))
(assert_return (invoke "min" (f32.const -1) (f32.const 0.5)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 1) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const -1) (f32.const 1)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "min" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 1)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1)
)
(assert_return (invoke "min" (f32.const -1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -1) (f32.const inf)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const 1) (f32.const inf)) (f32.const 1))
(assert_return_canonical_nan
  (invoke "min" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "min" (f32.const -inf) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -inf) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const inf) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "min" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const inf) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const inf) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "min" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "min" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "max" (f32.const -0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0) (f32.const 0)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "max" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "max" (f32.const -0) (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const -0) (f32.const -1)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0) (f32.const 1)) (f32.const 1))
(assert_return (invoke "max" (f32.const 0) (f32.const -1)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "max" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "max" (f32.const -0) (f32.const -inf)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const 0) (f32.const -inf)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "max" (f32.const -0.5) (f32.const -0)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0.5) (f32.const 0)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -0)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 0)) (f32.const 0.5))
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "max" (f32.const -0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const -0.5) (f32.const -1)) (f32.const -0.5))
(assert_return (invoke "max" (f32.const -0.5) (f32.const 1)) (f32.const 1))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -1)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -inf))
  (f32.const -0.5)
)
(assert_return (invoke "max" (f32.const -0.5) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -inf)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "max" (f32.const -1) (f32.const -0)) (f32.const -0))
(assert_return (invoke "max" (f32.const -1) (f32.const 0)) (f32.const 0))
(assert_return (invoke "max" (f32.const 1) (f32.const -0)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const 0)) (f32.const 1))
(assert_return
  (invoke "max" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return (invoke "max" (f32.const -1) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "max" (f32.const -1) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 1) (f32.const -0.5)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "max" (f32.const -1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "max" (f32.const -1) (f32.const 1)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const -1)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "max" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -1)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -1)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "max" (f32.const -1) (f32.const -inf)) (f32.const -1))
(assert_return (invoke "max" (f32.const -1) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const 1) (f32.const -inf)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "max" (f32.const -inf) (f32.const -0)) (f32.const -0))
(assert_return (invoke "max" (f32.const -inf) (f32.const 0)) (f32.const 0))
(assert_return (invoke "max" (f32.const inf) (f32.const -0)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "max" (f32.const -inf) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "max" (f32.const -inf) (f32.const -1)) (f32.const -1))
(assert_return (invoke "max" (f32.const -inf) (f32.const 1)) (f32.const 1))
(assert_return (invoke "max" (f32.const inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "max" (f32.const -inf) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "sqrt" (f32.const -0)) (f32.const -0))
(assert_return (invoke "sqrt" (f32.const 0)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "sqrt" (f32.const -1.401_298_464_324_817_1e-45))
)
(assert_return
  (invoke "sqrt" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 3.743_392_066_509_216_2e-23)
)
(assert_return_canonical_nan
  (invoke "sqrt" (f32.const -1.175_494_350_822_287_5e-38))
)
(assert_return
  (invoke "sqrt" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.084_202_172_485_504_4e-19)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0.5)))
(assert_return
  (invoke "sqrt" (f32.const 0.5))
  (f32.const 0.707_106_769_084_930_42)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -1)))
(assert_return (invoke "sqrt" (f32.const 1)) (f32.const 1))
(assert_return_canonical_nan
  (invoke "sqrt" (f32.const -6.283_185_482_025_146_5))
)
(assert_return
  (invoke "sqrt" (f32.const 6.283_185_482_025_146_5))
  (f32.const 2.506_628_274_917_602_5)
)
(assert_return_canonical_nan
  (invoke "sqrt" (f32.const -3.402_823_466_385_288_6e+38))
)
(assert_return
  (invoke "sqrt" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1.844_674_297_419_792_4e+19)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -inf)))
(assert_return (invoke "sqrt" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "sqrt" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f32.const nan:0x200000)))
(assert_return (invoke "floor" (f32.const -0)) (f32.const -0))
(assert_return (invoke "floor" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "floor" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "floor" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "floor" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "floor" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "floor" (f32.const -0.5)) (f32.const -1))
(assert_return (invoke "floor" (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "floor" (f32.const -1)) (f32.const -1))
(assert_return (invoke "floor" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "floor" (f32.const -6.283_185_482_025_146_5))
  (f32.const -7)
)
(assert_return
  (invoke "floor" (f32.const 6.283_185_482_025_146_5))
  (f32.const 6)
)
(assert_return
  (invoke "floor" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "floor" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "floor" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "floor" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "floor" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "floor" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "floor" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "floor" (f32.const nan:0x200000)))
(assert_return (invoke "ceil" (f32.const -0)) (f32.const -0))
(assert_return (invoke "ceil" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "ceil" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "ceil" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "ceil" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "ceil" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return (invoke "ceil" (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "ceil" (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "ceil" (f32.const -1)) (f32.const -1))
(assert_return (invoke "ceil" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "ceil" (f32.const -6.283_185_482_025_146_5))
  (f32.const -6)
)
(assert_return
  (invoke "ceil" (f32.const 6.283_185_482_025_146_5))
  (f32.const 7)
)
(assert_return
  (invoke "ceil" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "ceil" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "ceil" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "ceil" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "ceil" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "ceil" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "ceil" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "ceil" (f32.const nan:0x200000)))
(assert_return (invoke "trunc" (f32.const -0)) (f32.const -0))
(assert_return (invoke "trunc" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "trunc" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "trunc" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "trunc" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "trunc" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "trunc" (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "trunc" (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "trunc" (f32.const -1)) (f32.const -1))
(assert_return (invoke "trunc" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "trunc" (f32.const -6.283_185_482_025_146_5))
  (f32.const -6)
)
(assert_return
  (invoke "trunc" (f32.const 6.283_185_482_025_146_5))
  (f32.const 6)
)
(assert_return
  (invoke "trunc" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "trunc" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "trunc" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "trunc" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "trunc" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "trunc" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "trunc" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "trunc" (f32.const nan:0x200000)))
(assert_return (invoke "nearest" (f32.const -0)) (f32.const -0))
(assert_return (invoke "nearest" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "nearest" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "nearest" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "nearest" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "nearest" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "nearest" (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "nearest" (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "nearest" (f32.const -1)) (f32.const -1))
(assert_return (invoke "nearest" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "nearest" (f32.const -6.283_185_482_025_146_5))
  (f32.const -6)
)
(assert_return
  (invoke "nearest" (f32.const 6.283_185_482_025_146_5))
  (f32.const 6)
)
(assert_return
  (invoke "nearest" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "nearest" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "nearest" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "nearest" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "nearest" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "nearest" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "nearest" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "nearest" (f32.const nan:0x200000)))
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.add))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.div))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.max))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.min))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.mul))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.sub))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.ceil))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.floor))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.nearest))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.sqrt))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.trunc))
  )
  "type mismatch"
)
