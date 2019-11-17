(assert_invalid
  (module (type $0 (func)) (func $0 (type 0)) (start 1))
  "unknown function"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i32.const 0) (return))
    (start 0)
  )
  "start function"
)
(assert_invalid
  (module (type $0 (func (param i32))) (func $0 (type 0)) (start 0))
  "start function"
)
(module
  (type $0 (func))
  (type $1 (func (result i32)))
  (memory $0 1 1)
  (func $0
    (type 0)
    (i32.const 0)
    (i32.const 0)
    (i32.load8_u)
    (i32.const 1)
    (i32.add)
    (i32.store8)
  )
  (func $1 (type 1) (i32.const 0) (i32.load8_u) (return))
  (func $2 (type 0) (call 0) (call 0) (call 0))
  (export "inc" (func 0))
  (export "get" (func 1))
  (start 2)
  (data 0 (offset (i32.const 0)) "\41")
)
(assert_return (invoke "get") (i32.const 68))
(invoke "inc")
(assert_return (invoke "get") (i32.const 69))
(invoke "inc")
(assert_return (invoke "get") (i32.const 70))
(module
  (type $0 (func))
  (type $1 (func (result i32)))
  (memory $0 1 1)
  (func $0
    (type 0)
    (i32.const 0)
    (i32.const 0)
    (i32.load8_u)
    (i32.const 1)
    (i32.add)
    (i32.store8)
  )
  (func $1 (type 1) (i32.const 0) (i32.load8_u) (return))
  (func $2 (type 0) (call 0) (call 0) (call 0))
  (export "inc" (func 0))
  (export "get" (func 1))
  (start 2)
  (data 0 (offset (i32.const 0)) "\41")
)
(assert_return (invoke "get") (i32.const 68))
(invoke "inc")
(assert_return (invoke "get") (i32.const 69))
(invoke "inc")
(assert_return (invoke "get") (i32.const 70))
(module
  (type $0 (func (param i32)))
  (type $1 (func))
  (import "spectest" "print_i32" (func $0 (type 0)))
  (func $1 (type 1) (i32.const 1) (call 0))
  (start 1)
)
(module
  (type $0 (func (param i32)))
  (type $1 (func))
  (import "spectest" "print_i32" (func $0 (type 0)))
  (func $1 (type 1) (i32.const 2) (call 0))
  (start 1)
)
(module
  (type $0 (func))
  (import "spectest" "print" (func $0 (type 0)))
  (start 0)
)
(assert_trap
  (module (type $0 (func)) (func $0 (type 0) (unreachable)) (start 0))
  "unreachable"
)
(assert_malformed
  (module quote
    "(module (func $a (unreachable)) (func $b (unreachable)) (start $a) (start $b))"
  )
  "multiple start sections"
)
