(module
  (type $0 (func (param f64 f64) (result i32)))
  (func $0 (type 0) (local.get 0) (local.get 1) (f64.eq))
  (func $1 (type 0) (local.get 0) (local.get 1) (f64.ne))
  (func $2 (type 0) (local.get 0) (local.get 1) (f64.lt))
  (func $3 (type 0) (local.get 0) (local.get 1) (f64.le))
  (func $4 (type 0) (local.get 0) (local.get 1) (f64.gt))
  (func $5 (type 0) (local.get 0) (local.get 1) (f64.ge))
  (export "eq" (func 0))
  (export "ne" (func 1))
  (export "lt" (func 2))
  (export "le" (func 3))
  (export "gt" (func 4))
  (export "ge" (func 5))
)
(assert_return (invoke "eq" (f64.const -0) (f64.const -0)) (i32.const 1))
(assert_return (invoke "eq" (f64.const -0) (f64.const 0)) (i32.const 1))
(assert_return (invoke "eq" (f64.const 0) (f64.const -0)) (i32.const 1))
(assert_return (invoke "eq" (f64.const 0) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "eq" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -0) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0) (f64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0) (f64.const 1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0) (f64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -0.5) (f64.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0.5) (f64.const 0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0.5) (f64.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0.5) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -0.5) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "eq" (f64.const -0.5) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0.5) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0.5) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "eq" (f64.const -0.5) (f64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0.5) (f64.const 1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0.5) (f64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0.5) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -0.5) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -0.5) (f64.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0.5) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 0.5) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -1) (f64.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -1) (f64.const 0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 1) (f64.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 1) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -1) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -1) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 1) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 1) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -1) (f64.const -1)) (i32.const 1))
(assert_return (invoke "eq" (f64.const -1) (f64.const 1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 1) (f64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 1) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "eq" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -1) (f64.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const 1) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -inf) (f64.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -inf) (f64.const 0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const -0)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -inf) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -inf) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -inf) (f64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const -inf) (f64.const 1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "eq" (f64.const -inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "eq" (f64.const -inf) (f64.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f64.const inf) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "ne" (f64.const -0) (f64.const -0)) (i32.const 0))
(assert_return (invoke "ne" (f64.const -0) (f64.const 0)) (i32.const 0))
(assert_return (invoke "ne" (f64.const 0) (f64.const -0)) (i32.const 0))
(assert_return (invoke "ne" (f64.const 0) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "ne" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -0) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0) (f64.const 1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -0) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -0.5) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0.5) (f64.const 0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0.5) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0.5) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -0.5) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "ne" (f64.const -0.5) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0.5) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0.5) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "ne" (f64.const -0.5) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0.5) (f64.const 1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0.5) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0.5) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -0.5) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -0.5) (f64.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0.5) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 0.5) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -0.5) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 0.5) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -1) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -1) (f64.const 0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 1) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 1) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -1) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -1) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 1) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 1) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -1) (f64.const -1)) (i32.const 0))
(assert_return (invoke "ne" (f64.const -1) (f64.const 1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 1) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 1) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "ne" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -1) (f64.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const 1) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -1) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -inf) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -inf) (f64.const 0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -inf) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -inf) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -inf) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const -inf) (f64.const 1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "ne" (f64.const -inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "ne" (f64.const -inf) (f64.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f64.const inf) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 1)
)
(assert_return (invoke "lt" (f64.const -0) (f64.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0) (f64.const 0)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0) (f64.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "lt" (f64.const -0) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -0) (f64.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0) (f64.const 1)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0) (f64.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "lt" (f64.const -0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f64.const -0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -0.5) (f64.const -0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -0.5) (f64.const 0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0.5) (f64.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0.5) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -0.5) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0.5) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0.5) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0.5) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0.5) (f64.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0.5) (f64.const 1)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0.5) (f64.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0.5) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "lt" (f64.const -0.5) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -0.5) (f64.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 0.5) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 0.5) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -1) (f64.const -0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -1) (f64.const 0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 1) (f64.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 1) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -1) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -1) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 1) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 1) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -1) (f64.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -1) (f64.const 1)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 1) (f64.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 1) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "lt" (f64.const -1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -1) (f64.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f64.const 1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const 1) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f64.const -1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -inf) (f64.const -0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -inf) (f64.const 0)) (i32.const 1))
(assert_return (invoke "lt" (f64.const inf) (f64.const -0)) (i32.const 0))
(assert_return (invoke "lt" (f64.const inf) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -inf) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -inf) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f64.const inf) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const inf) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -inf) (f64.const -1)) (i32.const 1))
(assert_return (invoke "lt" (f64.const -inf) (f64.const 1)) (i32.const 1))
(assert_return (invoke "lt" (f64.const inf) (f64.const -1)) (i32.const 0))
(assert_return (invoke "lt" (f64.const inf) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "lt" (f64.const -inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const -inf) (f64.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f64.const inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f64.const inf) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -0) (f64.const -0)) (i32.const 1))
(assert_return (invoke "le" (f64.const -0) (f64.const 0)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0) (f64.const -0)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "le" (f64.const -0) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f64.const -0) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const -0) (f64.const -1)) (i32.const 0))
(assert_return (invoke "le" (f64.const -0) (f64.const 1)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0) (f64.const -1)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "le" (f64.const -0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const -0) (f64.const inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -0.5) (f64.const -0)) (i32.const 1))
(assert_return (invoke "le" (f64.const -0.5) (f64.const 0)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0.5) (f64.const -0)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0.5) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -0.5) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const -0.5) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0.5) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0.5) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const -0.5) (f64.const -1)) (i32.const 0))
(assert_return (invoke "le" (f64.const -0.5) (f64.const 1)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0.5) (f64.const -1)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0.5) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "le" (f64.const -0.5) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const -0.5) (f64.const inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const 0.5) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const 0.5) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -1) (f64.const -0)) (i32.const 1))
(assert_return (invoke "le" (f64.const -1) (f64.const 0)) (i32.const 1))
(assert_return (invoke "le" (f64.const 1) (f64.const -0)) (i32.const 0))
(assert_return (invoke "le" (f64.const 1) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "le" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -1) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const -1) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const 1) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f64.const 1) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "le" (f64.const -1) (f64.const -1)) (i32.const 1))
(assert_return (invoke "le" (f64.const -1) (f64.const 1)) (i32.const 1))
(assert_return (invoke "le" (f64.const 1) (f64.const -1)) (i32.const 0))
(assert_return (invoke "le" (f64.const 1) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "le" (f64.const -1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const -1) (f64.const inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const 1) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const 1) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -inf) (f64.const -0)) (i32.const 1))
(assert_return (invoke "le" (f64.const -inf) (f64.const 0)) (i32.const 1))
(assert_return (invoke "le" (f64.const inf) (f64.const -0)) (i32.const 0))
(assert_return (invoke "le" (f64.const inf) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -inf) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const -inf) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f64.const inf) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f64.const inf) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "le" (f64.const -inf) (f64.const -1)) (i32.const 1))
(assert_return (invoke "le" (f64.const -inf) (f64.const 1)) (i32.const 1))
(assert_return (invoke "le" (f64.const inf) (f64.const -1)) (i32.const 0))
(assert_return (invoke "le" (f64.const inf) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "le" (f64.const -inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const -inf) (f64.const inf)) (i32.const 1))
(assert_return (invoke "le" (f64.const inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f64.const inf) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -0) (f64.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -0) (f64.const 0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0) (f64.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0) (f64.const 0)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -0) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -0) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -0) (f64.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -0) (f64.const 1)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0) (f64.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -0.5) (f64.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -0.5) (f64.const 0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0.5) (f64.const -0)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0.5) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "gt" (f64.const -0.5) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -0.5) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0.5) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0.5) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -0.5) (f64.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -0.5) (f64.const 1)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0.5) (f64.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0.5) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -0.5) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -0.5) (f64.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 0.5) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 0.5) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -1) (f64.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -1) (f64.const 0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 1) (f64.const -0)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 1) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "gt" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "gt" (f64.const -1) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -1) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 1) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 1) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -1) (f64.const -1)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -1) (f64.const 1)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 1) (f64.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 1) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -1) (f64.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const 1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const 1) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "gt" (f64.const -inf) (f64.const -0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -inf) (f64.const 0)) (i32.const 0))
(assert_return (invoke "gt" (f64.const inf) (f64.const -0)) (i32.const 1))
(assert_return (invoke "gt" (f64.const inf) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "gt" (f64.const -inf) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -inf) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f64.const inf) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f64.const inf) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "gt" (f64.const -inf) (f64.const -1)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -inf) (f64.const 1)) (i32.const 0))
(assert_return (invoke "gt" (f64.const inf) (f64.const -1)) (i32.const 1))
(assert_return (invoke "gt" (f64.const inf) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "gt" (f64.const -inf) (f64.const -inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const -inf) (f64.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f64.const inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f64.const inf) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -0) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0) (f64.const 0)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -0) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -0) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0) (f64.const 1)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0) (f64.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f64.const -0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -0.5) (f64.const -0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -0.5) (f64.const 0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0.5) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0.5) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "ge" (f64.const -0.5) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0.5) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0.5) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0.5) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0.5) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0.5) (f64.const 1)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0.5) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0.5) (f64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -0.5) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -0.5) (f64.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 0.5) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 0.5) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 0.5) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -1) (f64.const -0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -1) (f64.const 0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 1) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 1) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "ge" (f64.const -1) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -1) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 1) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 1) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -1) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -1) (f64.const 1)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 1) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 1) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -1) (f64.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f64.const 1) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const 1) (f64.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f64.const -1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return (invoke "ge" (f64.const -inf) (f64.const -0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -inf) (f64.const 0)) (i32.const 0))
(assert_return (invoke "ge" (f64.const inf) (f64.const -0)) (i32.const 1))
(assert_return (invoke "ge" (f64.const inf) (f64.const 0)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (i32.const 1)
)
(assert_return (invoke "ge" (f64.const -inf) (f64.const -0.5)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -inf) (f64.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f64.const inf) (f64.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const inf) (f64.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -inf) (f64.const -1)) (i32.const 0))
(assert_return (invoke "ge" (f64.const -inf) (f64.const 1)) (i32.const 0))
(assert_return (invoke "ge" (f64.const inf) (f64.const -1)) (i32.const 1))
(assert_return (invoke "ge" (f64.const inf) (f64.const 1)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
  (i32.const 1)
)
(assert_return (invoke "ge" (f64.const -inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const -inf) (f64.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f64.const inf) (f64.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f64.const inf) (f64.const inf)) (i32.const 1))
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const inf) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const -nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const -nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
  (i32.const 0)
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (f64.eq))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (f64.ge))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (f64.gt))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (f64.le))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (f64.lt))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (f64.ne))
  )
  "type mismatch"
)
