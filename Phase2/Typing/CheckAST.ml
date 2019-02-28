open AST

(*here are defined some auxiliary functions *)
let stringOf_prim = function
  | Some(Type.Primitive(Type.Int))           -> "int"
  | Some(Type.Primitive(Type.Int))           -> "long"
  | Some(Type.Primitive(Type.Byte))          -> "byte"
  | Some(Type.Primitive(Type.Char))          -> "char"
  | Some(Type.Primitive(Type.Boolean))       -> "boolean"
  | Some(Type.Primitive(Type.Float))         -> "float"
  | Some(Type.Ref({tpath=[]; tid="String"})) -> "string"

(* Here are defined the exceptions *)
exception Wrong_types_operation  of Type.t option * assign_op * Type.t option
exception Wrong_type_bool of Type.t option
exception Wrong_types_bool of Type.t option * Type.t option


(*Here are defined helping exception messages *)
let print_wrong_types_operation x operator y = 
	print_endline("wrong types : " ^ (stringOf_prim x) ^ " different from : " ^ (stringOf_prim y))

let print_wrong_type_bool t = 
	print_endline("Wrong type : " ^ (stringOf_prim t) ^ "should be a boolean")

let print_wrong_types_bool t1 t2 = 
	print_endline("wrong types : " ^ (stringOf_prim t1) ^ " different from : " ^ (stringOf_prim t2))

(* Here are defined the verifications *)
let verify_operation_type x operator y =
  if x <> y then raise(Wrong_types_operation(x, operator, y))

let verify_tern_type test x y =
  if test <> Some(Type.Primitive(Type.Boolean)) then raise(Wrong_type_bool(test));
  if x <> y then raise(Wrong_types_bool(x, y))