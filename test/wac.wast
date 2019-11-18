(module
  ;; Auxiliary definition
  (func $dummy)

  (func (export "multiple-simple") (param i32) (result i32)
    (block
      (block
        (block
          (block
            (block
              (br_table 0 1 2 3 4 (local.get 0))
              (return (i32.const -1)) ;; never returned
            )
            (return (i32.const 100)) ;; br 0
          )
          (return (i32.const 101)) ;; br 1
        )
        (return (i32.const 102)) ;; br 2
      )
      (return (i32.const 103)) ;; br 3
    )
    (i32.const 7777) ;; br 4+
  )
)

(assert_return (invoke "multiple-simple" (i32.const 0)) (i32.const 100))
(assert_return (invoke "multiple-simple" (i32.const 1)) (i32.const 101))
(assert_return (invoke "multiple-simple" (i32.const 2)) (i32.const 102))
(assert_return (invoke "multiple-simple" (i32.const 3)) (i32.const 103))
(assert_return (invoke "multiple-simple" (i32.const 4)) (i32.const 7777))
(assert_return (invoke "multiple-simple" (i32.const 10)) (i32.const 7777))
(assert_return (invoke "multiple-simple" (i32.const 11)) (i32.const 7777))
(assert_return (invoke "multiple-simple" (i32.const 12)) (i32.const 7777))

;; (assert_return (invoke "multiple-fallthrough" (i32.const 0)) (i32.const 100))
;; (assert_return (invoke "multiple-fallthrough" (i32.const 1)) (i32.const 101))
;; (assert_return (invoke "multiple-fallthrough" (i32.const 2)) (i32.const 7777))
;; (assert_return (invoke "multiple-fallthrough" (i32.const 9)) (i32.const 7777))
