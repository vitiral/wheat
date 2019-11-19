(module
  ;; Auxiliary definition
  (memory 1) ;; 64KiB of memory
  (func $dummy)
  (global $STACK_SIZE   i32     (i32.const 65536))
  (global $core$ref$mstack (mut i32) (i32.const 65536))

  (func $assert_no_stack
    (if (i32.ne (global.get $core$ref$mstack) (global.get $STACK_SIZE))
        (then (unreachable))
    )
  )

  (func $core$alloc_mstack (param $stack_size i32) (result i32)
    (local $s i32)
    (i32.sub
      (global.get $core$ref$mstack)
      (local.get $stack_size)
    )
    local.tee $s
    global.set $core$ref$mstack
    local.get $s
  )

  (func $core$free_mstack (param $stack_size i32)
    (global.set $core$ref$mstack
      (i32.add
        (global.get $core$ref$mstack)
        (local.get $stack_size)
      )
    )
  )

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

  (func (export "switch-example") (param $v i32) (result i32)
    (local $res i32)
    (local $res.foo i32)

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
            (br_table 0 1 (;default=;)2 )
            (unreachable)
          )
          (local.set $res (i32.const 100))
          br 2
        )
        (local.set $res (i32.const 101))
        br 1
      )
      (local.set $res (i32.const 7777))
    )
    (local.get $res)
  )

  ;; Wasm is a stack-based language, but for returning values more complicated
  ;; than an int/float, a separate memory stack has to be manually managed. One
  ;; approach is to use a mutable global to store the stack_ptr. We give
  ;; ourselves 1MiB of memstack and grow it downwards.
  ;;
  ;; Below is a demonstration of how this C code **might** be written by hand
  ;;
  ;;   typedef struct {
  ;;       int a;
  ;;       int b;
  ;;   } sum_struct_t;
  ;;
  ;;   sum_struct_t sum_struct_create(int a, int b) {
  ;;     return (sum_struct_t){a, b};
  ;;   }
  ;;
  ;;   int sum_local() {
  ;;     sum_struct_t s = sum_struct_create(40, 2);
  ;;     return s.a + s.b;
  ;;   }

  ;; Structs can only be returned by reference
  (func $sum_struct_create 
        (param $sum_struct_ptr i32) 
        (param $var$a i32) 
        (param $var$b i32)
    ;; c// sum_struct_ptr->a = a;
    (i32.store
      (local.get $sum_struct_ptr)
      (local.get $var$a)
    )

    ;; c// sum_struct_ptr->b = b;
    (i32.store offset=4
      (local.get $sum_struct_ptr)
      (local.get $var$b)
    )
  )

  (func (export "sum-struct-local") (param $a i32) (param $b i32) (result i32)
    (local $var$sum_struct$a i32)
    (local $var$sum_struct$b i32)
    (local $local_memstack_ptr i32)
    (call $assert_no_stack)

    ;; reserve memstack space
    (local.set $local_memstack_ptr (call $core$alloc_mstack (i32.const 8)))

    ;; call the function, storing the result in the memstack
    (call $sum_struct_create
      ((;$sum_struct_ptr=;) local.get $local_memstack_ptr)
      ((;$var$a=;) local.get $a)
      ((;$var$b=;) local.get $b)
    )

    ;; retrieve values from struct
    (local.set $var$sum_struct$a
      (i32.load offset=0 (local.get $local_memstack_ptr))
    )
    (local.set $var$sum_struct$b
      (i32.load offset=4 (local.get $local_memstack_ptr))
    )

    ;; unreserve memstack space
    (call $core$free_mstack (i32.const 8))
    (call $assert_no_stack)

    (i32.add
      (local.get $var$sum_struct$a)
      (local.get $var$sum_struct$b)
    )
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

(assert_return (invoke "switch-example" (i32.const 0)) (i32.const 100))
(assert_return (invoke "switch-example" (i32.const 1)) (i32.const 101))
(assert_return (invoke "switch-example" (i32.const 2)) (i32.const 7777))
(assert_return (invoke "switch-example" (i32.const 9)) (i32.const 7777))

(assert_return (invoke "sum-struct-local" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "sum-struct-local" (i32.const 1) (i32.const 2)) (i32.const 3))
(assert_return (invoke "sum-struct-local" (i32.const 40) (i32.const 2)) (i32.const 42))
