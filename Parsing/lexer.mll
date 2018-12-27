(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

{
open Lexing
open Parser
open Java
open ErrorHandler

let keyword_table = Hashtbl.create 15
let _ = List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
[
	(* macro *)
	"import",		IMPORT;
	"throw",		THROW;
	"throws",		THROWS;
	"extends",		EXTENDS;
	"implements",	IMMPLEMENTS;
	"break",		BREAK;
	"catch",		CATCH;
	"continue",		CONTINUE;
	"return",		RETURN;
	"for",			FOR;
	"while",		WHILE;
	"assert",		ASSERT;
	"do",			DO;
	"goto",			GOTO;
	"switch",		SWITCH;
	"case",			CASE;
	"if",			IF;
	"else ",		ELSE;
	"super",		SUPER;
	"new",			NEW;
	(* eval *)
	"instanceof",	INSTANCEOF;
	(* special values *)
	"null",			NULL;
	"true",			TRUE;
	"false",		FALSE;
	"this",			THIS,
	(* other names *)
	"package",		PACKAGE;
	"enum",			ENUM;
	"class",		CLASS;
	"struct",		STRUCT;
	"interface",	INTERFACE;
	(* Modifiers *)
	"default",		DEFAULT;
	"const",		CONST;
	"public",		PUBLIC;
	"abstract",		ABSTRACT;
	"static",		STATIC;
	"protected",	PROTECTED;
	"private",		PRIVATE;
	"volatile",		VOLATILE;
	"strictfp",		STRICTFP;
	"transient",	TRANSIENT;
	"final",		FINAL;
	"synchronized",	SYNCHRONIZED;
	(* types *)
	"byte",			BYTE;
	"void",			VOID
	"long",			LONG;
	"float",		FLOAT;
	"int",			INT;
	"boolean",		BOOL;
	"short",		SHORT;
	"char",			CHAR;
	"double",		DOUBLE
]

}
(* series of let declarations which precede the rules definition to define some
	 regular expressions. They will be used during the rules definition *)

(* General regular expressions *)


let lowercase = ['a'-'z']
let uppercase = ['A'-'Z']
let letter    = (lowercase | uppercase)
let nzdigit   = ['1'-'9']
let digit     = '0' | nzdigit
let exp       = ['e' 'E'] ['-' '+']? digit+
let frac      = '.' digit*
let integer   = '-'? digit+
let real      = digit* frac? exp?
let ident     = (letter | '_') ( letter | digit | '_')*
let white     = [' ' '\t']+
let newline   = '\r' | '\n' | "\r\n"

(* Rules Definitions *)

(* TO COMPLETE *)
(* principally completed using keywords page 21, operations page 36
   and pages 586 and 587 *)

rule read = parse
| white              { read lexbuf }
| newline            { Lexing.new_line lexbuf; read lexbuf }
| integer     	     { INTEGER (int_of_string (Lexing.lexeme lexbuf)) }
| real   	         { REAL (float_of_string (Lexing.lexeme lexbuf)) }
| ident as id        { try Hashtbl.find keyword_table id with Not_found -> IDENT id }
(*   separator *)
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
(* operators *)
| "="                { EQUAL }
| "++"               { INCR }
| "--"               { DECR }
| "?"                { COND }
| "!"                { EXCL }
| "~"                { TILDE }
| "@"                { ANNOT }
| "<<"               { LSHIFT }
| ">>"               { RSHIFT }
(* infix operator *)
| "||"               { CONDOR }
| "&&"               { CONDAND }
| "|"                { OR }
| "^"                { XOR }
| "&"                { AND }
| "=="               { ISEQUAL }
| "!="               { ISNOTEQUAL }
| "<"                { INF }
| ">"                { SUP }
| "<="               { INFOREQUAL }
| ">="               { SUPOREQUAL }
| "<<"               { LSHIFT }
| ">>"               { RSHIFT }
| ">>>"              { USHIFT }
| "+"                { PLUS }
| "-"                { MINUS }
| "*"                { TIMES }
| "/"                { DIV }
| "%"                { MOD }
(* assignment Operator *)
| "+="               { PLUSEQUAL }
| "-="               { MINUSEQUAL }
| "*="               { TIMESEQUAL }
| "/="               { DIVEQUAL }
| "&="               { ANDEQUAL }
| "|="               { OREQUAL }
| "^="               { XOREQUAL }
| "%="               { MODEQUAL }
| "<<="              { LSHIFTEQUAL }
| ">>="              { RSHIFTEQUAL }
| ">>>="             { USHIFTEQUAL }
| _ as c             { raise_error (Illegal_character(c)) lexbuf }
| eof                { EOF }
