(module
  (type $0 (func (param f64) (result f64)))
  (type $1 (func (param f64 f64) (result f64)))
  (func $0 (type 0) (local.get 0) (f64.abs))
  (func $1 (type 0) (local.get 0) (f64.neg))
  (func $2 (type 1) (local.get 0) (local.get 1) (f64.copysign))
  (export "abs" (func 0))
  (export "neg" (func 1))
  (export "copysign" (func 2))
)
(assert_return (invoke "copysign" (f64.const -0) (f64.const -0)) (f64.const -0))
(assert_return (invoke "copysign" (f64.const -0) (f64.const 0)) (f64.const 0))
(assert_return (invoke "copysign" (f64.const 0) (f64.const -0)) (f64.const -0))
(assert_return (invoke "copysign" (f64.const 0) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const -0.5))
  (f64.const -0)
)
(assert_return (invoke "copysign" (f64.const -0) (f64.const 0.5)) (f64.const 0))
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const -0.5))
  (f64.const -0)
)
(assert_return (invoke "copysign" (f64.const 0) (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "copysign" (f64.const -0) (f64.const -1)) (f64.const -0))
(assert_return (invoke "copysign" (f64.const -0) (f64.const 1)) (f64.const 0))
(assert_return (invoke "copysign" (f64.const 0) (f64.const -1)) (f64.const -0))
(assert_return (invoke "copysign" (f64.const 0) (f64.const 1)) (f64.const 0))
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const -inf))
  (f64.const -0)
)
(assert_return (invoke "copysign" (f64.const -0) (f64.const inf)) (f64.const 0))
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const -inf))
  (f64.const -0)
)
(assert_return (invoke "copysign" (f64.const 0) (f64.const inf)) (f64.const 0))
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const -nan:0x8000000000000))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const -0) (f64.const nan:0x8000000000000))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const -nan:0x8000000000000))
  (f64.const -0)
)
(assert_return
  (invoke "copysign" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const 0)
)
(assert_return
  (invoke "copysign" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "copysign" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -0))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 0))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -0))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 0))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -1))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 1))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -1))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 1))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -inf))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const inf))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -inf))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const inf))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -nan:0x8000000000000))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const nan:0x8000000000000))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -nan:0x8000000000000))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const nan:0x8000000000000))
  (f64.const 0.5)
)
(assert_return (invoke "copysign" (f64.const -1) (f64.const -0)) (f64.const -1))
(assert_return (invoke "copysign" (f64.const -1) (f64.const 0)) (f64.const 1))
(assert_return (invoke "copysign" (f64.const 1) (f64.const -0)) (f64.const -1))
(assert_return (invoke "copysign" (f64.const 1) (f64.const 0)) (f64.const 1))
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const -0.5))
  (f64.const -1)
)
(assert_return (invoke "copysign" (f64.const -1) (f64.const 0.5)) (f64.const 1))
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const -0.5))
  (f64.const -1)
)
(assert_return (invoke "copysign" (f64.const 1) (f64.const 0.5)) (f64.const 1))
(assert_return (invoke "copysign" (f64.const -1) (f64.const -1)) (f64.const -1))
(assert_return (invoke "copysign" (f64.const -1) (f64.const 1)) (f64.const 1))
(assert_return (invoke "copysign" (f64.const 1) (f64.const -1)) (f64.const -1))
(assert_return (invoke "copysign" (f64.const 1) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const -inf))
  (f64.const -1)
)
(assert_return (invoke "copysign" (f64.const -1) (f64.const inf)) (f64.const 1))
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const -inf))
  (f64.const -1)
)
(assert_return (invoke "copysign" (f64.const 1) (f64.const inf)) (f64.const 1))
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const -nan:0x8000000000000))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const -1) (f64.const nan:0x8000000000000))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const -nan:0x8000000000000))
  (f64.const -1)
)
(assert_return
  (invoke "copysign" (f64.const 1) (f64.const nan:0x8000000000000))
  (f64.const 1)
)
(assert_return
  (invoke "copysign" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "copysign" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -0))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 0))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -0))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 0))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 0.5))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 0.5))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -1))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 1))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -1))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 1))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const nan:0x8000000000000))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -nan:0x8000000000000))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const nan:0x8000000000000))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const -0))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const 0))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -0))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const -0.5))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const 0.5))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -0.5))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const 0.5))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const -1))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const 1))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -1))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const 1))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const inf))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -inf))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const inf))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return (invoke "abs" (f64.const -0)) (f64.const 0))
(assert_return (invoke "abs" (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "abs" (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "abs" (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "abs" (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "abs" (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return (invoke "abs" (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "abs" (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "abs" (f64.const -1)) (f64.const 1))
(assert_return (invoke "abs" (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "abs" (f64.const -6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "abs" (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "abs" (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "abs" (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "abs" (f64.const -inf)) (f64.const inf))
(assert_return (invoke "abs" (f64.const inf)) (f64.const inf))
(assert_return
  (invoke "abs" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "abs" (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return (invoke "neg" (f64.const -0)) (f64.const 0))
(assert_return (invoke "neg" (f64.const 0)) (f64.const -0))
(assert_return
  (invoke "neg" (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "neg" (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "neg" (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "neg" (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return (invoke "neg" (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "neg" (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "neg" (f64.const -1)) (f64.const 1))
(assert_return (invoke "neg" (f64.const 1)) (f64.const -1))
(assert_return
  (invoke "neg" (f64.const -6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "neg" (f64.const 6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "neg" (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "neg" (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "neg" (f64.const -inf)) (f64.const inf))
(assert_return (invoke "neg" (f64.const inf)) (f64.const -inf))
(assert_return
  (invoke "neg" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "neg" (f64.const nan:0x8000000000000))
  (f64.const -nan:0x8000000000000)
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f32.const 0) (f64.copysign))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f64.abs))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result f64)))
    (func $0 (type 0) (i64.const 0) (f64.neg))
  )
  "type mismatch"
)
