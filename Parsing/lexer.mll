(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

{
	open Lexing
	open Error
}

(* series of let declarations which precede the rules definition to define some
	 regular expressions. They will be used during the rules definition *)

(* General regular expressions *)

let letter    = ['a'-'z' 'A'-'Z']
let lowercase = ['a'-'z']
let uppercase = ['A'-'Z']
let digit     = ['0'-'9']
let nzdigit   = ['1'-'9']
let real      = digit * ('.' digit*)?

(* 3.4 Line Terminators *)

let line_feed       = '\010'
let carriage_return = '\013'
let line_terminator = (line_feed | carriage_return | carriage_return line_feed)

(* 3.5 Input and Tokens *)

let sub_character = '\026' 

(* 3.6 White Space *)

let horizontal_tab = '\010'
let space          = ' '
let white_space    = (space | horizontal_tab)

(* 3.7 Comments *)

let traditional_comment = "/*" (_)* "*/" line_terminator
let end_of_line_comment = "//" ([^'\010' '\013'])* line_terminator
let comment             = (traditional_comment | end_of_line_comment)

(* 3.8 Identifiers *)  

let ident = letter ( letter | digit | '_')*

(* Rules Definitions *)

(* TO COMPLETE *) 
rule nexttoken = parse
	| line_terminator    { Lexing.new_line lexbuf; nexttoken lexbuf }
	| comment            { Lexing.new_line lexbuf; nexttoken lexbuf }
	| white_space+       { nexttoken lexbuf }
	| eof                { EOF }
	| ident as str       { IDENT str }
	| real as nb         { FLOAT(float_of_string nb) }
	| "null"             { NULL }
	| "true"             { TRUE }
	| "false"            { FALSE }