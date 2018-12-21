(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

{
open Lexing
open Parser
open Java
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

let classModifier = "public" | "abstract" | "static" | "protected" | "private" 

(* Rules Definitions *)

(* TO COMPLETE *) 
(* principally completed using keywords page 21, operations page 36
   and pages 586 and 587 *)



rule read = parse
  | white   					 { read lexbuf }
  | newline  					 { Lexing.new_line lexbuf; read lexbuf }
  | ident              { IDENT (Lexing.lexeme lexbuf) }
  | int     					 { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | float   					 { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
	| "null"             { NULL }
	| "true"             { TRUE }
	| "false"            { FALSE }
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
  | "class"            { CLASS  }
  | classModifier      { CLASS_MODIFIER }
  | _ as c             { raise_error (Illegal_character(c)) lexbuf }
  | eof                { EOF }


