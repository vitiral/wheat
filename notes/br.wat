(module
  (memory 1) ;; 64KiB of memory
  (export "main" (func $main))
  (global $memstack_ptr (mut i32) (i32.const 65536))
  (func $main (result i32)
        (call $switch_example (i32.const 1))
  )

  (func $switch_example (param $v i32) (result i32)
    (local $res i32)

    ;; switch $v (result i32)
    ;;  (case 0 () 100)
    ;;  (case 1 () 101)
    ;;  (case _ () 7777)
    (block
      (block
        (block
          (block
            ;; br_table acts as a kind of "switch", breaking
            ;; to a block outside given the index
            (local.get $v)
            (br_table 0 1 (;default=;)2 
            (unreachable)
          )
          (set_local $res (i32.const 100))
          br 2
        )
        (set_local $res (i32.const 101))
        br 1
      )
      (set_local $res (i32.const 7777))
    )
    (get_local $res)
  )
)
