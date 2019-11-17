(module
  (type $0 (func (param i32 i32) (result i32)))
  (type $1 (func (result i32)))
  (type $2 (func (result i64)))
  (type $3 (func (param i32)))
  (type $4 (func (param i64)))
  (type $5 (func (result f32)))
  (type $6 (func (result f64)))
  (type $7 (func (param f32)))
  (type $8 (func (param f64)))
  (type $9 (func))
  (type $10 (func (param i32) (result i32)))
  (table $0 1 1 funcref)
  (memory $0 1)
  (global $0 i32 (i32.const -2))
  (global $1 f32 (f32.const -3))
  (global $2 f64 (f64.const -4))
  (global $3 i64 (i64.const -5))
  (global $4 (mut i32) (i32.const -12))
  (global $5 (mut f32) (f32.const -13))
  (global $6 (mut f64) (f64.const -14))
  (global $7 (mut i64) (i64.const -15))
  (func $0 (type 1) (global.get 0))
  (func $1 (type 2) (global.get 3))
  (func $2 (type 1) (global.get 4))
  (func $3 (type 2) (global.get 7))
  (func $4 (type 3) (local.get 0) (global.set 4))
  (func $5 (type 4) (local.get 0) (global.set 7))
  (func $6 (type 5) (global.get 1))
  (func $7 (type 6) (global.get 2))
  (func $8 (type 5) (global.get 5))
  (func $9 (type 6) (global.get 6))
  (func $10 (type 7) (local.get 0) (global.set 5))
  (func $11 (type 8) (local.get 0) (global.set 6))
  (func $12 (type 9))
  (func $13 (type 1) (global.get 4) (i32.const 2) (i32.const 3) (select))
  (func $14 (type 1) (i32.const 2) (global.get 4) (i32.const 3) (select))
  (func $15 (type 1) (i32.const 2) (i32.const 3) (global.get 4) (select))
  (func $16 (type 1) (loop (result i32) (global.get 4) (call 12) (call 12)))
  (func $17 (type 1) (loop (result i32) (call 12) (global.get 4) (call 12)))
  (func $18 (type 1) (loop (result i32) (call 12) (call 12) (global.get 4)))
  (func $19
    (type 1)
    (global.get 4)
    (if
      (result i32)
      (then (call 12) (i32.const 2))
      (else (call 12) (i32.const 3))
    )
  )
  (func $20
    (type 1)
    (i32.const 1)
    (if (result i32) (then (global.get 4)) (else (i32.const 2)))
  )
  (func $21
    (type 1)
    (i32.const 0)
    (if (result i32) (then (i32.const 2)) (else (global.get 4)))
  )
  (func $22
    (type 1)
    (block
      (result i32)
      (global.get 4)
      (i32.const 2)
      (br_if 0)
      (i32.const 3)
      (return)
    )
  )
  (func $23
    (type 1)
    (block
      (result i32)
      (i32.const 2)
      (global.get 4)
      (br_if 0)
      (i32.const 3)
      (return)
    )
  )
  (func $24
    (type 1)
    (block (result i32) (global.get 4) (i32.const 2) (br_table 0 0))
  )
  (func $25
    (type 1)
    (block (result i32) (i32.const 2) (global.get 4) (br_table 0 0))
  )
  (func $26 (type 0) (local.get 0))
  (func $27
    (type 1)
    (block
      (result i32)
      (global.get 4)
      (i32.const 2)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $28
    (type 1)
    (block
      (result i32)
      (i32.const 2)
      (global.get 4)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $29
    (type 1)
    (block
      (result i32)
      (i32.const 2)
      (i32.const 0)
      (global.get 4)
      (call_indirect (type 0))
    )
  )
  (func $30 (type 9) (global.get 4) (i32.const 1) (i32.store))
  (func $31 (type 9) (i32.const 0) (global.get 4) (i32.store))
  (func $32 (type 1) (global.get 4) (i32.load))
  (func $33 (type 1) (global.get 4) (memory.grow))
  (func $34 (type 10) (local.get 0))
  (func $35 (type 1) (global.get 4) (call 34))
  (func $36 (type 1) (global.get 4) (return))
  (func $37 (type 9) (global.get 4) (drop))
  (func $38 (type 1) (block (result i32) (global.get 4) (br 0)))
  (func $39 (type 10) (global.get 4) (local.set 0) (local.get 0))
  (func $40 (type 10) (global.get 4) (local.tee 0))
  (func $41 (type 1) (global.get 4) (global.set 4) (global.get 4))
  (func $42 (type 1) (global.get 4) (i32.eqz))
  (func $43 (type 1) (global.get 4) (global.get 4) (i32.mul))
  (func $44 (type 1) (global.get 0) (i32.const 1) (i32.gt_u))
  (export "get-a" (func 0))
  (export "get-b" (func 1))
  (export "get-x" (func 2))
  (export "get-y" (func 3))
  (export "set-x" (func 4))
  (export "set-y" (func 5))
  (export "get-1" (func 6))
  (export "get-2" (func 7))
  (export "get-5" (func 8))
  (export "get-6" (func 9))
  (export "set-5" (func 10))
  (export "set-6" (func 11))
  (export "as-select-first" (func 13))
  (export "as-select-mid" (func 14))
  (export "as-select-last" (func 15))
  (export "as-loop-first" (func 16))
  (export "as-loop-mid" (func 17))
  (export "as-loop-last" (func 18))
  (export "as-if-condition" (func 19))
  (export "as-if-then" (func 20))
  (export "as-if-else" (func 21))
  (export "as-br_if-first" (func 22))
  (export "as-br_if-last" (func 23))
  (export "as-br_table-first" (func 24))
  (export "as-br_table-last" (func 25))
  (export "as-call_indirect-first" (func 27))
  (export "as-call_indirect-mid" (func 28))
  (export "as-call_indirect-last" (func 29))
  (export "as-store-first" (func 30))
  (export "as-store-last" (func 31))
  (export "as-load-operand" (func 32))
  (export "as-memory.grow-value" (func 33))
  (export "as-call-value" (func 35))
  (export "as-return-value" (func 36))
  (export "as-drop-operand" (func 37))
  (export "as-br-value" (func 38))
  (export "as-local.set-value" (func 39))
  (export "as-local.tee-value" (func 40))
  (export "as-global.set-value" (func 41))
  (export "as-unary-operand" (func 42))
  (export "as-binary-operand" (func 43))
  (export "as-compare-operand" (func 44))
  (elem 0 (offset (i32.const 0)) 26)
)
(assert_return (invoke "get-a") (i32.const -2))
(assert_return (invoke "get-b") (i64.const -5))
(assert_return (invoke "get-x") (i32.const -12))
(assert_return (invoke "get-y") (i64.const -15))
(assert_return (invoke "get-1") (f32.const -3))
(assert_return (invoke "get-2") (f64.const -4))
(assert_return (invoke "get-5") (f32.const -13))
(assert_return (invoke "get-6") (f64.const -14))
(assert_return (invoke "set-x" (i32.const 6)))
(assert_return (invoke "set-y" (i64.const 7)))
(assert_return (invoke "set-5" (f32.const 8)))
(assert_return (invoke "set-6" (f64.const 9)))
(assert_return (invoke "get-x") (i32.const 6))
(assert_return (invoke "get-y") (i64.const 7))
(assert_return (invoke "get-5") (f32.const 8))
(assert_return (invoke "get-6") (f64.const 9))
(assert_return (invoke "as-select-first") (i32.const 6))
(assert_return (invoke "as-select-mid") (i32.const 2))
(assert_return (invoke "as-select-last") (i32.const 2))
(assert_return (invoke "as-loop-first") (i32.const 6))
(assert_return (invoke "as-loop-mid") (i32.const 6))
(assert_return (invoke "as-loop-last") (i32.const 6))
(assert_return (invoke "as-if-condition") (i32.const 2))
(assert_return (invoke "as-if-then") (i32.const 6))
(assert_return (invoke "as-if-else") (i32.const 6))
(assert_return (invoke "as-br_if-first") (i32.const 6))
(assert_return (invoke "as-br_if-last") (i32.const 2))
(assert_return (invoke "as-br_table-first") (i32.const 6))
(assert_return (invoke "as-br_table-last") (i32.const 2))
(assert_return (invoke "as-call_indirect-first") (i32.const 6))
(assert_return (invoke "as-call_indirect-mid") (i32.const 2))
(assert_trap (invoke "as-call_indirect-last") "undefined element")
(assert_return (invoke "as-store-first"))
(assert_return (invoke "as-store-last"))
(assert_return (invoke "as-load-operand") (i32.const 1))
(assert_return (invoke "as-memory.grow-value") (i32.const 1))
(assert_return (invoke "as-call-value") (i32.const 6))
(assert_return (invoke "as-return-value") (i32.const 6))
(assert_return (invoke "as-drop-operand"))
(assert_return (invoke "as-br-value") (i32.const 6))
(assert_return (invoke "as-local.set-value" (i32.const 1)) (i32.const 6))
(assert_return (invoke "as-local.tee-value" (i32.const 1)) (i32.const 6))
(assert_return (invoke "as-global.set-value") (i32.const 6))
(assert_return (invoke "as-unary-operand") (i32.const 0))
(assert_return (invoke "as-binary-operand") (i32.const 36))
(assert_return (invoke "as-compare-operand") (i32.const 1))
(assert_invalid
  (module
    (type $0 (func))
    (global $0 f32 (f32.const 0))
    (func $0 (type 0) (f32.const 1) (global.set 0))
  )
  "global is immutable"
)
(module (global $0 (mut f32) (f32.const 0)) (export "a" (global 0)))
(module (global $0 (mut f32) (f32.const 0)) (export "a" (global 0)))
(assert_invalid
  (module (global $0 f32 (f32.const 0) (f32.neg)))
  "constant expression required"
)
(assert_invalid
  (module (global $0 f32 (local.get 0)))
  "constant expression required"
)
(assert_invalid
  (module (global $0 f32 (f32.const 1) (f32.neg)))
  "constant expression required"
)
(assert_invalid
  (module (global $0 i32 (i32.const 0) (nop)))
  "constant expression required"
)
(assert_invalid (module (global $0 i32 (nop))) "constant expression required")
(assert_invalid (module (global $0 i32 (f32.const 0))) "type mismatch")
(assert_invalid
  (module (global $0 i32 (i32.const 0) (i32.const 0)))
  "type mismatch"
)
(assert_invalid (module (global $0 i32)) "type mismatch")
(assert_invalid (module (global $0 i32 (global.get 0))) "unknown global")
(assert_invalid
  (module (global $0 i32 (global.get 1)) (global $1 i32 (i32.const 0)))
  "unknown global"
)
(module (import "spectest" "global_i32" (global $0 i32)))
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\98\80\80\80\00\01\08"
    "\73\70\65\63\74\65\73\74\0a\67\6c\6f\62\61\6c\5f"
    "\69\33\32\03\7f\02"
  )
  "invalid mutability"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\02\98\80\80\80\00\01\08"
    "\73\70\65\63\74\65\73\74\0a\67\6c\6f\62\61\6c\5f"
    "\69\33\32\03\7f\ff"
  )
  "invalid mutability"
)
(module (global $0 i32 (i32.const 0)))
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
    "\02\41\00\0b"
  )
  "invalid mutability"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
    "\ff\41\00\0b"
  )
  "invalid mutability"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (global.set 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (i32.const 0) (block (global.set 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (i32.const 0) (loop (global.set 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (then (global.set 0)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0
      (type 0)
      (i32.const 0)
      (i32.const 0)
      (if (result i32) (then (i32.const 0)) (else (global.set 0)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (i32.const 0) (block (global.set 0) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (i32.const 0) (block (global.set 0) (br_if 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (i32.const 0) (block (global.set 0) (br_table 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (global.set 0) (return))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (global.set 0) (i32.const 1) (i32.const 2) (select))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (type $1 (func (param i32) (result i32)))
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (global.set 0) (call 1))
    (func $1 (type 1) (local.get 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32) (result i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (global $0 (mut i32) (i32.const 0))
    (func $0 (type 0) (local.get 0))
    (func $1
      (type 1)
      (block (result i32) (global.set 0) (i32.const 0) (call_indirect (type 0)))
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
