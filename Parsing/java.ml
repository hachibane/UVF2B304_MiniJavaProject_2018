
type lexeme = 
  | Bool of bool
  | Float of float
  | Int of int
  | Null
  | String of string
  | None


(* part 1 *)

let print_lexeme = function
		| String s   -> print_string s
		| Int i      -> print_int i
		| Float x    -> print_float x
		| Bool true  -> print_string "true"
		| Bool false -> print_string "false"
		| Null       -> print_string "null"

open Lexing

exception Eof

type error =
		| Illegal_character of char
		| Illegal_float of string

exception Error of (error * position * position)

let raise_error err lexbuf =
		raise ( Error(err, lexeme_start_p lexbuf, lexeme_end_p lexbuf) )

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

