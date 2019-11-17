(module
  (type $0 (func (param f32) (result f32)))
  (type $1 (func (param f32 f32) (result f32)))
  (func $0 (type 0) (local.get 0) (f32.abs))
  (func $1 (type 0) (local.get 0) (f32.neg))
  (func $2 (type 1) (local.get 0) (local.get 1) (f32.copysign))
  (export "abs" (func 0))
  (export "neg" (func 1))
  (export "copysign" (func 2))
)
(assert_return (invoke "copysign" (f32.const -0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "copysign" (f32.const -0) (f32.const 0)) (f32.const 0))
(assert_return (invoke "copysign" (f32.const 0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "copysign" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const -0.5))
  (f32.const -0)
)
(assert_return (invoke "copysign" (f32.const -0) (f32.const 0.5)) (f32.const 0))
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const -0.5))
  (f32.const -0)
)
(assert_return (invoke "copysign" (f32.const 0) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "copysign" (f32.const -0) (f32.const -1)) (f32.const -0))
(assert_return (invoke "copysign" (f32.const -0) (f32.const 1)) (f32.const 0))
(assert_return (invoke "copysign" (f32.const 0) (f32.const -1)) (f32.const -0))
(assert_return (invoke "copysign" (f32.const 0) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const -inf))
  (f32.const -0)
)
(assert_return (invoke "copysign" (f32.const -0) (f32.const inf)) (f32.const 0))
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const -inf))
  (f32.const -0)
)
(assert_return (invoke "copysign" (f32.const 0) (f32.const inf)) (f32.const 0))
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const -nan:0x400000))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const -0) (f32.const nan:0x400000))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const -nan:0x400000))
  (f32.const -0)
)
(assert_return
  (invoke "copysign" (f32.const 0) (f32.const nan:0x400000))
  (f32.const 0)
)
(assert_return
  (invoke "copysign" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -0))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 0))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -0))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 0))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -1))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 1))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -1))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 1))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -inf))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const inf))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -inf))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const inf))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -nan:0x400000))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const nan:0x400000))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -nan:0x400000))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const nan:0x400000))
  (f32.const 0.5)
)
(assert_return (invoke "copysign" (f32.const -1) (f32.const -0)) (f32.const -1))
(assert_return (invoke "copysign" (f32.const -1) (f32.const 0)) (f32.const 1))
(assert_return (invoke "copysign" (f32.const 1) (f32.const -0)) (f32.const -1))
(assert_return (invoke "copysign" (f32.const 1) (f32.const 0)) (f32.const 1))
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const -0.5))
  (f32.const -1)
)
(assert_return (invoke "copysign" (f32.const -1) (f32.const 0.5)) (f32.const 1))
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const -0.5))
  (f32.const -1)
)
(assert_return (invoke "copysign" (f32.const 1) (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "copysign" (f32.const -1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "copysign" (f32.const -1) (f32.const 1)) (f32.const 1))
(assert_return (invoke "copysign" (f32.const 1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "copysign" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const -inf))
  (f32.const -1)
)
(assert_return (invoke "copysign" (f32.const -1) (f32.const inf)) (f32.const 1))
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const -inf))
  (f32.const -1)
)
(assert_return (invoke "copysign" (f32.const 1) (f32.const inf)) (f32.const 1))
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const -nan:0x400000))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const -1) (f32.const nan:0x400000))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const -nan:0x400000))
  (f32.const -1)
)
(assert_return
  (invoke "copysign" (f32.const 1) (f32.const nan:0x400000))
  (f32.const 1)
)
(assert_return
  (invoke "copysign" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -nan:0x400000)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const nan:0x400000)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -nan:0x400000)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const nan:0x400000)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "copysign" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 0.5))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 0.5))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -1))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 1))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -1))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 1))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -nan:0x400000))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const nan:0x400000))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -nan:0x400000))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const nan:0x400000))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -0))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 0))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -0))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 0))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -0.5))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 0.5))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -0.5))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 0.5))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -1))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 1))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -1))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 1))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const -nan:0x400000)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const -nan:0x400000)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const nan:0x400000)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const nan:0x400000)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -inf))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const inf))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -inf))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const inf))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return (invoke "abs" (f32.const -0)) (f32.const 0))
(assert_return (invoke "abs" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "abs" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "abs" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "abs" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "abs" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "abs" (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "abs" (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "abs" (f32.const -1)) (f32.const 1))
(assert_return (invoke "abs" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "abs" (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "abs" (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "abs" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "abs" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "abs" (f32.const -inf)) (f32.const inf))
(assert_return (invoke "abs" (f32.const inf)) (f32.const inf))
(assert_return
  (invoke "abs" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return (invoke "abs" (f32.const nan:0x400000)) (f32.const nan:0x400000))
(assert_return (invoke "neg" (f32.const -0)) (f32.const 0))
(assert_return (invoke "neg" (f32.const 0)) (f32.const -0))
(assert_return
  (invoke "neg" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "neg" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "neg" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "neg" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "neg" (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "neg" (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "neg" (f32.const -1)) (f32.const 1))
(assert_return (invoke "neg" (f32.const 1)) (f32.const -1))
(assert_return
  (invoke "neg" (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "neg" (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "neg" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "neg" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "neg" (f32.const -inf)) (f32.const inf))
(assert_return (invoke "neg" (f32.const inf)) (f32.const -inf))
(assert_return
  (invoke "neg" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "neg" (f32.const nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.copysign))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.abs))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f32.neg))
  )
  "type mismatch"
)
