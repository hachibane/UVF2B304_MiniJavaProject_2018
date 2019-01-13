(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

{
open Lexing
open ErrorHandler
open Parser


let keyword_table = Hashtbl.create 15
let _ = List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
[
	(* macro *)
	"import",		IMPORT;
	"throw",		THROW;
	"throws",		THROWS;
	"extends",		EXTENDS;
	"implements",		IMPLEMENTS;
	"break",		BREAK;
	"catch",		CATCH;
	"continue",		CONTINUE;
	"return",		RETURN;
	"for",			FOR;
	"while",		WHILE;
	"assert",		ASSERT;
	"do",			DO;
	"switch",		SWITCH;
	"case",			CASE;
	"if",			IF;
	"else ",		ELSE;
	"super",		SUPER;
	"new",			NEW;
	(*  *)
	"instanceof",		INSTANCEOF;
	"null",			NULL;
	"true",			BOOLEANLIT true;
	"false",		BOOLEANLIT false;
	"this",			THIS;
	(* other names *)
	"package",		PACKAGE;
	"enum",			ENUM;
	"class",		CLASS;
	"interface",		INTERFACE;
	(* Modifiers *)
	"default",		DEFAULT;
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
	"void",			VOID;
	"long",			LONG;
	"float",		FLOAT;
	"int",			INT;
	"boolean",		BOOLEAN;
	"short",		SHORT;
	"char",			CHAR;
	"double",		DOUBLE
]

}
(* series of let declarations which precede the rules definition to define some
	 regular expressions. They will be used during the rules definition *)

(* General regular expressions *)
let lowercase							= ['a'-'z']
let uppercase							= ['A'-'Z']
let letter						    = (lowercase | uppercase)
let stringLiteral					= '"' [^'"']* '"'
let characterLiteral			= [^''']
let digit									= ['0'-'9']
let exp										= ['e' 'E'] ['+' '-']? digit+
let integerLiteral				= '-'? digit+
let floatingPointLiteral	= ( digit* '.' digit+ exp? | exp )
let ident     						= (letter | '_') ( letter | digit | '_')*
let white     						= [' ' '\t']+
let newline   						= '\r' | '\n' | "\r\n"
let onelinecomment = "//" ([^'\010' '\013'])* newline

(* Rules Definitions *)

(* TO COMPLETE *)
(* principally completed using keywords page 21, operations page 36
   and pages 586 and 587 *)
rule read = parse
| white											{ read lexbuf }
| newline										{ Lexing.new_line lexbuf; read lexbuf }
| integerLiteral as i				{ INTEGERLIT (int_of_string i) }
| floatingPointLiteral as f	{ FLOATLIT (float_of_string f) }
| stringLiteral as s				{ STRINGLIT s}
| ident as id								{  try Hashtbl.find keyword_table id with Not_found -> IDENT id }
| onelinecomment { Lexing.new_line lexbuf; read lexbuf }
| "+"                { PLUS }
| "-"                { MINUS }
| "*"                { TIMES }
| "/"                { DIV }
| "&"                { AND }
| "|"                { OR }
| "^"                { XOR }
| "%"                { MOD }
| "="                { EQUAL }
| "<"                { INF }
| ">"                { SUP }
| "||"               { CONDOR }
| "&&"               { CONDAND }
| "++"               { INCR }
| "--"               { DECR }
| "?"                { COND }
| "!"                { EXCL }
| "~"                { TILDE }
| "@"                { AROBAS }
| "=="               { ISEQUAL }
| "!="               { ISNOTEQUAL }
| "+="               { PLUSEQUAL }
| "-="               { MINUSEQUAL }
| "*="               { TIMESEQUAL }
| "/="               { DIVEQUAL }
| "&="               { ANDEQUAL }
| "|="               { OREQUAL }
| "^="               { XOREQUAL }
| "%="               { MODEQUAL }
| "<="               { INFEQUAL }
| ">="               { SUPEQUAL }
| "<<"               { LSHIFT }
| ">>"               { RSHIFT }
| "<<="              { LSHIFTEQUAL }
| ">>="              { RSHIFTEQUAL }
| ">>>"              { USHIFT }
| ">>>="             { USHIFTEQUAL }
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

{
let print_token = function
| EOF                -> print_string "eof"
| IDENT id           -> print_string "(ident : "; print_string id; print_string ")"
| FLOATLIT f         -> print_string "(float : "; print_float f; print_string ")"
| INTEGERLIT i			 -> print_string "(integer :"; print_int i; print_string ")"
| BOOLEANLIT b       -> ( match b with
| true							 -> print_string "(boolean : true)"
| false							 -> print_string "(boolean : false)")
| STRINGLIT s				 -> print_string("(string : "^s^")")
| COMMENT c					 -> ()
| NULL               -> print_string "null"
| ABSTRACT           -> print_string "abstract"
| ASSERT             -> print_string "assert"
| BOOLEAN            -> print_string "boolean"
| BREAK              -> print_string "break"
| BYTE               -> print_string "byte"
| CASE               -> print_string "case"
| CATCH              -> print_string "catch"
| CHAR               -> print_string "char"
| CLASS              -> print_string "class"
| CONTINUE           -> print_string "continue"
| DEFAULT            -> print_string "default"
| DO                 -> print_string "do"
| DOUBLE             -> print_string "double"
| ELSE               -> print_string "else"
| ENUM               -> print_string "enum"
| EXTENDS            -> print_string "extends"
| FINAL              -> print_string "final"
| FINALLY            -> print_string "finally"
| FLOAT              -> print_string "float"
| FOR                -> print_string "for"
| IF                 -> print_string "if"
| IMPLEMENTS         -> print_string "implements"
| IMPORT             -> print_string "import"
| INSTANCEOF         -> print_string "instanceof"
| INT                -> print_string "int"
| INTERFACE          -> print_string "interface"
| LONG               -> print_string "long"
| NATIVE             -> print_string "native"
| NEW                -> print_string "new"
| PACKAGE            -> print_string "package"
| PRIVATE            -> print_string "private"
| PROTECTED          -> print_string "protected"
| PUBLIC             -> print_string "public"
| RETURN             -> print_string "return"
| SHORT              -> print_string "short"
| STATIC             -> print_string "static"
| STRICTFP           -> print_string "strictfp"
| SUPER              -> print_string "super"
| SWITCH             -> print_string "switch"
| SYNCHRONIZED       -> print_string "synchronized"
| THIS               -> print_string "this"
| THROW              -> print_string "throw"
| THROWS             -> print_string "throws"
| TRANSIENT          -> print_string "transient"
| TRY                -> print_string "try"
| VOID               -> print_string "void"
| VOLATILE           -> print_string "volatile"
| WHILE              -> print_string "while"
| PLUS               -> print_string "plus"
| MINUS              -> print_string "minus"
| TIMES              -> print_string "times"
| DIV                -> print_string "div"
| AND                -> print_string "and"
| OR                 -> print_string "or"
| XOR                -> print_string "xor"
| MOD                -> print_string "mod"
| EQUAL              -> print_string "equal"
| INF                -> print_string "inf"
| SUP                -> print_string "sup"
| CONDOR             -> print_string "condor"
| CONDAND            -> print_string "condand"
| INCR               -> print_string "incr"
| DECR               -> print_string "decr"
| COND               -> print_string "cond"
| EXCL               -> print_string "excl"
| TILDE              -> print_string "tilde"
| AROBAS              -> print_string "arobas"
| ISEQUAL            -> print_string "isequal"
| ISNOTEQUAL         -> print_string "isnotequal"
| PLUSEQUAL          -> print_string "plusequal"
| MINUSEQUAL         -> print_string "minusequal"
| TIMESEQUAL         -> print_string "timesequal"
| DIVEQUAL           -> print_string "divequal"
| ANDEQUAL           -> print_string "andequal"
| OREQUAL            -> print_string "orequal"
| XOREQUAL           -> print_string "xorequal"
| MODEQUAL           -> print_string "modequal"
| INFEQUAL           -> print_string "infequal"
| SUPEQUAL           -> print_string "supequal"
| LSHIFT             -> print_string "lshift"
| RSHIFT             -> print_string "rshift"
| LSHIFTEQUAL        -> print_string "lshiftequal"
| RSHIFTEQUAL        -> print_string "rshiftequal"
| USHIFT             -> print_string "ushift"
| USHIFTEQUAL        -> print_string "ushiftequal"
| POINT              -> print_string "point"
| SEMICOLON          -> print_string "semicolon"
| COMMA              -> print_string "comma"
| COLON              -> print_string "colon"
| LBRACE             -> print_string "lbrace"
| RBRACE             -> print_string "rbrace"
| LPAREN             -> print_string "lparen"
| RPAREN             -> print_string "rparen"
| LBRACK             -> print_string "lbrack"
| RBRACK             -> print_string "rbrack"
}
