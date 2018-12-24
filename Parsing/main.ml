open Java
open Lexer
open Parser



let compile file =
print_string ("File "^file^" is being treated!\n");
try
	let input_file = open_in file in
	let lexbuf = Lexing.from_channel input_file in
	try
		let javaCode = Parser.prog Lexer.read lexbuf in print_javaCode javaCode;
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
