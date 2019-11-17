(module
  (type $0 (func (param f32 f32) (result i32)))
  (func $0 (type 0) (local.get 0) (local.get 1) (f32.eq))
  (func $1 (type 0) (local.get 0) (local.get 1) (f32.ne))
  (func $2 (type 0) (local.get 0) (local.get 1) (f32.lt))
  (func $3 (type 0) (local.get 0) (local.get 1) (f32.le))
  (func $4 (type 0) (local.get 0) (local.get 1) (f32.gt))
  (func $5 (type 0) (local.get 0) (local.get 1) (f32.ge))
  (export "eq" (func 0))
  (export "ne" (func 1))
  (export "lt" (func 2))
  (export "le" (func 3))
  (export "gt" (func 4))
  (export "ge" (func 5))
)
(assert_return (invoke "eq" (f32.const -0) (f32.const -0)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -0) (f32.const 0)) (i32.const 1))
(assert_return (invoke "eq" (f32.const 0) (f32.const -0)) (i32.const 1))
(assert_return (invoke "eq" (f32.const 0) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "eq" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0) (f32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0) (f32.const 1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0) (f32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0) (f32.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0.5) (f32.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const 0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const 1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -1) (f32.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -1) (f32.const 0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1) (f32.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -1) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -1) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -1) (f32.const -1)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -1) (f32.const 1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1) (f32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "eq" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -1) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -1) (f32.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -inf) (f32.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -inf) (f32.const 0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -inf) (f32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -inf) (f32.const 1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -inf) (f32.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ne" (f32.const -0) (f32.const -0)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -0) (f32.const 0)) (i32.const 0))
(assert_return (invoke "ne" (f32.const 0) (f32.const -0)) (i32.const 0))
(assert_return (invoke "ne" (f32.const 0) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "ne" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0) (f32.const 1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0) (f32.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0.5) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const 0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const 1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -1) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -1) (f32.const 0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -1) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -1) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -1) (f32.const -1)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -1) (f32.const 1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "ne" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -1) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -1) (f32.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -1) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -inf) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -inf) (f32.const 0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -inf) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -inf) (f32.const 1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -inf) (f32.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -0) (f32.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0) (f32.const 0)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0) (f32.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -0) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -0) (f32.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0) (f32.const 1)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0) (f32.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -0) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0) (f32.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -0.5) (f32.const -0)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const 0)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const 1)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -1) (f32.const -0)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -1) (f32.const 0)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 1) (f32.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 1) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -1) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -1) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 1) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 1) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -1) (f32.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -1) (f32.const 1)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 1) (f32.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 1) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -1) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -1) (f32.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 1) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 1) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -inf) (f32.const -0)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -inf) (f32.const 0)) (i32.const 1))
(assert_return (invoke "lt" (f32.const inf) (f32.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f32.const inf) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -inf) (f32.const -1)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -inf) (f32.const 1)) (i32.const 1))
(assert_return (invoke "lt" (f32.const inf) (f32.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f32.const inf) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -inf) (f32.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f32.const inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const inf) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -0) (f32.const -0)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0) (f32.const 0)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0) (f32.const -0)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "le" (f32.const -0) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0) (f32.const -1)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0) (f32.const 1)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0) (f32.const -1)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "le" (f32.const -0) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0) (f32.const inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -0.5) (f32.const -0)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0.5) (f32.const 0)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.5) (f32.const -0)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.5) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0.5) (f32.const -1)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0.5) (f32.const 1)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.5) (f32.const -1)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.5) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "le" (f32.const -0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0.5) (f32.const inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.5) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -1) (f32.const -0)) (i32.const 1))
(assert_return (invoke "le" (f32.const -1) (f32.const 0)) (i32.const 1))
(assert_return (invoke "le" (f32.const 1) (f32.const -0)) (i32.const 0))
(assert_return (invoke "le" (f32.const 1) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "le" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -1) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -1) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const 1) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const 1) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const -1) (f32.const -1)) (i32.const 1))
(assert_return (invoke "le" (f32.const -1) (f32.const 1)) (i32.const 1))
(assert_return (invoke "le" (f32.const 1) (f32.const -1)) (i32.const 0))
(assert_return (invoke "le" (f32.const 1) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "le" (f32.const -1) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const -1) (f32.const inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const 1) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const 1) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -inf) (f32.const -0)) (i32.const 1))
(assert_return (invoke "le" (f32.const -inf) (f32.const 0)) (i32.const 1))
(assert_return (invoke "le" (f32.const inf) (f32.const -0)) (i32.const 0))
(assert_return (invoke "le" (f32.const inf) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const -inf) (f32.const -1)) (i32.const 1))
(assert_return (invoke "le" (f32.const -inf) (f32.const 1)) (i32.const 1))
(assert_return (invoke "le" (f32.const inf) (f32.const -1)) (i32.const 0))
(assert_return (invoke "le" (f32.const inf) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const -inf) (f32.const inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const inf) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0) (f32.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0) (f32.const 0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0) (f32.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0) (f32.const 0)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0) (f32.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0) (f32.const 1)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0) (f32.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0) (f32.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0.5) (f32.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const 0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const -0)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "gt" (f32.const -0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const 1)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -1) (f32.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -1) (f32.const 0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 1) (f32.const -0)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 1) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "gt" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "gt" (f32.const -1) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -1) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 1) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 1) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -1) (f32.const -1)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -1) (f32.const 1)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 1) (f32.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 1) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -1) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -1) (f32.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 1) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 1) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -inf) (f32.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -inf) (f32.const 0)) (i32.const 0))
(assert_return (invoke "gt" (f32.const inf) (f32.const -0)) (i32.const 1))
(assert_return (invoke "gt" (f32.const inf) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "gt" (f32.const -inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -inf) (f32.const -1)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -inf) (f32.const 1)) (i32.const 0))
(assert_return (invoke "gt" (f32.const inf) (f32.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f32.const inf) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "gt" (f32.const -inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -inf) (f32.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const inf) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0) (f32.const 0)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -0) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0) (f32.const 1)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0) (f32.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.401_298_464_324_817_1e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.175_494_350_822_287_5e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0.5) (f32.const -0)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const 0)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "ge" (f32.const -0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const 1)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -1) (f32.const -0)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -1) (f32.const 0)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 1) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 1) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "ge" (f32.const -1) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -1) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 1) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 1) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -1) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -1) (f32.const 1)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 1) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 1) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -1) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -1) (f32.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 1) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 1) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.402_823_466_385_288_6e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -inf) (f32.const -0)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -inf) (f32.const 0)) (i32.const 0))
(assert_return (invoke "ge" (f32.const inf) (f32.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f32.const inf) (f32.const 0)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 1)
)
(assert_return (invoke "ge" (f32.const -inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -inf) (f32.const -1)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -inf) (f32.const 1)) (i32.const 0))
(assert_return (invoke "ge" (f32.const inf) (f32.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f32.const inf) (f32.const 1)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 1)
)
(assert_return (invoke "ge" (f32.const -inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -inf) (f32.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f32.const inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const inf) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 1.401_298_464_324_817_1e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 1.175_494_350_822_287_5e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 3.402_823_466_385_288_6e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.eq))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.ge))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.gt))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.le))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.lt))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f32)))
    (func $0 (type 0) (i64.const 0) (f64.const 0) (f32.ne))
  )
  "type mismatch"
)
