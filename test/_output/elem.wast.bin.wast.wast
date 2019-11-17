(module
  (type $0 (func))
  (table $0 10 funcref)
  (func $0 (type 0))
  (elem 0 (offset (i32.const 0)))
  (elem 0 (offset (i32.const 0)) 0 0)
  (elem 0 (offset (i32.const 0)))
  (elem 0 (offset (i32.const 0)) 0 0)
  (elem 0 (offset (i32.const 0)))
  (elem 0 (offset (i32.const 0)) 0 0)
  (elem 0 (offset (i32.const 0)))
  (elem 0 (offset (i32.const 0)) 0 0)
  (elem 0 (offset (i32.const 0)))
  (elem 0 (offset (i32.const 0)) 0 0)
  (elem 0 (offset (i32.const 0)))
  (elem 0 (offset (i32.const 0)) 0 0)
)
(module
  (type $0 (func))
  (table $0 10 funcref)
  (func $0 (type 0))
  (elem 0 (offset (i32.const 0)) 0)
)
(module
  (type $0 (func))
  (import "spectest" "table" (table $0 10 funcref))
  (func $0 (type 0))
  (elem 0 (offset (i32.const 0)) 0)
)
(module
  (type $0 (func))
  (table $0 10 funcref)
  (func $0 (type 0))
  (elem 0 (offset (i32.const 0)) 0)
  (elem 0 (offset (i32.const 3)) 0)
  (elem 0 (offset (i32.const 7)) 0)
  (elem 0 (offset (i32.const 5)) 0)
  (elem 0 (offset (i32.const 3)) 0)
)
(module
  (type $0 (func))
  (import "spectest" "table" (table $0 10 funcref))
  (func $0 (type 0))
  (elem 0 (offset (i32.const 9)) 0)
  (elem 0 (offset (i32.const 3)) 0)
  (elem 0 (offset (i32.const 7)) 0)
  (elem 0 (offset (i32.const 3)) 0)
  (elem 0 (offset (i32.const 5)) 0)
)
(module
  (type $0 (func))
  (import "spectest" "global_i32" (global $0 i32))
  (table $0 1_000 funcref)
  (func $0 (type 0))
  (elem 0 (offset (global.get 0)) 0)
)
(module
  (type $0 (func))
  (import "spectest" "global_i32" (global $0 i32))
  (table $0 1_000 funcref)
  (func $0 (type 0))
  (elem 0 (offset (global.get 0)) 0)
)
(module
  (type $0 (func (result i32)))
  (table $0 10 funcref)
  (func $0 (type 0) (i32.const 65))
  (func $1 (type 0) (i32.const 66))
  (func $2 (type 0) (i32.const 7) (call_indirect (type 0)))
  (func $3 (type 0) (i32.const 9) (call_indirect (type 0)))
  (export "call-7" (func 2))
  (export "call-9" (func 3))
  (elem 0 (offset (i32.const 7)) 0)
  (elem 0 (offset (i32.const 9)) 1)
)
(assert_return (invoke "call-7") (i32.const 65))
(assert_return (invoke "call-9") (i32.const 66))
(module
  (type $0 (func))
  (table $0 10 funcref)
  (func $0 (type 0))
  (elem 0 (offset (i32.const 9)) 0)
)
(module
  (type $0 (func))
  (import "spectest" "table" (table $0 10 funcref))
  (func $0 (type 0))
  (elem 0 (offset (i32.const 9)) 0)
)
(module (table $0 0 funcref) (elem 0 (offset (i32.const 0))))
(module
  (import "spectest" "table" (table $0 0 funcref))
  (elem 0 (offset (i32.const 0)))
)
(module (table $0 0 0 funcref) (elem 0 (offset (i32.const 0))))
(module (table $0 20 funcref) (elem 0 (offset (i32.const 20))))
(module
  (type $0 (func))
  (import "spectest" "table" (table $0 0 funcref))
  (func $0 (type 0))
  (elem 0 (offset (i32.const 0)) 0)
)
(module
  (type $0 (func))
  (import "spectest" "table" (table $0 0 100 funcref))
  (func $0 (type 0))
  (elem 0 (offset (i32.const 0)) 0)
)
(module
  (type $0 (func))
  (import "spectest" "table" (table $0 0 funcref))
  (func $0 (type 0))
  (elem 0 (offset (i32.const 1)) 0)
)
(module
  (type $0 (func))
  (import "spectest" "table" (table $0 0 30 funcref))
  (func $0 (type 0))
  (elem 0 (offset (i32.const 1)) 0)
)
(assert_unlinkable
  (module
    (type $0 (func))
    (table $0 0 funcref)
    (func $0 (type 0))
    (elem 0 (offset (i32.const 0)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (table $0 0 0 funcref)
    (func $0 (type 0))
    (elem 0 (offset (i32.const 0)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (table $0 0 1 funcref)
    (func $0 (type 0))
    (elem 0 (offset (i32.const 0)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module (table $0 0 funcref) (elem 0 (offset (i32.const 1))))
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (table $0 10 funcref)
    (func $0 (type 0))
    (elem 0 (offset (i32.const 10)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (import "spectest" "table" (table $0 10 funcref))
    (func $0 (type 0))
    (elem 0 (offset (i32.const 10)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (table $0 10 20 funcref)
    (func $0 (type 0))
    (elem 0 (offset (i32.const 10)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (import "spectest" "table" (table $0 10 funcref))
    (func $0 (type 0))
    (elem 0 (offset (i32.const 10)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (table $0 10 funcref)
    (func $0 (type 0))
    (elem 0 (offset (i32.const -1)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (import "spectest" "table" (table $0 10 funcref))
    (func $0 (type 0))
    (elem 0 (offset (i32.const -1)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (table $0 10 funcref)
    (func $0 (type 0))
    (elem 0 (offset (i32.const -10)) 0)
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module
    (type $0 (func))
    (import "spectest" "table" (table $0 10 funcref))
    (func $0 (type 0))
    (elem 0 (offset (i32.const -10)) 0)
  )
  "elements segment does not fit"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0)) (elem 0 (offset (i32.const 0)) 0))
  "unknown table"
)
(assert_invalid
  (module (table $0 1 funcref) (elem 0 (offset (i64.const 0))))
  "type mismatch"
)
(assert_invalid
  (module (table $0 1 funcref) (elem 0 (offset (i32.const 0) (i32.ctz))))
  "constant expression required"
)
(assert_invalid
  (module (table $0 1 funcref) (elem 0 (offset (nop))))
  "constant expression required"
)
(assert_invalid
  (module (table $0 1 funcref) (elem 0 (offset (nop) (i32.const 0))))
  "constant expression required"
)
(assert_invalid
  (module (table $0 1 funcref) (elem 0 (offset (i32.const 0) (nop))))
  "constant expression required"
)
(module
  (type $0 (func (result i32)))
  (table $0 10 funcref)
  (func $0 (type 0) (i32.const 65))
  (func $1 (type 0) (i32.const 66))
  (func $2 (type 0) (i32.const 9) (call_indirect (type 0)))
  (export "call-overwritten" (func 2))
  (elem 0 (offset (i32.const 9)) 0)
  (elem 0 (offset (i32.const 9)) 1)
)
(assert_return (invoke "call-overwritten") (i32.const 66))
(module
  (type $0 (func (result i32)))
  (import "spectest" "table" (table $0 10 funcref))
  (func $0 (type 0) (i32.const 65))
  (func $1 (type 0) (i32.const 66))
  (func $2 (type 0) (i32.const 9) (call_indirect (type 0)))
  (export "call-overwritten-element" (func 2))
  (elem 0 (offset (i32.const 9)) 0)
  (elem 0 (offset (i32.const 9)) 1)
)
(assert_return (invoke "call-overwritten-element") (i32.const 66))
(module $module1
  (type $0 (func (result i32)))
  (table $0 10 funcref)
  (func $0 (type 0) (i32.const 65))
  (func $1 (type 0) (i32.const 66))
  (func $2 (type 0) (i32.const 7) (call_indirect (type 0)))
  (func $3 (type 0) (i32.const 8) (call_indirect (type 0)))
  (func $4 (type 0) (i32.const 9) (call_indirect (type 0)))
  (export "shared-table" (table 0))
  (export "call-7" (func 2))
  (export "call-8" (func 3))
  (export "call-9" (func 4))
  (elem 0 (offset (i32.const 8)) 0)
  (elem 0 (offset (i32.const 9)) 1)
)
(register "module1" $module1)
(assert_trap (invoke $module1 "call-7") "uninitialized element")
(assert_return (invoke $module1 "call-8") (i32.const 65))
(assert_return (invoke $module1 "call-9") (i32.const 66))
(module $module2
  (type $0 (func (result i32)))
  (import "module1" "shared-table" (table $0 10 funcref))
  (func $0 (type 0) (i32.const 67))
  (func $1 (type 0) (i32.const 68))
  (elem 0 (offset (i32.const 7)) 0)
  (elem 0 (offset (i32.const 8)) 1)
)
(assert_return (invoke $module1 "call-7") (i32.const 67))
(assert_return (invoke $module1 "call-8") (i32.const 68))
(assert_return (invoke $module1 "call-9") (i32.const 66))
(module $module3
  (type $0 (func (result i32)))
  (import "module1" "shared-table" (table $0 10 funcref))
  (func $0 (type 0) (i32.const 69))
  (func $1 (type 0) (i32.const 70))
  (elem 0 (offset (i32.const 8)) 0)
  (elem 0 (offset (i32.const 9)) 1)
)
(assert_return (invoke $module1 "call-7") (i32.const 67))
(assert_return (invoke $module1 "call-8") (i32.const 69))
(assert_return (invoke $module1 "call-9") (i32.const 70))
