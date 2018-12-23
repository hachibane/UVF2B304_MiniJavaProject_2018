(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

{
open Lexing
open Parser
open Java


let keyword_table = Hashtbl.create 9
let _ =
List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
[ 
("null",	  NULL);
("true", 	  TRUE);
("false", 	  FALSE);
("public",    CLASS_MODIFIER "public");
("abstract",  CLASS_MODIFIER "abstract");
("static",    CLASS_MODIFIER "static");
("protected", CLASS_MODIFIER "protected" );
("private",   CLASS_MODIFIER "private");
("class",     CLASS);
]

}

(* series of let declarations which precede the rules definition to define some
	 regular expressions. They will be used during the rules definition *)

(* General regular expressions *)


let lowercase = ['a'-'z']
let uppercase = ['A'-'Z']
let letter    = (lowercase | uppercase)
let nzdigit   = ['1'-'9']
let digit     = ( '0' | nzdigit)
let exp       = ['e' 'E'] ['-' '+']? digit+
let frac      = '.' digit*
let int       = '-'? digit+
let float     = digit* frac? exp?
let ident     = (letter | '_') ( letter | digit | '_')*
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"


(* Rules Definitions *)

(* TO COMPLETE *) 
(* principally completed using keywords page 21, operations page 36
   and pages 586 and 587 *)



rule read = parse
| white              { read lexbuf }
| newline            { Lexing.new_line lexbuf; read lexbuf }
| int     	     { INT (int_of_string (Lexing.lexeme lexbuf)) }
| float   	     { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
| ident as id        { try Hashtbl.find keyword_table id with Not_found -> IDENT id }
| "."                { POINT }
| ";"                { SEMICOLON }
| ","                { COMMA }
| ":"                { COLON }
| "{"                { LBRACE }
| "}"                { RBRACE }
| "("                { LPAREN }
| ")"                { RPAREN }
| "["                { LBRACK }
| "]"                { RBRACK }
| _ as c             { raise_error (Illegal_character(c)) lexbuf }
| eof                { EOF }





