(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i32.load8_s) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i32.load8_u) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i32.load16_s) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i32.load16_u) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i32.load) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.load8_s) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.load8_u) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.load16_s) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.load16_u) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.load32_s) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.load32_u) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.load) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (f32.load) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (f64.load) (drop))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i32.const 1) (i32.store8))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i32.const 1) (i32.store16))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i32.const 1) (i32.store))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.const 1) (i64.store8))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.const 1) (i64.store16))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.const 1) (i64.store32))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (i64.const 1) (i64.store))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (f32.const 1) (f32.store))
)
(module
  (type $0 (func))
  (memory $0 0)
  (func $0 (type 0) (i32.const 0) (f64.const 1) (f64.store))
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load8_s align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load8_s align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load8_u align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load8_u align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load16_s align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load16_s align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load16_u align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load16_u align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i32.load align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load8_s align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load8_s align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load8_u align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load8_u align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load16_s align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load16_s align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load16_u align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load16_u align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load32_s align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load32_s align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load32_u align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load32_u align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (i64.load align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (f32.load align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (f32.load align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (f64.load align=0 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (drop (f64.load align=7 (i32.const 0)))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i32.store8 align=0 (i32.const 0) (i32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i32.store8 align=7 (i32.const 0) (i32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i32.store16 align=0 (i32.const 0) (i32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i32.store16 align=7 (i32.const 0) (i32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i32.store align=0 (i32.const 0) (i32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i32.store align=7 (i32.const 0) (i32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store8 align=0 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store8 align=7 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store16 align=0 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store16 align=7 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store32 align=0 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store32 align=7 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store align=0 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (i64.store align=7 (i32.const 0) (i64.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (f32.store align=0 (i32.const 0) (f32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (f32.store align=7 (i32.const 0) (f32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (f64.store align=0 (i32.const 0) (f32.const 0))))"
  )
  "alignment"
)
(assert_malformed
  (module quote
    "(module (memory 0) (func (f64.store align=7 (i32.const 0) (f32.const 0))))"
  )
  "alignment"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load8_s align=2) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load8_u align=2) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load16_s align=4) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load16_u align=4) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load align=8) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load8_s align=2) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load8_u align=2) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load16_s align=4) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load16_u align=4) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load32_s align=8) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load32_u align=8) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load align=16) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (f32.load align=8) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (f64.load align=16) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load8_s align=2) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load8_u align=2) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load16_s align=4) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load16_u align=4) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.load align=8) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load8_s align=2) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load8_u align=2) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load16_s align=4) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load16_u align=4) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load32_s align=8) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load32_u align=8) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.load align=16) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (f32.load align=8) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (f64.load align=16) (drop))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.const 0) (i32.store8 align=2))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.const 0) (i32.store16 align=4))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i32.const 0) (i32.store align=8))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.const 0) (i64.store8 align=2))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.const 0) (i64.store16 align=4))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.const 0) (i64.store32 align=8))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (i64.const 0) (i64.store align=16))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (f32.const 0) (f32.store align=8))
  )
  "alignment must not be larger than natural"
)
(assert_invalid
  (module
    (type $0 (func))
    (memory $0 0)
    (func $0 (type 0) (i32.const 0) (f64.const 0) (f64.store align=16))
  )
  "alignment must not be larger than natural"
)
(module
  (type $0 (func (param i32) (result f32)))
  (type $1 (func (param i32) (result f64)))
  (type $2 (func (param i32 i32) (result i32)))
  (type $3 (func (param i32 i32) (result i64)))
  (memory $0 1)
  (func $0
    (type 0)
    (local f32 f32)
    (f32.const 10)
    (local.set 1)
    (block
      (block
        (block
          (block
            (block (local.get 0) (br_table 0 1 2 3 4))
            (i32.const 0)
            (local.get 1)
            (f32.store)
            (i32.const 0)
            (f32.load)
            (local.set 2)
            (br 3)
          )
          (i32.const 0)
          (local.get 1)
          (f32.store align=1)
          (i32.const 0)
          (f32.load align=1)
          (local.set 2)
          (br 2)
        )
        (i32.const 0)
        (local.get 1)
        (f32.store align=2)
        (i32.const 0)
        (f32.load align=2)
        (local.set 2)
        (br 1)
      )
      (i32.const 0)
      (local.get 1)
      (f32.store)
      (i32.const 0)
      (f32.load)
      (local.set 2)
    )
    (local.get 2)
  )
  (func $1
    (type 1)
    (local f64 f64)
    (f64.const 10)
    (local.set 1)
    (block
      (block
        (block
          (block
            (block
              (block (local.get 0) (br_table 0 1 2 3 4 5))
              (i32.const 0)
              (local.get 1)
              (f64.store)
              (i32.const 0)
              (f64.load)
              (local.set 2)
              (br 4)
            )
            (i32.const 0)
            (local.get 1)
            (f64.store align=1)
            (i32.const 0)
            (f64.load align=1)
            (local.set 2)
            (br 3)
          )
          (i32.const 0)
          (local.get 1)
          (f64.store align=2)
          (i32.const 0)
          (f64.load align=2)
          (local.set 2)
          (br 2)
        )
        (i32.const 0)
        (local.get 1)
        (f64.store align=4)
        (i32.const 0)
        (f64.load align=4)
        (local.set 2)
        (br 1)
      )
      (i32.const 0)
      (local.get 1)
      (f64.store)
      (i32.const 0)
      (f64.load)
      (local.set 2)
    )
    (local.get 2)
  )
  (func $2
    (type 2)
    (local i32 i32)
    (i32.const 10)
    (local.set 2)
    (block
      (block
        (block
          (block
            (block
              (block (local.get 0) (br_table 0 1 2 3 4 5))
              (local.get 1)
              (i32.const 0)
              (i32.eq)
              (if
                (then
                  (i32.const 0)
                  (local.get 2)
                  (i32.store8)
                  (i32.const 0)
                  (i32.load8_s)
                  (local.set 3)
                )
                (else)
              )
              (local.get 1)
              (i32.const 1)
              (i32.eq)
              (if
                (then
                  (i32.const 0)
                  (local.get 2)
                  (i32.store8)
                  (i32.const 0)
                  (i32.load8_s)
                  (local.set 3)
                )
                (else)
              )
              (br 4)
            )
            (local.get 1)
            (i32.const 0)
            (i32.eq)
            (if
              (then
                (i32.const 0)
                (local.get 2)
                (i32.store8)
                (i32.const 0)
                (i32.load8_u)
                (local.set 3)
              )
              (else)
            )
            (local.get 1)
            (i32.const 1)
            (i32.eq)
            (if
              (then
                (i32.const 0)
                (local.get 2)
                (i32.store8)
                (i32.const 0)
                (i32.load8_u)
                (local.set 3)
              )
              (else)
            )
            (br 3)
          )
          (local.get 1)
          (i32.const 0)
          (i32.eq)
          (if
            (then
              (i32.const 0)
              (local.get 2)
              (i32.store16)
              (i32.const 0)
              (i32.load16_s)
              (local.set 3)
            )
            (else)
          )
          (local.get 1)
          (i32.const 1)
          (i32.eq)
          (if
            (then
              (i32.const 0)
              (local.get 2)
              (i32.store16 align=1)
              (i32.const 0)
              (i32.load16_s align=1)
              (local.set 3)
            )
            (else)
          )
          (local.get 1)
          (i32.const 2)
          (i32.eq)
          (if
            (then
              (i32.const 0)
              (local.get 2)
              (i32.store16)
              (i32.const 0)
              (i32.load16_s)
              (local.set 3)
            )
            (else)
          )
          (br 2)
        )
        (local.get 1)
        (i32.const 0)
        (i32.eq)
        (if
          (then
            (i32.const 0)
            (local.get 2)
            (i32.store16)
            (i32.const 0)
            (i32.load16_u)
            (local.set 3)
          )
          (else)
        )
        (local.get 1)
        (i32.const 1)
        (i32.eq)
        (if
          (then
            (i32.const 0)
            (local.get 2)
            (i32.store16 align=1)
            (i32.const 0)
            (i32.load16_u align=1)
            (local.set 3)
          )
          (else)
        )
        (local.get 1)
        (i32.const 2)
        (i32.eq)
        (if
          (then
            (i32.const 0)
            (local.get 2)
            (i32.store16)
            (i32.const 0)
            (i32.load16_u)
            (local.set 3)
          )
          (else)
        )
        (br 1)
      )
      (local.get 1)
      (i32.const 0)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i32.store)
          (i32.const 0)
          (i32.load)
          (local.set 3)
        )
        (else)
      )
      (local.get 1)
      (i32.const 1)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i32.store align=1)
          (i32.const 0)
          (i32.load align=1)
          (local.set 3)
        )
        (else)
      )
      (local.get 1)
      (i32.const 2)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i32.store align=2)
          (i32.const 0)
          (i32.load align=2)
          (local.set 3)
        )
        (else)
      )
      (local.get 1)
      (i32.const 4)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i32.store)
          (i32.const 0)
          (i32.load)
          (local.set 3)
        )
        (else)
      )
    )
    (local.get 3)
  )
  (func $3
    (type 3)
    (local i64 i64)
    (i64.const 10)
    (local.set 2)
    (block
      (block
        (block
          (block
            (block
              (block
                (block
                  (block (local.get 0) (br_table 0 1 2 3 4 5 6 7))
                  (local.get 1)
                  (i32.const 0)
                  (i32.eq)
                  (if
                    (then
                      (i32.const 0)
                      (local.get 2)
                      (i64.store8)
                      (i32.const 0)
                      (i64.load8_s)
                      (local.set 3)
                    )
                    (else)
                  )
                  (local.get 1)
                  (i32.const 1)
                  (i32.eq)
                  (if
                    (then
                      (i32.const 0)
                      (local.get 2)
                      (i64.store8)
                      (i32.const 0)
                      (i64.load8_s)
                      (local.set 3)
                    )
                    (else)
                  )
                  (br 6)
                )
                (local.get 1)
                (i32.const 0)
                (i32.eq)
                (if
                  (then
                    (i32.const 0)
                    (local.get 2)
                    (i64.store8)
                    (i32.const 0)
                    (i64.load8_u)
                    (local.set 3)
                  )
                  (else)
                )
                (local.get 1)
                (i32.const 1)
                (i32.eq)
                (if
                  (then
                    (i32.const 0)
                    (local.get 2)
                    (i64.store8)
                    (i32.const 0)
                    (i64.load8_u)
                    (local.set 3)
                  )
                  (else)
                )
                (br 5)
              )
              (local.get 1)
              (i32.const 0)
              (i32.eq)
              (if
                (then
                  (i32.const 0)
                  (local.get 2)
                  (i64.store16)
                  (i32.const 0)
                  (i64.load16_s)
                  (local.set 3)
                )
                (else)
              )
              (local.get 1)
              (i32.const 1)
              (i32.eq)
              (if
                (then
                  (i32.const 0)
                  (local.get 2)
                  (i64.store16 align=1)
                  (i32.const 0)
                  (i64.load16_s align=1)
                  (local.set 3)
                )
                (else)
              )
              (local.get 1)
              (i32.const 2)
              (i32.eq)
              (if
                (then
                  (i32.const 0)
                  (local.get 2)
                  (i64.store16)
                  (i32.const 0)
                  (i64.load16_s)
                  (local.set 3)
                )
                (else)
              )
              (br 4)
            )
            (local.get 1)
            (i32.const 0)
            (i32.eq)
            (if
              (then
                (i32.const 0)
                (local.get 2)
                (i64.store16)
                (i32.const 0)
                (i64.load16_u)
                (local.set 3)
              )
              (else)
            )
            (local.get 1)
            (i32.const 1)
            (i32.eq)
            (if
              (then
                (i32.const 0)
                (local.get 2)
                (i64.store16 align=1)
                (i32.const 0)
                (i64.load16_u align=1)
                (local.set 3)
              )
              (else)
            )
            (local.get 1)
            (i32.const 2)
            (i32.eq)
            (if
              (then
                (i32.const 0)
                (local.get 2)
                (i64.store16)
                (i32.const 0)
                (i64.load16_u)
                (local.set 3)
              )
              (else)
            )
            (br 3)
          )
          (local.get 1)
          (i32.const 0)
          (i32.eq)
          (if
            (then
              (i32.const 0)
              (local.get 2)
              (i64.store32)
              (i32.const 0)
              (i64.load32_s)
              (local.set 3)
            )
            (else)
          )
          (local.get 1)
          (i32.const 1)
          (i32.eq)
          (if
            (then
              (i32.const 0)
              (local.get 2)
              (i64.store32 align=1)
              (i32.const 0)
              (i64.load32_s align=1)
              (local.set 3)
            )
            (else)
          )
          (local.get 1)
          (i32.const 2)
          (i32.eq)
          (if
            (then
              (i32.const 0)
              (local.get 2)
              (i64.store32 align=2)
              (i32.const 0)
              (i64.load32_s align=2)
              (local.set 3)
            )
            (else)
          )
          (local.get 1)
          (i32.const 4)
          (i32.eq)
          (if
            (then
              (i32.const 0)
              (local.get 2)
              (i64.store32)
              (i32.const 0)
              (i64.load32_s)
              (local.set 3)
            )
            (else)
          )
          (br 2)
        )
        (local.get 1)
        (i32.const 0)
        (i32.eq)
        (if
          (then
            (i32.const 0)
            (local.get 2)
            (i64.store32)
            (i32.const 0)
            (i64.load32_u)
            (local.set 3)
          )
          (else)
        )
        (local.get 1)
        (i32.const 1)
        (i32.eq)
        (if
          (then
            (i32.const 0)
            (local.get 2)
            (i64.store32 align=1)
            (i32.const 0)
            (i64.load32_u align=1)
            (local.set 3)
          )
          (else)
        )
        (local.get 1)
        (i32.const 2)
        (i32.eq)
        (if
          (then
            (i32.const 0)
            (local.get 2)
            (i64.store32 align=2)
            (i32.const 0)
            (i64.load32_u align=2)
            (local.set 3)
          )
          (else)
        )
        (local.get 1)
        (i32.const 4)
        (i32.eq)
        (if
          (then
            (i32.const 0)
            (local.get 2)
            (i64.store32)
            (i32.const 0)
            (i64.load32_u)
            (local.set 3)
          )
          (else)
        )
        (br 1)
      )
      (local.get 1)
      (i32.const 0)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i64.store)
          (i32.const 0)
          (i64.load)
          (local.set 3)
        )
        (else)
      )
      (local.get 1)
      (i32.const 1)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i64.store align=1)
          (i32.const 0)
          (i64.load align=1)
          (local.set 3)
        )
        (else)
      )
      (local.get 1)
      (i32.const 2)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i64.store align=2)
          (i32.const 0)
          (i64.load align=2)
          (local.set 3)
        )
        (else)
      )
      (local.get 1)
      (i32.const 4)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i64.store align=4)
          (i32.const 0)
          (i64.load align=4)
          (local.set 3)
        )
        (else)
      )
      (local.get 1)
      (i32.const 8)
      (i32.eq)
      (if
        (then
          (i32.const 0)
          (local.get 2)
          (i64.store)
          (i32.const 0)
          (i64.load)
          (local.set 3)
        )
        (else)
      )
    )
    (local.get 3)
  )
  (export "f32_align_switch" (func 0))
  (export "f64_align_switch" (func 1))
  (export "i32_align_switch" (func 2))
  (export "i64_align_switch" (func 3))
)
(assert_return (invoke "f32_align_switch" (i32.const 0)) (f32.const 10))
(assert_return (invoke "f32_align_switch" (i32.const 1)) (f32.const 10))
(assert_return (invoke "f32_align_switch" (i32.const 2)) (f32.const 10))
(assert_return (invoke "f32_align_switch" (i32.const 3)) (f32.const 10))
(assert_return (invoke "f64_align_switch" (i32.const 0)) (f64.const 10))
(assert_return (invoke "f64_align_switch" (i32.const 1)) (f64.const 10))
(assert_return (invoke "f64_align_switch" (i32.const 2)) (f64.const 10))
(assert_return (invoke "f64_align_switch" (i32.const 3)) (f64.const 10))
(assert_return (invoke "f64_align_switch" (i32.const 4)) (f64.const 10))
(assert_return
  (invoke "i32_align_switch" (i32.const 0) (i32.const 0))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 0) (i32.const 1))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 1) (i32.const 0))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 1) (i32.const 1))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 2) (i32.const 0))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 2) (i32.const 1))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 2) (i32.const 2))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 3) (i32.const 0))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 3) (i32.const 1))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 3) (i32.const 2))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 4) (i32.const 0))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 4) (i32.const 1))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 4) (i32.const 2))
  (i32.const 10)
)
(assert_return
  (invoke "i32_align_switch" (i32.const 4) (i32.const 4))
  (i32.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 0) (i32.const 0))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 0) (i32.const 1))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 1) (i32.const 0))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 1) (i32.const 1))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 2) (i32.const 0))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 2) (i32.const 1))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 2) (i32.const 2))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 3) (i32.const 0))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 3) (i32.const 1))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 3) (i32.const 2))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 4) (i32.const 0))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 4) (i32.const 1))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 4) (i32.const 2))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 4) (i32.const 4))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 5) (i32.const 0))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 5) (i32.const 1))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 5) (i32.const 2))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 5) (i32.const 4))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 6) (i32.const 0))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 6) (i32.const 1))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 6) (i32.const 2))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 6) (i32.const 4))
  (i64.const 10)
)
(assert_return
  (invoke "i64_align_switch" (i32.const 6) (i32.const 8))
  (i64.const 10)
)
(module
  (type $0 (func (param i32 i64)))
  (type $1 (func (param i32) (result i32)))
  (memory $0 1)
  (func $0 (type 0) (local.get 0) (local.get 1) (i64.store align=4))
  (func $1 (type 1) (local.get 0) (i32.load))
  (export "store" (func 0))
  (export "load" (func 1))
)
(assert_trap
  (invoke "store" (i32.const 65_532) (i64.const -1))
  "out of bounds memory access"
)
(assert_return (invoke "load" (i32.const 65_532)) (i32.const 0))
