open AST

(*here are defined some auxiliary functions *)
let string_of_prefix_type = function
  | Op_not -> "boolean"
  | Op_bnot -> "int"
  | Op_neg | Op_incr | Op_decr | Op_plus -> "int or float"

(* Here are defined the exceptions *)
(* Type.t options *)
exception Wrong_types_declaration of Type.t option * Type.t option
exception Wrong_type_bool of Type.t option
exception Wrong_types_bool of Type.t option * Type.t option
exception Wrong_type_if of Type.t option
exception Wrong_type_post of Type.t option
exception Wrong_types_operation  of Type.t option * infix_op * Type.t option
exception Wrong_types_assign_operation of Type.t option * assign_op * Type.t option
exception Wrong_type_unitary_operation of prefix_op * Type.t option
exception Wrong_type_list of Type.t option * Type.t option 

(*strings*)
(* variable, methods and attributes *)
exception Variable_exists of string
exception Unknown_variable of string 
exception Attribute_exists of string 
exception Unknown_attribute of string 
exception Method_exists of string
exception Unknown_method of string
exception Class_exists of string
exception Unknown_class of string list

(*returns*)
exception Wrong_type_return of Type.t * Type.t
exception Return_expression_no_type

(*Here are defined helping exception messages *)
(* Type.t options *)
let print_wrong_types expression elem1 elem2 = 
	print_string("Expression : " ^ expression ^ "requires two arguments of the same type");
	print_endline("wrong bool types : " ^ (Type.stringOfOpt elem1) ^ " different from : " ^ (Type.stringOfOpt elem2))

let print_wrong_types_declaration elem1 elem2 =
  print_wrong_types "declaration" elem1 elem2 

let print_wrong_types_operation x operator y = 
	print_string("Operator : " ^ (AST.string_of_infix_op operator));
	print_endline("wrong types : " ^ (Type.stringOfOpt x) ^ " different from : " ^ (Type.stringOfOpt y))

let print_wrong_types_assign_operation x operator y =
	print_string("Operator : " ^ (AST.string_of_assign_op operator));
	print_endline("wrong types : " ^ (Type.stringOfOpt x) ^ " different from : " ^ (Type.stringOfOpt y))

let print_wrong_type_if elem = 
	print_endline((Type.stringOfOpt elem) ^ " is not a boolean needed by the if condition")

let print_wrong_type_bool elem = 
	print_endline("Wrong type : " ^ (Type.stringOfOpt elem) ^ " should be a boolean")

let print_wrong_types_bool elem1 elem2 = 
	print_endline("wrong bool types : " ^ (Type.stringOfOpt elem1) ^ " different from : " ^ (Type.stringOfOpt elem2))

let print_wrong_type_unitary_operation operator x =
	print_string("Operator : " ^ (AST.string_of_prefix_op operator));
	print_string("Expects : " ^ (string_of_prefix_type operator));
	print_string("Gots : " ^ (Type.stringOfOpt x))

let print_wrong_type_post elem =
	print_endline("Increments operators do not expect a " ^ (Type.stringOfOpt elem) ^ " type object")

(* strings *)
let print_variable_exists elem =
  print_endline ("Variable name \"" ^ elem ^ "\" already exists")

let print_unknown_variable elem =
  print_endline ("No variable \"" ^ elem ^ "\" previously defined in the current scope")

let print_method_exists met =
	print_endline ("Method name \"" ^ met ^ "\" already exists")

let print_unknown_method met =
	print_endline ("No method \"" ^ met ^ "\" previously defined in the current scope")

let print_attribute_exists attr =
	print_endline ("Attribute name \"" ^ attr ^ "\" already exists")

let print_unknown_attribute attr =
	print_endline ("No attribute \"" ^ attr ^ "\" previously defined in the current scope")

let print_class_exists c =
	print_endline ("Class name \"" ^ c ^ "\" already exists")

let print_unknown_class c =
	print_endline ("No class \"" ^ c ^ "\" previously defined in the current scope")

(* arrays *)
let print_wrong_type_list elem1 elem2 = 
	print_endline("The array receives " ^ (Type.stringOfOpt elem1) ^ " and " ^ (Type.stringOfOpt elem2) ^ " which are different")

(* returns *)
let print_Wrong_type_return x y =
  print_endline ("The expected return type is " ^ (Type.stringOf x) ^ " but instead got " ^ (Type.stringOf y))

(* Here are defined the verifications *)
let verify_assign_operation_type x operator y =
  if x <> y then raise(Wrong_types_assign_operation(x, operator, y))

let verify_operation_type x operator y =
  if x <> y then raise(Wrong_types_operation(x, operator, y))

let verify_return_type x y =
  match x, y with
  | _, None -> raise(Return_expression_no_type)
  | x, Some(z) -> if x <> z then raise(Wrong_type_return(x, z))

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

(*array verifications *)
let rec verify_array_types expr =
	match expr with
	| []        -> ()
	| elem::l   -> (match l with
									| [] -> ()
									| elem2::l2 -> if elem.etype <> elem2.etype 
																 then raise(Wrong_type_list(elem.etype, elem2.etype)));
									verify_array_types l
