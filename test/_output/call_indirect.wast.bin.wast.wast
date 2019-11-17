(module
  (type $0 (func))
  (type $1 (func (result i32)))
  (type $2 (func (result i64)))
  (type $3 (func (result f32)))
  (type $4 (func (result f64)))
  (type $5 (func (param i32) (result i32)))
  (type $6 (func (param i64) (result i64)))
  (type $7 (func (param f32) (result f32)))
  (type $8 (func (param f64) (result f64)))
  (type $9 (func (param f32 i32) (result i32)))
  (type $10 (func (param i32 i64) (result i64)))
  (type $11 (func (param f64 f32) (result f32)))
  (type $12 (func (param i64 f64) (result f64)))
  (type $13 (func (param i32) (result i32)))
  (type $14 (func (param i64) (result i64)))
  (type $15 (func (param f32) (result f32)))
  (type $16 (func (param f64) (result f64)))
  (type $17 (func (param i64 f64 i32 i64) (result i32)))
  (type $18 (func (param i64) (result i32)))
  (type $19 (func (param i64 f64 i32 i64)))
  (type $20 (func (param i64)))
  (type $21 (func (param i32) (result i64)))
  (type $22 (func (param i32) (result f32)))
  (type $23 (func (param i32) (result f64)))
  (table $0 29 29 funcref)
  (memory $0 1)
  (global $0 (mut f64) (f64.const 10))
  (func $0 (type 1) (i32.const 306))
  (func $1 (type 2) (i64.const 356))
  (func $2 (type 3) (f32.const 3_890))
  (func $3 (type 4) (f64.const 3_940))
  (func $4 (type 5) (local.get 0))
  (func $5 (type 6) (local.get 0))
  (func $6 (type 7) (local.get 0))
  (func $7 (type 8) (local.get 0))
  (func $8 (type 10) (local.get 1))
  (func $9 (type 12) (local.get 1))
  (func $10 (type 9) (local.get 1))
  (func $11 (type 11) (local.get 1))
  (func $12 (type 13) (local.get 0))
  (func $13 (type 14) (local.get 0))
  (func $14 (type 15) (local.get 0))
  (func $15 (type 16) (local.get 0))
  (func $16
    (type 0)
    (i32.const 0)
    (call_indirect (type 0))
    (i64.const 0)
    (i32.const 0)
    (call_indirect (type 20))
    (i64.const 0)
    (f64.const 0)
    (i32.const 0)
    (i64.const 0)
    (i32.const 0)
    (call_indirect (type 19))
    (i32.const 0)
    (call_indirect (type 0))
    (i32.const 0)
    (call_indirect (type 1))
    (i32.eqz)
    (drop)
    (i32.const 0)
    (call_indirect (type 1))
    (i32.eqz)
    (drop)
    (i64.const 0)
    (i32.const 0)
    (call_indirect (type 18))
    (i32.eqz)
    (drop)
    (i64.const 0)
    (f64.const 0)
    (i32.const 0)
    (i64.const 0)
    (i32.const 0)
    (call_indirect (type 17))
    (i32.eqz)
    (drop)
    (i64.const 0)
    (i32.const 0)
    (call_indirect (type 6))
    (i64.eqz)
    (drop)
  )
  (func $17 (type 1) (i32.const 0) (call_indirect (type 1)))
  (func $18 (type 2) (i32.const 1) (call_indirect (type 2)))
  (func $19 (type 3) (i32.const 2) (call_indirect (type 3)))
  (func $20 (type 4) (i32.const 3) (call_indirect (type 4)))
  (func $21 (type 2) (i64.const 100) (i32.const 5) (call_indirect (type 6)))
  (func $22 (type 1) (i32.const 32) (i32.const 4) (call_indirect (type 5)))
  (func $23 (type 2) (i64.const 64) (i32.const 5) (call_indirect (type 6)))
  (func $24
    (type 3)
    (f32.const 1.320_000_052_452_087_4)
    (i32.const 6)
    (call_indirect (type 7))
  )
  (func $25
    (type 4)
    (f64.const 1.639_999_999_999_999_9)
    (i32.const 7)
    (call_indirect (type 8))
  )
  (func $26
    (type 1)
    (f32.const 32.099_998_474_121_094)
    (i32.const 32)
    (i32.const 8)
    (call_indirect (type 9))
  )
  (func $27
    (type 2)
    (i32.const 32)
    (i64.const 64)
    (i32.const 9)
    (call_indirect (type 10))
  )
  (func $28
    (type 3)
    (f64.const 64)
    (f32.const 32)
    (i32.const 10)
    (call_indirect (type 11))
  )
  (func $29
    (type 4)
    (i64.const 64)
    (f64.const 64.099_999_999_999_994)
    (i32.const 11)
    (call_indirect (type 12))
  )
  (func $30 (type 10) (local.get 1) (local.get 0) (call_indirect (type 6)))
  (func $31 (type 21) (i64.const 9) (local.get 0) (call_indirect (type 14)))
  (func $32 (type 5) (i32.const 9) (local.get 0) (call_indirect (type 13)))
  (func $33 (type 22) (f32.const 9) (local.get 0) (call_indirect (type 15)))
  (func $34 (type 23) (f64.const 9) (local.get 0) (call_indirect (type 16)))
  (func $35
    (type 6)
    (local.get 0)
    (i64.eqz)
    (if
      (result i64)
      (then (i64.const 1))
      (else
        (local.get 0)
        (local.get 0)
        (i64.const 1)
        (i64.sub)
        (i32.const 12)
        (call_indirect (type 6))
        (i64.mul)
      )
    )
  )
  (func $36
    (type 6)
    (local.get 0)
    (i64.const 1)
    (i64.le_u)
    (if
      (result i64)
      (then (i64.const 1))
      (else
        (local.get 0)
        (i64.const 2)
        (i64.sub)
        (i32.const 13)
        (call_indirect (type 6))
        (local.get 0)
        (i64.const 1)
        (i64.sub)
        (i32.const 13)
        (call_indirect (type 6))
        (i64.add)
      )
    )
  )
  (func $37
    (type 5)
    (local.get 0)
    (i32.eqz)
    (if
      (result i32)
      (then (i32.const 1))
      (else
        (local.get 0)
        (local.get 0)
        (i32.const 1)
        (i32.sub)
        (i32.const 23)
        (call_indirect (type 5))
        (i32.mul)
      )
    )
  )
  (func $38
    (type 7)
    (local.get 0)
    (f32.const 0)
    (f32.eq)
    (if
      (result f32)
      (then (f32.const 1))
      (else
        (local.get 0)
        (local.get 0)
        (f32.const 1)
        (f32.sub)
        (i32.const 24)
        (call_indirect (type 7))
        (f32.mul)
      )
    )
  )
  (func $39
    (type 8)
    (local.get 0)
    (f64.const 0)
    (f64.eq)
    (if
      (result f64)
      (then (f64.const 1))
      (else
        (local.get 0)
        (local.get 0)
        (f64.const 1)
        (f64.sub)
        (i32.const 25)
        (call_indirect (type 8))
        (f64.mul)
      )
    )
  )
  (func $40
    (type 5)
    (local.get 0)
    (i32.const 1)
    (i32.le_u)
    (if
      (result i32)
      (then (i32.const 1))
      (else
        (local.get 0)
        (i32.const 2)
        (i32.sub)
        (i32.const 26)
        (call_indirect (type 5))
        (local.get 0)
        (i32.const 1)
        (i32.sub)
        (i32.const 26)
        (call_indirect (type 5))
        (i32.add)
      )
    )
  )
  (func $41
    (type 7)
    (local.get 0)
    (f32.const 1)
    (f32.le)
    (if
      (result f32)
      (then (f32.const 1))
      (else
        (local.get 0)
        (f32.const 2)
        (f32.sub)
        (i32.const 27)
        (call_indirect (type 7))
        (local.get 0)
        (f32.const 1)
        (f32.sub)
        (i32.const 27)
        (call_indirect (type 7))
        (f32.add)
      )
    )
  )
  (func $42
    (type 8)
    (local.get 0)
    (f64.const 1)
    (f64.le)
    (if
      (result f64)
      (then (f64.const 1))
      (else
        (local.get 0)
        (f64.const 2)
        (f64.sub)
        (i32.const 28)
        (call_indirect (type 8))
        (local.get 0)
        (f64.const 1)
        (f64.sub)
        (i32.const 28)
        (call_indirect (type 8))
        (f64.add)
      )
    )
  )
  (func $43
    (type 5)
    (local.get 0)
    (i32.eqz)
    (if
      (result i32)
      (then (i32.const 44))
      (else
        (local.get 0)
        (i32.const 1)
        (i32.sub)
        (i32.const 15)
        (call_indirect (type 5))
      )
    )
  )
  (func $44
    (type 5)
    (local.get 0)
    (i32.eqz)
    (if
      (result i32)
      (then (i32.const 99))
      (else
        (local.get 0)
        (i32.const 1)
        (i32.sub)
        (i32.const 14)
        (call_indirect (type 5))
      )
    )
  )
  (func $45 (type 0) (i32.const 16) (call_indirect (type 0)))
  (func $46 (type 0) (i32.const 18) (call_indirect (type 0)))
  (func $47 (type 0) (i32.const 17) (call_indirect (type 0)))
  (func $48
    (type 1)
    (i32.const 0)
    (call_indirect (type 1))
    (i32.const 2)
    (i32.const 3)
    (select)
  )
  (func $49
    (type 1)
    (i32.const 2)
    (i32.const 0)
    (call_indirect (type 1))
    (i32.const 3)
    (select)
  )
  (func $50
    (type 1)
    (i32.const 2)
    (i32.const 3)
    (i32.const 0)
    (call_indirect (type 1))
    (select)
  )
  (func $51
    (type 1)
    (i32.const 0)
    (call_indirect (type 1))
    (if (result i32) (then (i32.const 1)) (else (i32.const 2)))
  )
  (func $52
    (type 2)
    (block
      (result i64)
      (i32.const 1)
      (call_indirect (type 2))
      (i32.const 2)
      (br_if 0)
    )
  )
  (func $53
    (type 1)
    (block
      (result i32)
      (i32.const 2)
      (i32.const 0)
      (call_indirect (type 1))
      (br_if 0)
    )
  )
  (func $54
    (type 3)
    (block
      (result f32)
      (i32.const 2)
      (call_indirect (type 3))
      (i32.const 2)
      (br_table 0 0)
    )
  )
  (func $55
    (type 1)
    (block
      (result i32)
      (i32.const 2)
      (i32.const 0)
      (call_indirect (type 1))
      (br_table 0 0)
    )
  )
  (func $56
    (type 0)
    (i32.const 0)
    (call_indirect (type 1))
    (i32.const 1)
    (i32.store)
  )
  (func $57
    (type 0)
    (i32.const 10)
    (i32.const 3)
    (call_indirect (type 4))
    (f64.store)
  )
  (func $58 (type 1) (i32.const 0) (call_indirect (type 1)) (memory.grow))
  (func $59
    (type 1)
    (i32.const 1)
    (i32.const 4)
    (call_indirect (type 5))
    (return)
  )
  (func $60
    (type 0)
    (i64.const 1)
    (i32.const 5)
    (call_indirect (type 6))
    (drop)
  )
  (func $61
    (type 3)
    (block
      (result f32)
      (f32.const 1)
      (i32.const 6)
      (call_indirect (type 7))
      (br 0)
    )
  )
  (func $62
    (type 4)
    (local f64)
    (f64.const 1)
    (i32.const 7)
    (call_indirect (type 8))
    (local.set 0)
    (local.get 0)
  )
  (func $63
    (type 4)
    (local f64)
    (f64.const 1)
    (i32.const 7)
    (call_indirect (type 8))
    (local.tee 0)
  )
  (func $64
    (type 4)
    (f64.const 1)
    (i32.const 7)
    (call_indirect (type 8))
    (global.set 0)
    (global.get 0)
  )
  (func $65 (type 1) (i32.const 0) (call_indirect (type 1)) (i32.load))
  (func $66
    (type 3)
    (block
      (result f32)
      (f32.const 0)
      (i32.const 6)
      (call_indirect (type 7))
      (f32.sqrt)
    )
  )
  (func $67
    (type 1)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 4)
      (call_indirect (type 5))
      (i32.const 10)
      (i32.add)
    )
  )
  (func $68
    (type 1)
    (block
      (result i32)
      (i32.const 10)
      (i32.const 1)
      (i32.const 4)
      (call_indirect (type 5))
      (i32.sub)
    )
  )
  (func $69
    (type 1)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 4)
      (call_indirect (type 5))
      (i32.eqz)
    )
  )
  (func $70
    (type 1)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 4)
      (call_indirect (type 5))
      (i32.const 10)
      (i32.le_u)
    )
  )
  (func $71
    (type 1)
    (block
      (result i32)
      (i32.const 10)
      (i32.const 1)
      (i32.const 4)
      (call_indirect (type 5))
      (i32.ne)
    )
  )
  (func $72
    (type 2)
    (block
      (result i64)
      (i32.const 1)
      (i32.const 4)
      (call_indirect (type 5))
      (i64.extend_i32_s)
    )
  )
  (export "type-i32" (func 17))
  (export "type-i64" (func 18))
  (export "type-f32" (func 19))
  (export "type-f64" (func 20))
  (export "type-index" (func 21))
  (export "type-first-i32" (func 22))
  (export "type-first-i64" (func 23))
  (export "type-first-f32" (func 24))
  (export "type-first-f64" (func 25))
  (export "type-second-i32" (func 26))
  (export "type-second-i64" (func 27))
  (export "type-second-f32" (func 28))
  (export "type-second-f64" (func 29))
  (export "dispatch" (func 30))
  (export "dispatch-structural-i64" (func 31))
  (export "dispatch-structural-i32" (func 32))
  (export "dispatch-structural-f32" (func 33))
  (export "dispatch-structural-f64" (func 34))
  (export "fac-i64" (func 35))
  (export "fib-i64" (func 36))
  (export "fac-i32" (func 37))
  (export "fac-f32" (func 38))
  (export "fac-f64" (func 39))
  (export "fib-i32" (func 40))
  (export "fib-f32" (func 41))
  (export "fib-f64" (func 42))
  (export "even" (func 43))
  (export "odd" (func 44))
  (export "runaway" (func 45))
  (export "mutual-runaway" (func 46))
  (export "as-select-first" (func 48))
  (export "as-select-mid" (func 49))
  (export "as-select-last" (func 50))
  (export "as-if-condition" (func 51))
  (export "as-br_if-first" (func 52))
  (export "as-br_if-last" (func 53))
  (export "as-br_table-first" (func 54))
  (export "as-br_table-last" (func 55))
  (export "as-store-first" (func 56))
  (export "as-store-last" (func 57))
  (export "as-memory.grow-value" (func 58))
  (export "as-return-value" (func 59))
  (export "as-drop-operand" (func 60))
  (export "as-br-value" (func 61))
  (export "as-local.set-value" (func 62))
  (export "as-local.tee-value" (func 63))
  (export "as-global.set-value" (func 64))
  (export "as-load-operand" (func 65))
  (export "as-unary-operand" (func 66))
  (export "as-binary-left" (func 67))
  (export "as-binary-right" (func 68))
  (export "as-test-operand" (func 69))
  (export "as-compare-left" (func 70))
  (export "as-compare-right" (func 71))
  (export "as-convert-operand" (func 72))
  (elem
    0
    (offset (i32.const 0))
    0
    1
    2
    3
    4
    5
    6
    7
    10
    8
    11
    9
    35
    36
    43
    44
    45
    46
    47
    12
    13
    14
    15
    37
    38
    39
    40
    41
    42
  )
)
(assert_return (invoke "type-i32") (i32.const 306))
(assert_return (invoke "type-i64") (i64.const 356))
(assert_return (invoke "type-f32") (f32.const 3_890))
(assert_return (invoke "type-f64") (f64.const 3_940))
(assert_return (invoke "type-index") (i64.const 100))
(assert_return (invoke "type-first-i32") (i32.const 32))
(assert_return (invoke "type-first-i64") (i64.const 64))
(assert_return (invoke "type-first-f32") (f32.const 1.320_000_052_452_087_4))
(assert_return (invoke "type-first-f64") (f64.const 1.639_999_999_999_999_9))
(assert_return (invoke "type-second-i32") (i32.const 32))
(assert_return (invoke "type-second-i64") (i64.const 64))
(assert_return (invoke "type-second-f32") (f32.const 32))
(assert_return (invoke "type-second-f64") (f64.const 64.099_999_999_999_994))
(assert_return (invoke "dispatch" (i32.const 5) (i64.const 2)) (i64.const 2))
(assert_return (invoke "dispatch" (i32.const 5) (i64.const 5)) (i64.const 5))
(assert_return (invoke "dispatch" (i32.const 12) (i64.const 5)) (i64.const 120))
(assert_return (invoke "dispatch" (i32.const 13) (i64.const 5)) (i64.const 8))
(assert_return (invoke "dispatch" (i32.const 20) (i64.const 2)) (i64.const 2))
(assert_trap
  (invoke "dispatch" (i32.const 0) (i64.const 2))
  "indirect call type mismatch"
)
(assert_trap
  (invoke "dispatch" (i32.const 15) (i64.const 2))
  "indirect call type mismatch"
)
(assert_trap
  (invoke "dispatch" (i32.const 29) (i64.const 2))
  "undefined element"
)
(assert_trap
  (invoke "dispatch" (i32.const -1) (i64.const 2))
  "undefined element"
)
(assert_trap
  (invoke "dispatch" (i32.const 1_213_432_423) (i64.const 2))
  "undefined element"
)
(assert_return (invoke "dispatch-structural-i64" (i32.const 5)) (i64.const 9))
(assert_return
  (invoke "dispatch-structural-i64" (i32.const 12))
  (i64.const 362_880)
)
(assert_return (invoke "dispatch-structural-i64" (i32.const 13)) (i64.const 55))
(assert_return (invoke "dispatch-structural-i64" (i32.const 20)) (i64.const 9))
(assert_trap
  (invoke "dispatch-structural-i64" (i32.const 11))
  "indirect call type mismatch"
)
(assert_trap
  (invoke "dispatch-structural-i64" (i32.const 22))
  "indirect call type mismatch"
)
(assert_return (invoke "dispatch-structural-i32" (i32.const 4)) (i32.const 9))
(assert_return
  (invoke "dispatch-structural-i32" (i32.const 23))
  (i32.const 362_880)
)
(assert_return (invoke "dispatch-structural-i32" (i32.const 26)) (i32.const 55))
(assert_return (invoke "dispatch-structural-i32" (i32.const 19)) (i32.const 9))
(assert_trap
  (invoke "dispatch-structural-i32" (i32.const 9))
  "indirect call type mismatch"
)
(assert_trap
  (invoke "dispatch-structural-i32" (i32.const 21))
  "indirect call type mismatch"
)
(assert_return (invoke "dispatch-structural-f32" (i32.const 6)) (f32.const 9))
(assert_return
  (invoke "dispatch-structural-f32" (i32.const 24))
  (f32.const 362_880)
)
(assert_return (invoke "dispatch-structural-f32" (i32.const 27)) (f32.const 55))
(assert_return (invoke "dispatch-structural-f32" (i32.const 21)) (f32.const 9))
(assert_trap
  (invoke "dispatch-structural-f32" (i32.const 8))
  "indirect call type mismatch"
)
(assert_trap
  (invoke "dispatch-structural-f32" (i32.const 19))
  "indirect call type mismatch"
)
(assert_return (invoke "dispatch-structural-f64" (i32.const 7)) (f64.const 9))
(assert_return
  (invoke "dispatch-structural-f64" (i32.const 25))
  (f64.const 362_880)
)
(assert_return (invoke "dispatch-structural-f64" (i32.const 28)) (f64.const 55))
(assert_return (invoke "dispatch-structural-f64" (i32.const 22)) (f64.const 9))
(assert_trap
  (invoke "dispatch-structural-f64" (i32.const 10))
  "indirect call type mismatch"
)
(assert_trap
  (invoke "dispatch-structural-f64" (i32.const 18))
  "indirect call type mismatch"
)
(assert_return (invoke "fac-i64" (i64.const 0)) (i64.const 1))
(assert_return (invoke "fac-i64" (i64.const 1)) (i64.const 1))
(assert_return (invoke "fac-i64" (i64.const 5)) (i64.const 120))
(assert_return
  (invoke "fac-i64" (i64.const 25))
  (i64.const 7_034_535_277_573_963_776)
)
(assert_return (invoke "fac-i32" (i32.const 0)) (i32.const 1))
(assert_return (invoke "fac-i32" (i32.const 1)) (i32.const 1))
(assert_return (invoke "fac-i32" (i32.const 5)) (i32.const 120))
(assert_return (invoke "fac-i32" (i32.const 10)) (i32.const 3_628_800))
(assert_return (invoke "fac-f32" (f32.const 0)) (f32.const 1))
(assert_return (invoke "fac-f32" (f32.const 1)) (f32.const 1))
(assert_return (invoke "fac-f32" (f32.const 5)) (f32.const 120))
(assert_return (invoke "fac-f32" (f32.const 10)) (f32.const 3_628_800))
(assert_return (invoke "fac-f64" (f64.const 0)) (f64.const 1))
(assert_return (invoke "fac-f64" (f64.const 1)) (f64.const 1))
(assert_return (invoke "fac-f64" (f64.const 5)) (f64.const 120))
(assert_return (invoke "fac-f64" (f64.const 10)) (f64.const 3_628_800))
(assert_return (invoke "fib-i64" (i64.const 0)) (i64.const 1))
(assert_return (invoke "fib-i64" (i64.const 1)) (i64.const 1))
(assert_return (invoke "fib-i64" (i64.const 2)) (i64.const 2))
(assert_return (invoke "fib-i64" (i64.const 5)) (i64.const 8))
(assert_return (invoke "fib-i64" (i64.const 20)) (i64.const 10_946))
(assert_return (invoke "fib-i32" (i32.const 0)) (i32.const 1))
(assert_return (invoke "fib-i32" (i32.const 1)) (i32.const 1))
(assert_return (invoke "fib-i32" (i32.const 2)) (i32.const 2))
(assert_return (invoke "fib-i32" (i32.const 5)) (i32.const 8))
(assert_return (invoke "fib-i32" (i32.const 20)) (i32.const 10_946))
(assert_return (invoke "fib-f32" (f32.const 0)) (f32.const 1))
(assert_return (invoke "fib-f32" (f32.const 1)) (f32.const 1))
(assert_return (invoke "fib-f32" (f32.const 2)) (f32.const 2))
(assert_return (invoke "fib-f32" (f32.const 5)) (f32.const 8))
(assert_return (invoke "fib-f32" (f32.const 20)) (f32.const 10_946))
(assert_return (invoke "fib-f64" (f64.const 0)) (f64.const 1))
(assert_return (invoke "fib-f64" (f64.const 1)) (f64.const 1))
(assert_return (invoke "fib-f64" (f64.const 2)) (f64.const 2))
(assert_return (invoke "fib-f64" (f64.const 5)) (f64.const 8))
(assert_return (invoke "fib-f64" (f64.const 20)) (f64.const 10_946))
(assert_return (invoke "even" (i32.const 0)) (i32.const 44))
(assert_return (invoke "even" (i32.const 1)) (i32.const 99))
(assert_return (invoke "even" (i32.const 100)) (i32.const 44))
(assert_return (invoke "even" (i32.const 77)) (i32.const 99))
(assert_return (invoke "odd" (i32.const 0)) (i32.const 99))
(assert_return (invoke "odd" (i32.const 1)) (i32.const 44))
(assert_return (invoke "odd" (i32.const 200)) (i32.const 99))
(assert_return (invoke "odd" (i32.const 77)) (i32.const 44))
(assert_exhaustion (invoke "runaway") "call stack exhausted")
(assert_exhaustion (invoke "mutual-runaway") "call stack exhausted")
(assert_return (invoke "as-select-first") (i32.const 306))
(assert_return (invoke "as-select-mid") (i32.const 2))
(assert_return (invoke "as-select-last") (i32.const 2))
(assert_return (invoke "as-if-condition") (i32.const 1))
(assert_return (invoke "as-br_if-first") (i64.const 356))
(assert_return (invoke "as-br_if-last") (i32.const 2))
(assert_return (invoke "as-br_table-first") (f32.const 3_890))
(assert_return (invoke "as-br_table-last") (i32.const 2))
(assert_return (invoke "as-store-first"))
(assert_return (invoke "as-store-last"))
(assert_return (invoke "as-memory.grow-value") (i32.const 1))
(assert_return (invoke "as-return-value") (i32.const 1))
(assert_return (invoke "as-drop-operand"))
(assert_return (invoke "as-br-value") (f32.const 1))
(assert_return (invoke "as-local.set-value") (f64.const 1))
(assert_return (invoke "as-local.tee-value") (f64.const 1))
(assert_return (invoke "as-global.set-value") (f64.const 1))
(assert_return (invoke "as-load-operand") (i32.const 1))
(assert_return (invoke "as-unary-operand") (f32.const 0))
(assert_return (invoke "as-binary-left") (i32.const 11))
(assert_return (invoke "as-binary-right") (i32.const 9))
(assert_return (invoke "as-test-operand") (i32.const 0))
(assert_return (invoke "as-compare-left") (i32.const 1))
(assert_return (invoke "as-compare-right") (i32.const 1))
(assert_return (invoke "as-convert-operand") (i64.const 1))
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(table 0 funcref)(func (result i32)  (call_indirect (type $sig) (result i32) (param i32)    (i32.const 0) (i32.const 0)  ))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(table 0 funcref)(func (result i32)  (call_indirect (param i32) (type $sig) (result i32)    (i32.const 0) (i32.const 0)  ))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(table 0 funcref)(func (result i32)  (call_indirect (param i32) (result i32) (type $sig)    (i32.const 0) (i32.const 0)  ))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(table 0 funcref)(func (result i32)  (call_indirect (result i32) (type $sig) (param i32)    (i32.const 0) (i32.const 0)  ))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(table 0 funcref)(func (result i32)  (call_indirect (result i32) (param i32) (type $sig)    (i32.const 0) (i32.const 0)  ))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(table 0 funcref)(func (result i32)  (call_indirect (result i32) (param i32) (i32.const 0) (i32.const 0)))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(table 0 funcref)(func (call_indirect (param $x i32) (i32.const 0) (i32.const 0)))"
  )
  "unexpected token"
)
(assert_malformed
  (module quote
    "(type $sig (func))(table 0 funcref)(func (result i32)  (call_indirect (type $sig) (result i32) (i32.const 0)))"
  )
  "inline function type"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(table 0 funcref)(func (result i32)  (call_indirect (type $sig) (result i32) (i32.const 0)))"
  )
  "inline function type"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32) (result i32)))(table 0 funcref)(func  (call_indirect (type $sig) (param i32) (i32.const 0) (i32.const 0)))"
  )
  "inline function type"
)
(assert_malformed
  (module quote
    "(type $sig (func (param i32 i32) (result i32)))(table 0 funcref)(func (result i32)  (call_indirect (type $sig) (param i32) (result i32)    (i32.const 0) (i32.const 0)  ))"
  )
  "inline function type"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (call_indirect (type 0)))
  )
  "unknown table"
)
(assert_invalid
  (module
    (type $0 (func))
    (table $0 0 funcref)
    (func $0 (type 0) (i32.const 0) (call_indirect (type 0)) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0 (type 1) (i32.const 0) (call_indirect (type 0)) (i32.eqz))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0 (type 1) (i32.const 0) (call_indirect (type 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64 i32)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0 (type 1) (i32.const 0) (call_indirect (type 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (table $0 0 funcref)
    (func $0 (type 0) (i32.const 1) (i32.const 0) (call_indirect (type 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (table $0 0 funcref)
    (func $0
      (type 0)
      (f64.const 2)
      (i32.const 1)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0 (type 1) (i32.const 1) (nop) (call_indirect (type 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0 (type 1) (i32.const 0) (i64.const 1) (call_indirect (type 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32 i32)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0
      (type 1)
      (nop)
      (i32.const 1)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32 i32)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0
      (type 1)
      (i32.const 1)
      (nop)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32 f64)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0
      (type 1)
      (f64.const 1)
      (i32.const 1)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param f64 i32)))
    (type $1 (func))
    (table $0 0 funcref)
    (func $0
      (type 1)
      (i32.const 1)
      (f64.const 1)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (func $0 (type 0))
    (func $1 (type 1) (block (i32.const 0) (call_indirect (type 0))))
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32 i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (func $0 (type 0))
    (func $1
      (type 1)
      (block (i32.const 0) (i32.const 0) (call_indirect (type 0)))
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (func $0 (type 0))
    (func $1 (type 1) (loop (i32.const 0) (call_indirect (type 0))))
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32 i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (func $0 (type 0))
    (func $1
      (type 1)
      (loop (i32.const 0) (i32.const 0) (call_indirect (type 0)))
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (func $0 (type 0))
    (func $1
      (type 1)
      (i32.const 0)
      (i32.const 0)
      (if (then (i32.const 0) (call_indirect (type 0))) (else))
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (param i32 i32)))
    (type $1 (func))
    (table $0 1 1 funcref)
    (func $0 (type 0))
    (func $1
      (type 1)
      (i32.const 0)
      (i32.const 0)
      (if (then (i32.const 0) (i32.const 0) (call_indirect (type 0))) (else))
    )
    (elem 0 (offset (i32.const 0)) 0)
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (table $0 0 funcref)
    (func $0 (type 0) (i32.const 0) (call_indirect (type 1)))
  )
  "unknown type"
)
(assert_invalid
  (module
    (type $0 (func))
    (table $0 0 funcref)
    (func $0 (type 0) (i32.const 0) (call_indirect (type 1_012_321_300)))
  )
  "unknown type"
)
(assert_invalid
  (module (table $0 2 2 funcref) (elem 0 (offset (i32.const 0)) 0 0))
  "unknown function"
)
