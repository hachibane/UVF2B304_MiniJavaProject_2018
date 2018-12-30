open Lexer
open Parser
open ErrorHandler


let rec lexAllBuf lexbuf = 
let tok = Lexer.read lexbuf in 
match tok with 
| EOF -> ()
| _ -> print_token tok; print_string " "; lexAllBuf lexbuf


let compile file =
print_string ("File "^file^" is being treated!\n");
try
	let input_file = open_in file in
	let lexbuf = Lexing.from_channel input_file in
	try
		lexAllBuf lexbuf;
		print_newline ();
		close_in (input_file);
	with
	| Errord (kind, debut, fin) -> 
		close_in (input_file);
		report_error kind; 
		print_position debut fin;                                                                                            
		print_newline ();
		close_in (input_file);

with Sys_error s -> print_endline ("Can’t find file ’" ^ file ^ "’")
let _ = Arg.parse [] compile ""

