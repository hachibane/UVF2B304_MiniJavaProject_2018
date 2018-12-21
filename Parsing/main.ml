open Java
open Lexer
open Parser


(*
let rec examine_all lexbuf =
let res = Parser.prog Lexer.read lexbuf in
	
match  res with
  | Some value -> Java.print_lexeme value; print_string " "; examine_all lexbuf 
  | None -> ()
*)

let compile file =
		print_string ("File "^file^" is being treated!\n");
		try
				let input_file = open_in file in
				let lexbuf = Lexing.from_channel input_file in
						try
								prog read lexbuf; 
						with
								| Error (kind, debut, fin) -> 
										close_in (input_file);
										report_error kind; 
										print_position debut fin;                                                                                                                 
					print_newline ();
					close_in (input_file);
					exit 0
		with Sys_error s ->
			print_endline ("Can’t find file ’" ^ file ^ "’")
let _ = Arg.parse [] compile ""

