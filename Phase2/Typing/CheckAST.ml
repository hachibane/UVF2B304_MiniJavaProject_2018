open AST

(*here are defined some auxiliary functions *)
let string_of_prefix_type = function
  | Op_not -> "boolean"
  | Op_bnot -> "int"
  | Op_neg | Op_incr | Op_decr | Op_plus -> "int ou float"

(* Here are defined the exceptions *)
exception Wrong_type_bool of Type.t option
exception Wrong_types_bool of Type.t option * Type.t option
exception Wrong_type_if of Type.t option
exception Wrong_type_post of Type.t option
exception Wrong_types_operation  of Type.t option * infix_op * Type.t option
exception Wrong_types_assign_operation of Type.t option * assign_op * Type.t option
exception Wrong_type_unitary_operation of prefix_op * Type.t option

(*Here are defined helping exception messages *)
let print_wrong_types_operation x operator y = 
	print_string("Operator : " ^ (AST.string_of_infix_op operator));
	print_endline("wrong types : " ^ (Type.stringOfOpt x) ^ " different from : " ^ (Type.stringOfOpt y))

let print_wrong_types_assign_operation x operator y =
	print_string("Operator : " ^ (AST.string_of_assign_op operator));
	print_endline("wrong types : " ^ (Type.stringOfOpt x) ^ " different from : " ^ (Type.stringOfOpt y))

let print_wrong_type_if elem = 
	print_endline((Type.stringOfOpt elem) ^ " is not a boolean needed by the if condition")

let print_wrong_type_bool elem = 
	print_endline("Wrong type : " ^ (Type.stringOfOpt elem) ^ "should be a boolean")

let print_wrong_types_bool elem1 elem2 = 
	print_endline("wrong types : " ^ (Type.stringOfOpt elem1) ^ " different from : " ^ (Type.stringOfOpt elem2))

let print_wrong_type_unitary_operation operator x =
	print_string("Operator : " ^ (AST.string_of_prefix_op operator));
	print_string("Expects : " ^ (string_of_prefix_type operator));
	print_string("Gots : " ^ (Type.stringOfOpt x))

let print_wrong_type_post elem =
	print_endline(" ++ and -- do not expect a " ^ (Type.stringOfOpt elem) ^ "type object")

(* Here are defined the verifications *)
let verify_assign_operation_type x operator y =
  if x <> y then raise(Wrong_types_assign_operation(x, operator, y))

let verify_operation_type x operator y =
  if x <> y then raise(Wrong_types_operation(x, operator, y))

let verify_tern_type elem x y =
  if elem <> Some(Type.Primitive(Type.Boolean)) then raise(Wrong_type_bool(elem));
  match x, y with
  | Some(Type.Primitive(_)), None -> raise(Wrong_types_bool(x, y))
  | None, Some(Type.Primitive(_)) -> raise(Wrong_types_bool(x, y))
  | Some(_), None -> ()
  | None, Some(_) -> ()
	| Some(typ1), Some(typ2) -> if typ1 <> typ2 then raise(Wrong_types_bool(x, y))

let verify_if_type elem =
	if elem <> Some(Type.Primitive(Type.Boolean)) then raise(Wrong_type_if(elem))

let verify_post_type elem =
	if (elem <> Some(Type.Primitive(Type.Int)) && elem <> Some(Type.Primitive(Type.Float))) then raise(Wrong_type_post(elem))

let verify_pre_type operator elem =
	match operator with
	| Op_not  -> if elem <> Some(Type.Primitive(Type.Boolean)) then raise(Wrong_type_unitary_operation(operator, elem))
	| Op_bnot -> if elem <> Some(Type.Primitive(Type.Int)) then raise(Wrong_type_unitary_operation(operator, elem))
	| Op_neg | Op_incr | Op_decr | Op_plus -> 
		if (elem <> Some(Type.Primitive(Type.Int)) && elem <> Some(Type.Primitive(Type.Float))) then raise(Wrong_type_unitary_operation(operator, elem))