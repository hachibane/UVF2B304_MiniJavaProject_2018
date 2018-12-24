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
	var_declarators		: variableDec list
}

and variableDec = 
{
	variable_name : identifier;
}

let print_varType vt = print_string "type : ";
	 match vt with
	| Float         -> print_string "float"
	| Int           -> print_string "int"
	| Double        -> print_string "double"
	| Bool          -> print_string "bool"

let print_value v = print_string "value : ";
	match v with 
	| True          -> print_string "true"
	| False         -> print_string "false"
	| Null          -> print_string "null"

let print_modifier m = print_string "modifier : ";
	match m with 
	| Public        -> print_string "public"
	| Abstract      -> print_string "abstract"
	| Static        -> print_string "static" 
	| Protected     -> print_string "protected"
	| Private       -> print_string "private"
	| Final         -> print_string "final"
	| Strictfp      -> print_string "strictfp"	

let print_id id = print_string "identifier : "; print_string id

let rec print_javaCode jc = 
	match jc with 
	| classDec as c ->  print_modifiers c.class_modifiers;
						print_string " class "; print_id c.class_name;
						print_string ("{\n \t---class body declarations ---\n}")

and print_modifiers modifiers = List.iter (fun m -> print_modifier m; print_string ", ")


