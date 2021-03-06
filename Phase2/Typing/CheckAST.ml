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
exception Wrong_type_for of Type.t option
exception Wrong_type_post of Type.t option
exception Wrong_types_op of Type.t option * infix_op
exception Wrong_types_operation  of Type.t option * infix_op * Type.t option
exception Wrong_types_assign_operation of Type.t option * assign_op * Type.t option
exception Wrong_type_unitary_operation of prefix_op * Type.t option
exception Wrong_type_list of Type.t option * Type.t option 

(*strings*)
(* variable, methods and attributes *)
exception Variable_exists of string
exception Unknown_variable of string 
exception Attribute_exists of string 
exception Unknown_attribute of string * string
exception Method_exists of string * Type.t * argument list 
exception Unknown_method of string * AST.expression list * string option
exception Class_exists of string
exception Unknown_class of string list
exception Constructor_exists of string * Type.t * argument list 
exception Unknown_constructor of string list * AST.expression list
exception Wrong_type_ref of Type.ref_type * Type.ref_type
(*returns*)
exception Wrong_type_return of Type.t * Type.t
exception Return_expression_no_type
exception Argument_expression_no_type of string 

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

let print_wrong_type_for elem =
	print_endline("Wrong type : " ^ (Type.stringOfOpt elem) ^ "for a for condition")

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

let print_method_exists name typ args =
  print_endline ("The method " ^ Type.stringOf typ ^ " " ^ name ^ "(" ^ (String.concat "," (List.map AST.stringOf_arg args)) ^ ") already exist")

let print_not_typed_argument arg =
  print_endline ("The method " ^ arg ^ " has a not typed parameter")

let print_unknown_method met arg expr =
	print_endline ("No method \"" ^ met ^ "\" previously defined in the current scope")

let print_attribute_exists attr =
	print_endline ("Attribute name \"" ^ attr ^ "\" already exists")

let print_unknown_attribute attribute_name class_name =
	print_endline ("No attribute \"" ^ attribute_name ^ "\" previously defined in " ^ class_name)

let print_class_exists c =
	print_endline ("Class name \"" ^ c ^ "\" already exists")

let print_unknown_class c =
	print_endline ("No class \"" ^ c ^ "\" previously defined in the current scope")

let print_constructor_exists constructor expr = 
	print_endline ("Constructor : \"" ^ constructor ^ "\" with expression : " ^ expr ^ " already exists ! ")

let print_unknown_constructor name args =
  print_string ("No constructor \"" ^ name ^ "\" with the arguments (");
  print_endline ((String.concat ", " (List.map AST.stringOfExpType args) ^ ")"))
(* arrays *)
let print_wrong_type_list elem1 elem2 = 
	print_endline("The array receives " ^ (Type.stringOfOpt elem1) ^ " and " ^ (Type.stringOfOpt elem2) ^ " which are different")

(* returns *)
let print_Wrong_type_return x y =
  print_endline ("The expected return type is " ^ (Type.stringOf x) ^ " but instead got " ^ (Type.stringOf y))

let print_Wrong_type_ref x y =
  print_endline ((Type.stringOf_ref x) ^ " and " ^ (Type.stringOf_ref y) ^ "should be the same but are different")

(* Here are defined the verifications *)
let verify_assign_operation_type x operator y =
  if x <> y 
  then
  	match x with 
  		| Some(Type.Ref(_)) -> if y <> None then raise(Wrong_types_assign_operation(x, operator, y))
  		| _                 -> raise(Wrong_types_assign_operation(x, operator, y))

let verify_operation_type x operator y =
  if x <> y 
  then raise(Wrong_types_operation(x, operator, y));
  match operator with
		| Op_cor | Op_cand -> if (x <> Some(Type.Primitive(Type.Boolean)) || y <> Some(Type.Primitive(Type.Boolean)))
    												then raise(Wrong_types_op(x, operator))


let verify_return_type x y =
  match x, y with
  | _, None -> raise(Return_expression_no_type)
  | x, Some(z) -> if x <> z 
  								then raise(Wrong_type_return(x, z))

let verify_tern_type elem x y =
  if elem <> Some(Type.Primitive(Type.Boolean)) 
  then raise(Wrong_type_bool(elem));
  match x, y with
  | Some(Type.Primitive(_)), None -> raise(Wrong_types_bool(x, y))
  | None, Some(Type.Primitive(_)) -> raise(Wrong_types_bool(x, y))
  | Some(_), None -> ()
  | None, Some(_) -> ()
	| Some(typ1), Some(typ2) -> if typ1 <> typ2 
															then raise(Wrong_types_bool(x, y))

let verify_if_type elem =
	if elem <> Some(Type.Primitive(Type.Boolean)) 
	then raise(Wrong_type_if(elem))

let verify_for_expr expr =
	if expr <> Some(Type.Primitive(Type.Boolean))
	then raise(Wrong_type_for(expr))

let verify_post_type elem =
	if (elem <> Some(Type.Primitive(Type.Int)) && elem <> Some(Type.Primitive(Type.Float))) 
	then raise(Wrong_type_post(elem))

let verify_pre_type operator elem =
	match operator with
	| Op_not  -> if elem <> Some(Type.Primitive(Type.Boolean)) 
							 then raise(Wrong_type_unitary_operation(operator, elem))
	| Op_bnot -> if elem <> Some(Type.Primitive(Type.Int)) 
							 then raise(Wrong_type_unitary_operation(operator, elem))
	| Op_neg | Op_incr | Op_decr | Op_plus -> 
		if (elem <> Some(Type.Primitive(Type.Int)) && elem <> Some(Type.Primitive(Type.Float)))
		then raise(Wrong_type_unitary_operation(operator, elem))

(*array verifications *)
let rec verify_array_types expr =
	match expr with
	| []        -> ()
	| elem::l   -> (match l with
									| [] -> ()
									| elem2::l2 -> if elem.etype <> elem2.etype 
																 then raise(Wrong_type_list(elem.etype, elem2.etype)));
									verify_array_types l
