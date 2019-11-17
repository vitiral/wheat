(module
  (type $0 (func))
  (type $1 (func))
  (type $2 (func (result i32)))
  (type $3 (func (param i32)))
  (type $4 (func (param i32 f64 i32) (result i32)))
  (type $5 (func))
  (type $6 (func (param i32 f64 i64)))
  (type $7 (func (param i32 f64)))
  (type $8 (func (param i32 f32 i64 i32 f64)))
  (type $9 (func (param i32 f32 i64 i32) (result i32)))
  (type $10 (func (result i64)))
  (type $11 (func (result f32)))
  (type $12 (func (result f64)))
  (type $13 (func (param i32 i32) (result i32)))
  (type $14 (func (param i64 i64) (result i64)))
  (type $15 (func (param f32 f32) (result f32)))
  (type $16 (func (param f64 f64) (result f64)))
  (type $17 (func (param f32 i32 i64 i32 f64 i32) (result f64)))
  (type $18 (func (param i32) (result i32)))
  (func $0 (type 0))
  (func $1 (type 0))
  (func $2 (type 0))
  (func $3 (type 0))
  (func $4 (type 0))
  (func $5 (type 0))
  (func $6 (type 0))
  (func $7 (type 0) (local i32))
  (func $8 (type 0) (local i32))
  (func $9 (type 0) (local i32 f64 i64))
  (func $10 (type 0) (local i32 f64))
  (func $11 (type 0) (local i32 f32 i64 i32 f64))
  (func $12 (type 0))
  (func $13 (type 0))
  (func $14 (type 3))
  (func $15 (type 3))
  (func $16 (type 6))
  (func $17 (type 7))
  (func $18 (type 8))
  (func $19 (type 2) (unreachable))
  (func $20 (type 1))
  (func $21 (type 2) (i32.const 0))
  (func $22 (type 3))
  (func $23 (type 4) (i32.const 0))
  (func $24 (type 2) (i32.const 0))
  (func $25 (type 3))
  (func $26 (type 4) (i32.const 0))
  (func $27 (type 0))
  (func $28 (type 5))
  (func $29
    (type 9)
    (local f32 i32 i64 i32 f64 i32)
    (unreachable)
    (unreachable)
  )
  (func $30
    (type 0)
    (local f32 i32 i64 i32 f64 i32)
    (unreachable)
    (unreachable)
  )
  (func $31 (type 2) (local i32 i32) (local.get 0))
  (func $32 (type 10) (local i64 i64) (local.get 0))
  (func $33 (type 11) (local f32 f32) (local.get 0))
  (func $34 (type 12) (local f64 f64) (local.get 0))
  (func $35 (type 2) (local i32 i32) (local.get 1))
  (func $36 (type 10) (local i64 i64) (local.get 1))
  (func $37 (type 11) (local f32 f32) (local.get 1))
  (func $38 (type 12) (local f64 f64) (local.get 1))
  (func $39
    (type 12)
    (local f32 i32 i64 i32 f64 i32)
    (local.get 0)
    (f32.neg)
    (drop)
    (local.get 1)
    (i32.eqz)
    (drop)
    (local.get 2)
    (i64.eqz)
    (drop)
    (local.get 3)
    (i32.eqz)
    (drop)
    (local.get 4)
    (f64.neg)
    (drop)
    (local.get 5)
    (i32.eqz)
    (drop)
    (local.get 4)
  )
  (func $40 (type 13) (local.get 0))
  (func $41 (type 14) (local.get 0))
  (func $42 (type 15) (local.get 0))
  (func $43 (type 16) (local.get 0))
  (func $44 (type 13) (local.get 1))
  (func $45 (type 14) (local.get 1))
  (func $46 (type 15) (local.get 1))
  (func $47 (type 16) (local.get 1))
  (func $48
    (type 17)
    (local.get 0)
    (f32.neg)
    (drop)
    (local.get 1)
    (i32.eqz)
    (drop)
    (local.get 2)
    (i64.eqz)
    (drop)
    (local.get 3)
    (i32.eqz)
    (drop)
    (local.get 4)
    (f64.neg)
    (drop)
    (local.get 5)
    (i32.eqz)
    (drop)
    (local.get 4)
  )
  (func $49 (type 0))
  (func $50 (type 0) (call 0))
  (func $51 (type 2) (i32.const 77))
  (func $52 (type 10) (i64.const 7_777))
  (func $53 (type 11) (f32.const 77.699_996_948_242_188))
  (func $54 (type 12) (f64.const 77.769_999_999_999_996))
  (func $55 (type 0) (block (call 0) (call 0)))
  (func $56 (type 2) (block (result i32) (call 0) (i32.const 77)))
  (func $57 (type 0) (return))
  (func $58 (type 2) (i32.const 78) (return))
  (func $59 (type 10) (i64.const 7_878) (return))
  (func $60 (type 11) (f32.const 78.699_996_948_242_188) (return))
  (func $61 (type 12) (f64.const 78.780_000_000_000_001) (return))
  (func $62 (type 2) (block (result i32) (call 0) (i32.const 77)) (return))
  (func $63 (type 0) (br 0))
  (func $64 (type 2) (i32.const 79) (br 0))
  (func $65 (type 10) (i64.const 7_979) (br 0))
  (func $66 (type 11) (f32.const 79.900_001_525_878_906) (br 0))
  (func $67 (type 12) (f64.const 79.790_000_000_000_006) (br 0))
  (func $68 (type 2) (block (result i32) (call 0) (i32.const 77)) (br 0))
  (func $69 (type 3) (local.get 0) (br_if 0))
  (func $70
    (type 18)
    (i32.const 50)
    (local.get 0)
    (br_if 0)
    (drop)
    (i32.const 51)
  )
  (func $71 (type 3) (local.get 0) (br_table 0 0 0))
  (func $72
    (type 18)
    (i32.const 50)
    (local.get 0)
    (br_table 0 0)
    (i32.const 51)
  )
  (func $73 (type 3) (block (local.get 0) (br_table 0 1 0)))
  (func $74
    (type 18)
    (block
      (result i32)
      (i32.const 50)
      (local.get 0)
      (br_table 0 1 0)
      (i32.const 51)
    )
    (i32.const 2)
    (i32.add)
  )
  (func $75 (type 2) (local i32) (local.get 0))
  (func $76 (type 10) (local i64) (local.get 0))
  (func $77 (type 11) (local f32) (local.get 0))
  (func $78 (type 12) (local f64) (local.get 0))
  (export "f" (func 2))
  (export "g" (func 4))
  (export "type-use-1" (func 20))
  (export "type-use-2" (func 21))
  (export "type-use-3" (func 22))
  (export "type-use-4" (func 23))
  (export "type-use-5" (func 24))
  (export "type-use-6" (func 25))
  (export "type-use-7" (func 26))
  (export "local-first-i32" (func 31))
  (export "local-first-i64" (func 32))
  (export "local-first-f32" (func 33))
  (export "local-first-f64" (func 34))
  (export "local-second-i32" (func 35))
  (export "local-second-i64" (func 36))
  (export "local-second-f32" (func 37))
  (export "local-second-f64" (func 38))
  (export "local-mixed" (func 39))
  (export "param-first-i32" (func 40))
  (export "param-first-i64" (func 41))
  (export "param-first-f32" (func 42))
  (export "param-first-f64" (func 43))
  (export "param-second-i32" (func 44))
  (export "param-second-i64" (func 45))
  (export "param-second-f32" (func 46))
  (export "param-second-f64" (func 47))
  (export "param-mixed" (func 48))
  (export "empty" (func 49))
  (export "value-void" (func 50))
  (export "value-i32" (func 51))
  (export "value-i64" (func 52))
  (export "value-f32" (func 53))
  (export "value-f64" (func 54))
  (export "value-block-void" (func 55))
  (export "value-block-i32" (func 56))
  (export "return-empty" (func 57))
  (export "return-i32" (func 58))
  (export "return-i64" (func 59))
  (export "return-f32" (func 60))
  (export "return-f64" (func 61))
  (export "return-block-i32" (func 62))
  (export "break-empty" (func 63))
  (export "break-i32" (func 64))
  (export "break-i64" (func 65))
  (export "break-f32" (func 66))
  (export "break-f64" (func 67))
  (export "break-block-i32" (func 68))
  (export "break-br_if-empty" (func 69))
  (export "break-br_if-num" (func 70))
  (export "break-br_table-empty" (func 71))
  (export "break-br_table-num" (func 72))
  (export "break-br_table-nested-empty" (func 73))
  (export "break-br_table-nested-num" (func 74))
  (export "init-local-i32" (func 75))
  (export "init-local-i64" (func 76))
  (export "init-local-f32" (func 77))
  (export "init-local-f64" (func 78))
)
(assert_return (invoke "type-use-1"))
(assert_return (invoke "type-use-2") (i32.const 0))
(assert_return (invoke "type-use-3" (i32.const 1)))
(assert_return
  (invoke "type-use-4" (i32.const 1) (f64.const 1) (i32.const 1))
  (i32.const 0)
)
(assert_return (invoke "type-use-5") (i32.const 0))
(assert_return (invoke "type-use-6" (i32.const 1)))
(assert_return
  (invoke "type-use-7" (i32.const 1) (f64.const 1) (i32.const 1))
  (i32.const 0)
)
(assert_return (invoke "local-first-i32") (i32.const 0))
(assert_return (invoke "local-first-i64") (i64.const 0))
(assert_return (invoke "local-first-f32") (f32.const 0))
(assert_return (invoke "local-first-f64") (f64.const 0))
(assert_return (invoke "local-second-i32") (i32.const 0))
(assert_return (invoke "local-second-i64") (i64.const 0))
(assert_return (invoke "local-second-f32") (f32.const 0))
(assert_return (invoke "local-second-f64") (f64.const 0))
(assert_return (invoke "local-mixed") (f64.const 0))
(assert_return
  (invoke "param-first-i32" (i32.const 2) (i32.const 3))
  (i32.const 2)
)
(assert_return
  (invoke "param-first-i64" (i64.const 2) (i64.const 3))
  (i64.const 2)
)
(assert_return
  (invoke "param-first-f32" (f32.const 2) (f32.const 3))
  (f32.const 2)
)
(assert_return
  (invoke "param-first-f64" (f64.const 2) (f64.const 3))
  (f64.const 2)
)
(assert_return
  (invoke "param-second-i32" (i32.const 2) (i32.const 3))
  (i32.const 3)
)
(assert_return
  (invoke "param-second-i64" (i64.const 2) (i64.const 3))
  (i64.const 3)
)
(assert_return
  (invoke "param-second-f32" (f32.const 2) (f32.const 3))
  (f32.const 3)
)
(assert_return
  (invoke "param-second-f64" (f64.const 2) (f64.const 3))
  (f64.const 3)
)
(assert_return
  (invoke "param-mixed"
    (f32.const 1)
    (i32.const 2)
    (i64.const 3)
    (i32.const 4)
    (f64.const 5.5)
    (i32.const 6)
  )
  (f64.const 5.5)
)
(assert_return (invoke "empty"))
(assert_return (invoke "value-void"))
(assert_return (invoke "value-i32") (i32.const 77))
(assert_return (invoke "value-i64") (i64.const 7_777))
(assert_return (invoke "value-f32") (f32.const 77.699_996_948_242_188))
(assert_return (invoke "value-f64") (f64.const 77.769_999_999_999_996))
(assert_return (invoke "value-block-void"))
(assert_return (invoke "value-block-i32") (i32.const 77))
(assert_return (invoke "return-empty"))
(assert_return (invoke "return-i32") (i32.const 78))
(assert_return (invoke "return-i64") (i64.const 7_878))
(assert_return (invoke "return-f32") (f32.const 78.699_996_948_242_188))
(assert_return (invoke "return-f64") (f64.const 78.780_000_000_000_001))
(assert_return (invoke "return-block-i32") (i32.const 77))
(assert_return (invoke "break-empty"))
(assert_return (invoke "break-i32") (i32.const 79))
(assert_return (invoke "break-i64") (i64.const 7_979))
(assert_return (invoke "break-f32") (f32.const 79.900_001_525_878_906))
(assert_return (invoke "break-f64") (f64.const 79.790_000_000_000_006))
(assert_return (invoke "break-block-i32") (i32.const 77))
(assert_return (invoke "break-br_if-empty" (i32.const 0)))
(assert_return (invoke "break-br_if-empty" (i32.const 2)))
(assert_return (invoke "break-br_if-num" (i32.const 0)) (i32.const 51))
(assert_return (invoke "break-br_if-num" (i32.const 1)) (i32.const 50))
(assert_return (invoke "break-br_table-empty" (i32.const 0)))
(assert_return (invoke "break-br_table-empty" (i32.const 1)))
(assert_return (invoke "break-br_table-empty" (i32.const 5)))
(assert_return (invoke "break-br_table-empty" (i32.const -1)))
(assert_return (invoke "break-br_table-num" (i32.const 0)) (i32.const 50))
(assert_return (invoke "break-br_table-num" (i32.const 1)) (i32.const 50))
(assert_return (invoke "break-br_table-num" (i32.const 10)) (i32.const 50))
(assert_return (invoke "break-br_table-num" (i32.const -100)) (i32.const 50))
(assert_return (invoke "break-br_table-nested-empty" (i32.const 0)))
(assert_return (invoke "break-br_table-nested-empty" (i32.const 1)))
(assert_return (invoke "break-br_table-nested-empty" (i32.const 3)))
(assert_return (invoke "break-br_table-nested-empty" (i32.const -2)))
(assert_return
  (invoke "break-br_table-nested-num" (i32.const 0))
  (i32.const 52)
)
(assert_return
  (invoke "break-br_table-nested-num" (i32.const 1))
  (i32.const 50)
)
(assert_return
  (invoke "break-br_table-nested-num" (i32.const 2))
  (i32.const 52)
)
(assert_return
  (invoke "break-br_table-nested-num" (i32.const -3))
  (i32.const 52)
)
(assert_return (invoke "init-local-i32") (i32.const 0))
(assert_return (invoke "init-local-i64") (i64.const 0))
(assert_return (invoke "init-local-f32") (f32.const 0))
(assert_return (invoke "init-local-f64") (f64.const 0))
(module
  (type $0 (func (param i32)))
  (type $1 (func (result f64)))
  (type $2 (func))
  (func $0 (type 1) (f64.const 0))
  (func $1 (type 0))
  (func $2 (type 0))
  (func $3 (type 1) (f64.const 0))
  (func $4 (type 2) (i32.const 0) (call 2) (call 3) (drop))
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func (result f64)))
    (func $0 (type 1) (f64.const 0))
    (func $1 (type 0))
    (func $2 (type 1) (f64.const 1))
    (func $3 (type 2))
  )
  "unknown type"
)
(module
  (type $0 (func))
  (type $1 (func))
  (type $2 (func (param i64 i64 f64 i64 f64 i64 f32 i32)))
  (type $3 (func (param f64 i64 f64 i64 f64 i64 f32 i32)))
  (table $0 7 7 funcref)
  (func $0 (type 0))
  (func $1 (type 3))
  (func $2 (type 0))
  (func $3 (type 3))
  (func $4 (type 3))
  (func $5 (type 2))
  (func $6 (type 2))
  (func $7
    (type 0)
    (i32.const 1)
    (call_indirect (type 0))
    (i32.const 4)
    (call_indirect (type 0))
  )
  (func $8
    (type 0)
    (f64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f32.const 0)
    (i32.const 0)
    (i32.const 0)
    (call_indirect (type 3))
    (f64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f32.const 0)
    (i32.const 0)
    (i32.const 2)
    (call_indirect (type 3))
    (f64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f32.const 0)
    (i32.const 0)
    (i32.const 3)
    (call_indirect (type 3))
  )
  (func $9 (type 0) (i32.const 1) (call_indirect (type 1)))
  (func $10
    (type 0)
    (i64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f32.const 0)
    (i32.const 0)
    (i32.const 5)
    (call_indirect (type 2))
    (i64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f64.const 0)
    (i64.const 0)
    (f32.const 0)
    (i32.const 0)
    (i32.const 6)
    (call_indirect (type 2))
  )
  (export "signature-explicit-reused" (func 7))
  (export "signature-implicit-reused" (func 8))
  (export "signature-explicit-duplicate" (func 9))
  (export "signature-implicit-duplicate" (func 10))
  (elem 0 (offset (i32.const 0)) 4 2 1 4 0 5 6)
)
(assert_return (invoke "signature-explicit-reused"))
(assert_return (invoke "signature-implicit-reused"))
(assert_return (invoke "signature-explicit-duplicate"))
(assert_return (invoke "signature-implicit-duplicate"))
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(func (type $sig) (result i32) (param i32) (i32.const 0))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(func (param i32) (type $sig) (result i32) (i32.const 0))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(func (param i32) (result i32) (type $sig) (i32.const 0))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(func (result i32) (type $sig) (param i32) (i32.const 0))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(func (result i32) (param i32) (type $sig) (i32.const 0))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote "(func (result i32) (param i32) (i32.const 0))")
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func))(func (type $sig) (result i32) (i32.const 0))"
  )
  "inline function type"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(func (type $sig) (result i32) (i32.const 0))"
  )
  "inline function type"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(func (type $sig) (param i32) (i32.const 0))"
  )
  "inline function type"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32 i32) (result i32)))(func (type $sig) (param i32) (result i32) (unreachable))"
  )
  "inline function type"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (local i32) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local f32) (local.get 0) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local f64 i64) (local.get 1) (f64.neg))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i64)))
    (func $0 (type 0) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f32)))
    (func $0 (type 0) (local.get 0) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64 i64)))
    (func $0 (type 0) (local.get 1) (f64.neg))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32 i32))) (func $0 (type 0) (unreachable)))
  "invalid result arity"
)
(assert_invalid
  (module (type $0 (func (result i32 i32))) (func $0 (type 0) (unreachable)))
  "invalid result arity"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i64))) (func $0 (type 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result f32))) (func $0 (type 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result f64))) (func $0 (type 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (nop)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (i32.const 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (f32.const 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (return)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (nop) (return)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 0) (return))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (return) (i32.const 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (nop) (return) (i32.const 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 1) (return) (i32.const 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 1) (return) (i32.const 1) (return))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (br 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (f32.const 0) (br 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (br 0) (i32.const 1)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 1) (br 0) (i32.const 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i64.const 1) (br 0) (i32.const 1) (br 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (br 1)) (i32.const 1) (br 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (nop) (br 1)) (i32.const 1) (br 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (i64.const 1) (br 1)) (i32.const 1) (br 0))
  )
  "type mismatch"
)
(assert_malformed (module quote "(func (nop) (local i32))") "unexpected token")
(assert_malformed (module quote "(func (nop) (param i32))") "unexpected token")
(assert_malformed (module quote "(func (nop) (result i32))") "unexpected token")
(assert_malformed
  (module quote "(func (local i32) (param i32))")
  "unexpected token"
)
(assert_malformed
  (module quote "(func (local i32) (result i32) (local.get 0))")
  "unexpected token"
)
(assert_malformed
  (module quote "(func (result i32) (param i32) (local.get 0))")
  "unexpected token"
)
