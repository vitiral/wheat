(module
  (type $0 (func))
  (type $1 (func))
  (type $2 (func (param i32)))
  (type $3 (func (param i32)))
  (type $4 (func (result i32)))
  (type $5 (func (param i32) (result i32)))
  (type $6 (func (param i32) (result i32)))
  (type $7 (func (param f32 f64)))
  (type $8 (func (param f32 f64)))
  (type $9 (func (param f32 f64)))
  (type $10 (func (param f32 f64)))
  (type $11 (func (param f32 f64)))
  (type $12 (func (param f32 f64 i32 f64 i32 i32)))
  (type $13 (func (param f32 f64 i32)))
)
(assert_malformed
  (module quote "(type (func (result i32) (param i32)))")
  "result before parameter"
)
(assert_malformed
  (module quote "(type (func (result $x i32)))")
  "unexpected token"
)
(assert_invalid
  (module (type $0 (func (result i32 i32))))
  "invalid result arity"
)
(assert_invalid
  (module (type $0 (func (result i32 i32))))
  "invalid result arity"
)
