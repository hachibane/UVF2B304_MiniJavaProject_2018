open AST

(*here are defined some auxiliary functions *)
let stringOf_prim = function
  | Some(Type.Primitive(Type.Int))           -> "int"
  | Some(Type.Primitive(Type.Int))           -> "long"
  | Some(Type.Primitive(Type.Byte))          -> "byte"
  | Some(Type.Primitive(Type.Char))          -> "char"
  | Some(Type.Primitive(Type.Short))         -> "short"
  | Some(Type.Primitive(Type.Boolean))       -> "boolean"
  | Some(Type.Primitive(Type.Float))         -> "float"
  | Some(Type.Ref({tpath=[]; tid="String"})) -> "string"

(* Here are defined the exceptions *)
exception Wrong_type_bool of Type.t option
exception Wrong_types_bool of Type.t option * Type.t option
exception Wrong_type_if of Type.t option
exception Wrong_types_operation  of Type.t option * infix_op * Type.t option
exception Wrong_types_assign_operation of Type.t option * assign_op * Type.t option


(*Here are defined helping exception messages *)
let print_wrong_types_operation x operator y = 
	print_endline("wrong types : " ^ (stringOf_prim x) ^ " different from : " ^ (stringOf_prim y))

let print_wrong_types_assign_operation x operator y =
	print_endline("wrong types : " ^ (stringOf_prim x) ^ " different from : " ^ (stringOf_prim y))

let print_wrong_type_if elem = 
	print_endline((stringOf_prim elem) ^ " is not a boolean needed by the if condition")

let print_wrong_type_bool elem = 
	print_endline("Wrong type : " ^ (stringOf_prim elem) ^ "should be a boolean")

let print_wrong_types_bool elem1 elem2 = 
	print_endline("wrong types : " ^ (stringOf_prim elem1) ^ " different from : " ^ (stringOf_prim elem2))

(* Here are defined the verifications *)
let verify_assign_operation_type x operator y =
  if x <> y then raise(Wrong_types_assign_operation(x, operator, y))

let verify_operation_type x operator y =
  if x <> y then raise(Wrong_types_operation(x, operator, y))

let verify_tern_type elem x y =
  if elem <> Some(Type.Primitive(Type.Boolean)) then raise(Wrong_type_bool(elem));
  if x <> y then raise(Wrong_types_bool(x, y))

let verify_if_type elem =
	if elem <> Some(Type.Primitive(Type.Boolean)) then raise(Wrong_type_if(elem));