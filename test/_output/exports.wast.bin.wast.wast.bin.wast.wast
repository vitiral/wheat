(module (type $0 (func)) (func $0 (type 0)) (export "a" (func 0)))
(module
  (type $0 (func))
  (func $0 (type 0))
  (export "a" (func 0))
  (export "b" (func 0))
)
(module
  (type $0 (func))
  (func $0 (type 0))
  (func $1 (type 0))
  (export "a" (func 0))
  (export "b" (func 1))
)
(module (type $0 (func)) (func $0 (type 0)) (export "a" (func 0)))
(module
  (type $0 (func))
  (func $0 (type 0))
  (export "a" (func 0))
  (export "b" (func 0))
  (export "c" (func 0))
)
(module
  (type $0 (func (param i32)))
  (func $0 (type 0))
  (export "a" (func 0))
  (export "b" (func 0))
)
(module (type $0 (func)) (func $0 (type 0)) (export "a" (func 0)))
(module (type $0 (func)) (func $0 (type 0)) (export "a" (func 0)))
(module (type $0 (func)) (func $0 (type 0)) (export "a" (func 0)))
(module (type $0 (func)) (func $0 (type 0)) (export "a" (func 0)))
(module (type $0 (func)) (func $0 (type 0)) (export "a" (func 0)))
(module $Func
  (type $0 (func (param i32) (result i32)))
  (func $0 (type 0) (local.get 0) (i32.const 1) (i32.add) (return))
  (export "e" (func 0))
)
(assert_return (invoke "e" (i32.const 42)) (i32.const 43))
(assert_return (invoke $Func "e" (i32.const 42)) (i32.const 43))
(module)
(module $Other1)
(assert_return (invoke $Func "e" (i32.const 42)) (i32.const 43))
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0)) (export "a" (func 1)))
  "unknown function"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0))
    (export "a" (func 0))
    (export "a" (func 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0))
    (func $1 (type 0))
    (export "a" (func 0))
    (export "a" (func 1))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 i32 (i32.const 0))
    (func $0 (type 0))
    (export "a" (func 0))
    (export "a" (global 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (type $0 (func))
    (table $0 0 funcref)
    (func $0 (type 0))
    (export "a" (func 0))
    (export "a" (table 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0))
    (export "a" (func 0))
    (export "a" (memory 0))
  )
  "duplicate export name"
)
(module (global $0 i32 (i32.const 0)) (export "a" (global 0)))
(module
  (global $0 i32 (i32.const 0))
  (export "a" (global 0))
  (export "b" (global 0))
)
(module
  (global $0 i32 (i32.const 0))
  (global $1 i32 (i32.const 0))
  (export "a" (global 0))
  (export "b" (global 1))
)
(module (global $0 i32 (i32.const 0)) (export "a" (global 0)))
(module (global $0 i32 (i32.const 0)) (export "a" (global 0)))
(module (global $0 i32 (i32.const 0)) (export "a" (global 0)))
(module (global $0 i32 (i32.const 0)) (export "a" (global 0)))
(module (global $0 i32 (i32.const 0)) (export "a" (global 0)))
(module (global $0 i32 (i32.const 0)) (export "a" (global 0)))
(module $Global (global $0 i32 (i32.const 42)) (export "e" (global 0)))
(assert_return (get "e") (i32.const 42))
(assert_return (get $Global "e") (i32.const 42))
(module)
(module $Other2)
(assert_return (get $Global "e") (i32.const 42))
(assert_invalid
  (module (global $0 i32 (i32.const 0)) (export "a" (global 1)))
  "unknown global"
)
(assert_invalid
  (module
    (global $0 i32 (i32.const 0))
    (export "a" (global 0))
    (export "a" (global 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (global $0 i32 (i32.const 0))
    (global $1 i32 (i32.const 0))
    (export "a" (global 0))
    (export "a" (global 1))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 i32 (i32.const 0))
    (func $0 (type 0))
    (export "a" (global 0))
    (export "a" (func 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (table $0 0 funcref)
    (global $0 i32 (i32.const 0))
    (export "a" (global 0))
    (export "a" (table 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (memory $0 0)
    (global $0 i32 (i32.const 0))
    (export "a" (global 0))
    (export "a" (memory 0))
  )
  "duplicate export name"
)
(module (table $0 0 funcref) (export "a" (table 0)))
(module (table $0 0 funcref) (export "a" (table 0)) (export "b" (table 0)))
(module (table $0 0 funcref) (export "a" (table 0)))
(module (table $0 0 1 funcref) (export "a" (table 0)))
(module (table $0 0 funcref) (export "a" (table 0)))
(module (table $0 0 1 funcref) (export "a" (table 0)))
(module (table $0 0 funcref) (export "a" (table 0)))
(module (table $0 0 1 funcref) (export "a" (table 0)))
(module (table $0 0 funcref) (export "a" (table 0)))
(module (table $0 0 1 funcref) (export "a" (table 0)))
(module (table $0 0 funcref) (export "a" (table 0)))
(module (table $0 0 1 funcref) (export "a" (table 0)))
(module (table $0 0 funcref) (export "a" (table 0)))
(module (table $0 0 1 funcref) (export "a" (table 0)))
(assert_invalid
  (module (table $0 0 funcref) (export "a" (table 1)))
  "unknown table"
)
(assert_invalid
  (module (table $0 0 funcref) (export "a" (table 0)) (export "a" (table 0)))
  "duplicate export name"
)
(assert_invalid
  (module
    (type $0 (func))
    (table $0 0 funcref)
    (func $0 (type 0))
    (export "a" (table 0))
    (export "a" (func 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (table $0 0 funcref)
    (global $0 i32 (i32.const 0))
    (export "a" (table 0))
    (export "a" (global 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (table $0 0 funcref)
    (memory $0 0)
    (export "a" (table 0))
    (export "a" (memory 0))
  )
  "duplicate export name"
)
(module (memory $0 0) (export "a" (memory 0)))
(module (memory $0 0) (export "a" (memory 0)) (export "b" (memory 0)))
(module (memory $0 0) (export "a" (memory 0)))
(module (memory $0 0 1) (export "a" (memory 0)))
(module (memory $0 0) (export "a" (memory 0)))
(module (memory $0 0 1) (export "a" (memory 0)))
(module (memory $0 0) (export "a" (memory 0)))
(module (memory $0 0 1) (export "a" (memory 0)))
(module (memory $0 0) (export "a" (memory 0)))
(module (memory $0 0 1) (export "a" (memory 0)))
(module (memory $0 0) (export "a" (memory 0)))
(module (memory $0 0 1) (export "a" (memory 0)))
(module (memory $0 0) (export "a" (memory 0)))
(module (memory $0 0 1) (export "a" (memory 0)))
(assert_invalid (module (memory $0 0) (export "a" (memory 1))) "unknown memory")
(assert_invalid
  (module (memory $0 0) (export "a" (memory 0)) (export "a" (memory 0)))
  "duplicate export name"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0))
    (export "a" (memory 0))
    (export "a" (func 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (memory $0 0)
    (global $0 i32 (i32.const 0))
    (export "a" (memory 0))
    (export "a" (global 0))
  )
  "duplicate export name"
)
(assert_invalid
  (module
    (table $0 0 funcref)
    (memory $0 0)
    (export "a" (memory 0))
    (export "a" (table 0))
  )
  "duplicate export name"
)
