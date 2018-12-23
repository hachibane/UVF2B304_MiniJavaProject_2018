type lexeme = 
	| Bool of bool
	| Float of float
	| Int of int
	| Null
	| String of string
	| Id     of string
	| Delimiter of string
	| Keyword of string

type classModifiers = 
	| ClassModifier of string
	| ClassModifiers of string * classModifiers  

type classBody = 
	| ClassBody of string

type javaCode = 
	| ClassDeclaration of classModifiers * string * classBody


let print_lexeme = function
	| String s    -> print_string s
	| Keyword s   -> print_string "keyword : "; print_string s
	| Id id       -> print_string "identifier : "; print_string id
	| Delimiter d -> print_string "delimiter : "; print_string d
	| Int i       -> print_string "int : "; print_int i
	| Float x     -> print_string "float : "; print_float x
	| Bool true   -> print_string "true"
	| Bool false  -> print_string "false"
	| Null        -> print_string "null"

let print_class_body = function
	| ClassBody body -> print_string (" {\n"^body^"\n};")

let rec print_modifiers modifier = 
	match modifier with
	| ClassModifier kw -> print_string kw
	| ClassModifiers(kw, modifiers) -> print_string kw; print_modifiers modifiers

let rec print_javaCode jc = 
	match jc with 
		| ClassDeclaration(modifiers, name, body) -> print_modifiers modifiers;
							print_string ( " class " ^ name );
							print_newline ();
							print_class_body body

(* errors handling *)

open Lexing

exception Eof

type error =
	| Illegal_character of char
	| Illegal_float of string

exception Errord of (error * position * position)

let raise_error err lexbuf =
		raise ( Errord(err, lexeme_start_p lexbuf, lexeme_end_p lexbuf) )

(* Les erreurs. *)
let report_error = function
	| Illegal_character c ->
		print_string "Illegal character ’";
		print_char c;
		print_string "’ "
	| Illegal_float nb ->
		print_string "The float ";
		print_string nb;
		print_string " is illegal "

let print_position debut fin =
	if (debut.pos_lnum = fin.pos_lnum) then
		begin
			print_string "line ";
			print_int debut.pos_lnum;
			print_string " characters ";
			print_int (debut.pos_cnum - debut.pos_bol);
			print_string "-";
			print_int (fin.pos_cnum - fin.pos_bol)
		end
	else
		begin
			print_string "from line ";
			print_int debut.pos_lnum;
			print_string " character ";
			print_int (debut.pos_cnum - debut.pos_bol);
			print_string " to line ";
			print_int fin.pos_lnum;
			print_string " character ";
			print_int (fin.pos_cnum - fin.pos_bol)
		end
