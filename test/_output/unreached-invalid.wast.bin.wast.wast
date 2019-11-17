(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (local.get 0) (drop))
  )
  "unknown local"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (global.get 0) (drop))
  )
  "unknown global"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (unreachable) (call 1)))
  "unknown function"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (unreachable) (br 1)))
  "unknown label"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (i32.const 0) (i64.eqz) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (unreachable) (i64.const 0) (i32.const 0) (select))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (unreachable)
      (i64.const 0)
      (i32.const 0)
      (select)
      (i32.const 0)
      (i32.const 0)
      (select)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (unreachable) (i32.const 0)))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (unreachable) (i32.eqz)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (i32.const 0) (i32.add))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (unreachable) (select)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (i32.const 0) (select))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (i32.const 0) (i32.const 0) (select))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (br 0) (block (nop) (i32.eqz) (drop))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (br 0) (f32.const 1) (i32.eqz) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (br 0) (block (i32.const 1) (f32.eq) (drop))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block (br 0) (i32.const 1) (f32.const 0) (f32.eq) (drop))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (br 0) (i32.const 1))))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (i32.const 1) (br 0) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (loop (br 1) (i32.const 1))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (result i32) (i32.const 1) (br 1) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (br 0) (i32.const 1)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i32.const 1) (br 0) (f32.const 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (return) (block (nop) (i32.eqz) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (return) (f32.const 1) (i32.eqz) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (return) (block (i32.const 1) (f32.eq) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (return) (i32.const 1) (f32.const 0) (f32.eq) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (return) (i32.const 1))))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 1) (i32.const 0) (return) (f32.const 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (loop (return) (i32.const 1))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (result i32) (i32.const 1) (return) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (return) (i32.const 1)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i32.const 1) (return) (f32.const 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (block (nop) (i32.eqz) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (loop (nop) (i32.eqz) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (loop (result i32) (nop) (i32.eqz)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (f32.const 1) (i32.eqz) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (block (i32.const 1) (f32.eq) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (unreachable) (i32.const 1) (f32.const 0) (f32.eq) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (unreachable) (i32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 1) (unreachable) (f32.const 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (loop (unreachable) (i32.const 1))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (result i32) (unreachable) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (unreachable) (i32.const 1)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (unreachable) (f32.const 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (unreachable)
      (i32.const 0)
      (if (then (nop) (i32.eqz) (drop)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (unreachable)
      (i32.const 0)
      (if (then (nop)) (else (nop) (i32.eqz) (drop)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (if (then (unreachable)) (else (nop) (i32.eqz) (drop)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (unreachable)) (block (nop) (i32.eqz) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (unreachable)) (f32.const 1) (i32.eqz) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block (unreachable))
      (block (i32.const 1) (f32.eq) (drop))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block (unreachable))
      (i32.const 1)
      (f32.const 0)
      (f32.eq)
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (block (unreachable)) (i32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 1) (block (unreachable)) (f32.const 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (loop (block (unreachable)) (i32.const 1))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (result i32) (block (unreachable)) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (unreachable)) (i32.const 1))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (unreachable)) (f32.const 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (loop (br 0)) (block (nop) (i32.eqz) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (loop (br 0)) (f32.const 1) (i32.eqz) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (loop (br 0)) (block (i32.const 1) (f32.eq) (drop)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (loop (br 0)) (i32.const 1) (f32.const 0) (f32.eq) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (loop (br 0)) (i32.const 1)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 1) (loop (br 0)) (f32.const 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (loop (loop (br 0)) (i32.const 1))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (result i32) (loop (br 0)) (f32.const 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (loop (br 0)) (i32.const 1)))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (br 0)) (f32.const 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (if (then (nop) (i32.eqz) (drop)) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (if (then (f32.const 1) (i32.eqz) (drop)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (if (then (i32.const 1) (f32.eq) (drop)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (i32.const 0)
      (if (then (i32.const 1) (f32.const 0) (f32.eq) (drop)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (if (then (i32.const 1)) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 0)
      (if (result i32) (then (f32.const 0)) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (if (then (block (i32.const 1))) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 0)
      (if (result i32) (then (block (result i32) (f32.const 0))) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (i32.const 0) (if (then (loop (i32.const 1))) (else)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (i32.const 0)
      (if (result i32) (then (loop (result i32) (f32.const 0))) (else))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (i32.const 1) (return) (f64.const 1) (return))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 1) (br 0) (f64.const 1) (br 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (unreachable) (f32.const 0) (br_if 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (block (unreachable) (i32.const 0) (i32.const 0) (br_if 1))
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (block (result f32) (unreachable) (i32.const 0) (i32.const 0) (br_if 1))
        (drop)
        (i32.const 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (unreachable)
        (i32.const 0)
        (i32.const 0)
        (br_if 0)
        (i32.const 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (unreachable) (f32.const 1) (br_table 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (unreachable)
        (f32.const 0)
        (i32.const 1)
        (br_table 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block
        (block (result f32) (unreachable) (i32.const 1) (br_table 0 1 0))
        (drop)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block
        (result f64)
        (block (result f32) (unreachable) (i32.const 1) (br_table 0 1 1))
        (drop)
        (f64.const 0)
      )
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 3) (block (unreachable))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (block (unreachable))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i64) (i64.const 0) (block (unreachable))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (i32.const 3) (block (i64.const 1) (unreachable)))
      (i32.const 9)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 3) (block (br 1))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (block (i32.const 0) (br 1))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i64.const 0) (block (i32.const 0) (br 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (block (i32.const 3) (block (br 2)))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (result i32) (block (block (i32.const 0) (br 2)))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (block (result i64) (i64.const 0) (block (i32.const 0) (br 2)))
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (i32.const 3) (block (i64.const 1) (br 1)))
      (i32.const 9)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 3) (block (return))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (block (block (i32.const 0) (return))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i64) (i64.const 0) (block (i32.const 0) (return)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (i32.const 3) (block (i64.const 1) (i32.const 0) (return)))
      (i32.const 9)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (loop (i32.const 3) (block (unreachable))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (block (unreachable))))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (result i64) (i64.const 0) (block (unreachable))))
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func (result i32))) (func $0 (type 0) (loop (nop) (br 0))))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0 (type 0) (loop (i32.const 0) (br 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (local i32) (unreachable) (local.tee 0))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (block (unreachable) (i32.const 0) (br_if 1))
        (i32.const 0)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i64)))
    (func $0 (type 0) (unreachable) (br_if 0) (i64.extend_i32_u))
  )
  "type mismatch"
)
