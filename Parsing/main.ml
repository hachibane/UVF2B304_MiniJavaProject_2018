open Lexer
open Parser
open ErrorHandler
open Lexing

let rec lexAllBuf lexbuf =
let lex = Lexer.read lexbuf in
match lex with
| EOF -> ()
| _ -> print_token lex; print_string " "; lexAllBuf lexbuf

let compile file =
print_string ("File "^file^" is being treated!\n");
try
	let input_file = open_in file in
	let lexbuf = Lexing.from_channel input_file in
	try
		lexAllBuf lexbuf;
		print_newline ();
		let input_file = open_in file in
		let lexbuf = Lexing.from_channel input_file in
			Parser.prog Lexer.read lexbuf;
			print_newline ();
	with
	| Errord (kind, debut, fin) ->
		close_in (input_file);
		report_error kind;
		print_position debut fin;
		print_newline ();
		close_in (input_file);
	| Parser.Error ->
		print_string "parsing error :";
		print_position (lexeme_start_p lexbuf) (lexeme_end_p lexbuf)

with Sys_error s -> print_endline ("Can’t find file ’" ^ file ^ "’")
let _ = Arg.parse [] compile ""
