(* basic types *)


type identifier = string

type value =
	| True
	| Null
	| False
	| Integer of int
	| Real of float

type varType =
	| Int
	| Float
	| Double
	| String
	| Bool

type modifier =
	| Public
	| Abstract
	| Static
	| Protected
	| Private
	| Volatile
	| Transient
	| Final
	| Strictfp
	| None


(* ----------------- 8.1 class typing  -------------------------*)

type classDec =
{
	class_modifiers : modifier list;
	class_name      : identifier;
	class_body      : classBodyDec list
}

and classBodyDec =
	| ClassMemberDec of classMemberDec


and classMemberDec =
	| FieldDec of fieldDec
	| ClassDec of classDec

and fieldDec =
{
	var_modifiers		: modifier list;
	var_type			: varType;
	var_declarators		: varDeclarator list
}

and varDeclarator =
	| VarDec of identifier
	| VarDecInit of { var_name : identifier; var_initializer : varInitializer}

and varInitializer =
	| Expression of expression


















let print_varType vt =
	 match vt with
	| Float         -> print_string "float "
	| Int           -> print_string "int "
	| Double        -> print_string "double "
	| Bool          -> print_string "bool "

let print_value v =
	match v with
	| True          -> print_string "true"
	| False         -> print_string "false"
	| Null          -> print_string "null"

let print_modifier m =
	match m with
	| Public        -> print_string "public "
	| Abstract      -> print_string "abstract "
	| Static        -> print_string "static "
	| Protected     -> print_string "protected "
	| Private       -> print_string "private "
	| Final         -> print_string "final "
	| Strictfp      -> print_string "strictfp "

let rec print_javaCode jc =
	match jc with
	| classDec as c ->  List.iter print_modifier c.class_modifiers;
						print_string " class "; print_string c.class_name;
						print_string "{\n";
						List.iter print_body c.class_body;
						print_string "\n}"

and print_body b =
	match b with
	| ClassMemberDec cmd ->
		match cmd with
		| FieldDec fd -> List.iter print_modifier fd.var_modifiers;
						 print_varType fd.var_type;
						 let h::rest = fd.var_declarators in
						 print_string h.variable_name;
						 List.iter (fun vd-> print_string (", "^vd.variable_name)) rest;
						 print_string ";"
