(module
  (memory $0 1)
  (data 0 (offset (i32.const 0)))
  (data 0 (offset (i32.const 1)) "\61\62\63\64")
  (data 0 (offset (i32.const 0)))
  (data 0 (offset (i32.const 0)) "\61\62\63")
  (data 0 (offset (i32.const 0)))
  (data 0 (offset (i32.const 1)) "\61\62\63\64")
  (data 0 (offset (i32.const 0)))
  (data 0 (offset (i32.const 0)) "\61\62\63")
  (data 0 (offset (i32.const 0)))
  (data 0 (offset (i32.const 1)) "\61\62\63\64")
  (data 0 (offset (i32.const 0)))
  (data 0 (offset (i32.const 0)) "\61\62\63")
)
(module (memory $0 1) (data 0 (offset (i32.const 0)) "\61"))
(module
  (import "spectest" "memory" (memory $0 1))
  (data 0 (offset (i32.const 0)) "\61")
)
(module
  (memory $0 1)
  (data 0 (offset (i32.const 0)) "\61")
  (data 0 (offset (i32.const 3)) "\62")
  (data 0 (offset (i32.const 100)) "\63\64\65")
  (data 0 (offset (i32.const 5)) "\78")
  (data 0 (offset (i32.const 3)) "\63")
)
(module
  (import "spectest" "memory" (memory $0 1))
  (data 0 (offset (i32.const 0)) "\61")
  (data 0 (offset (i32.const 1)) "\62")
  (data 0 (offset (i32.const 2)) "\63\64\65")
  (data 0 (offset (i32.const 3)) "\66")
  (data 0 (offset (i32.const 2)) "\67")
  (data 0 (offset (i32.const 1)) "\68")
)
(module
  (import "spectest" "global_i32" (global $0 i32))
  (memory $0 1)
  (data 0 (offset (global.get 0)) "\61")
)
(module
  (import "spectest" "global_i32" (global $0 i32))
  (import "spectest" "memory" (memory $0 1))
  (data 0 (offset (global.get 0)) "\61")
)
(module
  (import "spectest" "global_i32" (global $0 i32))
  (memory $0 1)
  (data 0 (offset (global.get 0)) "\61")
)
(module
  (import "spectest" "global_i32" (global $0 i32))
  (import "spectest" "memory" (memory $0 1))
  (data 0 (offset (global.get 0)) "\61")
)
(module
  (memory $0 1)
  (data 0 (offset (i32.const 0)) "\61")
  (data 0 (offset (i32.const 65_535)) "\62")
)
(module
  (import "spectest" "memory" (memory $0 1))
  (data 0 (offset (i32.const 0)) "\61")
  (data 0 (offset (i32.const 65_535)) "\62")
)
(module (memory $0 2) (data 0 (offset (i32.const 131_071)) "\61"))
(module (memory $0 0) (data 0 (offset (i32.const 0))))
(module
  (import "spectest" "memory" (memory $0 0))
  (data 0 (offset (i32.const 0)))
)
(module (memory $0 0 0) (data 0 (offset (i32.const 0))))
(module (memory $0 1) (data 0 (offset (i32.const 65_536))))
(module (memory $0 0) (data 0 (offset (i32.const 0))))
(module
  (import "spectest" "memory" (memory $0 0))
  (data 0 (offset (i32.const 0)))
)
(module (memory $0 0 0) (data 0 (offset (i32.const 0))))
(module
  (import "spectest" "memory" (memory $0 0))
  (data 0 (offset (i32.const 0)) "\61")
)
(module
  (import "spectest" "memory" (memory $0 0 3))
  (data 0 (offset (i32.const 0)) "\61")
)
(module
  (import "spectest" "global_i32" (global $0 i32))
  (import "spectest" "memory" (memory $0 0))
  (data 0 (offset (global.get 0)) "\61")
)
(module
  (import "spectest" "global_i32" (global $0 i32))
  (import "spectest" "memory" (memory $0 0 3))
  (data 0 (offset (global.get 0)) "\61")
)
(module
  (import "spectest" "memory" (memory $0 0))
  (data 0 (offset (i32.const 1)) "\61")
)
(module
  (import "spectest" "memory" (memory $0 0 3))
  (data 0 (offset (i32.const 1)) "\61")
)
(assert_unlinkable
  (module (memory $0 0) (data 0 (offset (i32.const 0)) "\61"))
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 0 0) (data 0 (offset (i32.const 0)) "\61"))
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 0 1) (data 0 (offset (i32.const 0)) "\61"))
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 0) (data 0 (offset (i32.const 1))))
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 0 1) (data 0 (offset (i32.const 1))))
  "data segment does not fit"
)
(assert_unlinkable
  (module
    (import "spectest" "global_i32" (global $0 i32))
    (memory $0 0)
    (data 0 (offset (global.get 0)) "\61")
  )
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 1 2) (data 0 (offset (i32.const 65_536)) "\61"))
  "data segment does not fit"
)
(assert_unlinkable
  (module
    (import "spectest" "memory" (memory $0 1))
    (data 0 (offset (i32.const 65_536)) "\61")
  )
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 2) (data 0 (offset (i32.const 131_072)) "\61"))
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 2 3) (data 0 (offset (i32.const 131_072)) "\61"))
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 1) (data 0 (offset (i32.const -1)) "\61"))
  "data segment does not fit"
)
(assert_unlinkable
  (module
    (import "spectest" "memory" (memory $0 1))
    (data 0 (offset (i32.const -1)) "\61")
  )
  "data segment does not fit"
)
(assert_unlinkable
  (module (memory $0 2) (data 0 (offset (i32.const -100)) "\61"))
  "data segment does not fit"
)
(assert_unlinkable
  (module
    (import "spectest" "memory" (memory $0 1))
    (data 0 (offset (i32.const -100)) "\61")
  )
  "data segment does not fit"
)
(assert_invalid (module (data 0 (offset (i32.const 0)))) "unknown memory")
(assert_invalid
  (module (memory $0 1) (data 0 (offset (i64.const 0))))
  "type mismatch"
)
(assert_invalid
  (module (memory $0 1) (data 0 (offset (i32.const 0) (i32.ctz))))
  "constant expression required"
)
(assert_invalid
  (module (memory $0 1) (data 0 (offset (nop))))
  "constant expression required"
)
(assert_invalid
  (module (memory $0 1) (data 0 (offset (nop) (i32.const 0))))
  "constant expression required"
)
(assert_invalid
  (module (memory $0 1) (data 0 (offset (i32.const 0) (nop))))
  "constant expression required"
)
