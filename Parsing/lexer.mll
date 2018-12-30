(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

{
open Lexing
open Parser
open ErrorHandler

let keyword_table = Hashtbl.create 52
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
	"goto",			GOTO;
	"switch",		SWITCH;
	"case",			CASE;
	"if",			IF;
	"else ",		ELSE;
	"super",		SUPER;
	"new",			NEW;
	(* eval *)
	"instanceof",		INSTANCEOF;
	(* special values *)
	"null",			NULL;
	"true",			TRUE;
	"false",		FALSE;
	"this",			THIS;
	(* other names *)
	"package",		PACKAGE;
	"enum",			ENUM;
	"class",		CLASS;
	"struct",		STRUCT;
	"interface",		INTERFACE;
	(* Modifiers *)
	"default",		DEFAULT;
	"const",		CONST;
	"public",		PUBLIC;
	"abstract",		ABSTRACT;
	"static",		STATIC;
	"protected",		PROTECTED;
	"private",		PRIVATE;
	"volatile",		VOLATILE;
	"strictfp",		STRICTFP;
	"transient",		TRANSIENT;
	"final",		FINAL;
	"synchronized",		SYNCHRONIZED;
	(* types *)
	"byte",			BYTE;
	"void",			VOID;
	"long",			LONG;
	"float",		FLOAT;
	"int",			INT;
	"boolean",		BOOLEAN;
	"short",		SHORT;
	"char",			CHAR;
	"double",		DOUBLE;
]

}

(* series of let declarations which precede the rules definition to define some
	 regular expressions. They will be used during the rules definition *)

(* General regular expressions *)

let letter    = ['a'-'z' 'A'-'Z']
let lowercase = ['a'-'z']
let uppercase = ['A'-'Z']
let digit     = ['0'-'9']
let nzdigit   = ['1'-'9']
let decimal   = '.' digit*
let real      = digit * (decimal)?

(* 3.4 Line Terminators *)

let line_feed       = '\010'
let carriage_return = '\013'
let line_terminator = (line_feed | carriage_return | carriage_return line_feed)

(* 3.5 Input and Tokens *)

let sub_character = '\026' 

(* 3.6 White Space *)

let horizontal_tab = '\009'
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
(* principally completed using keywords page 21, operations page 36
   and pages 586 and 587 *)

rule nexttoken = parse
	| line_terminator    { Lexing.new_line lexbuf; nexttoken lexbuf }
	| comment            { Lexing.new_line lexbuf; nexttoken lexbuf }
	| white_space+       { nexttoken lexbuf }
	| eof                { EOF }
	| ident as id        { try Hashtbl.find keyword_table id with Not_found -> IDENT id }
	| real   	     { REAL (float_of_string (Lexing.lexeme lexbuf)) }
	| nzdigit as nz      { NZDIGIT(nz) }
	| "0"                { ZERO }
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
	| "@"                { ANNOT }
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
	| "<="               { INFOREQUAL }
	| ">="               { SUPOREQUAL }
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



{

let print_token = function 
	| EOF                -> print_string "eof"
	| IDENT i            -> print_string "ident ("; print_string i; print_string ")"
	| REAL i              -> print_string "real"
	| NZDIGIT n          -> print_string (String.make 1 n)
	| ZERO               -> print_string "zero"
	| NULL               -> print_string "null"
	| TRUE               -> print_string "true"
	| FALSE              -> print_string "false"
	| ABSTRACT           -> print_string "abstract"
	| ASSERT             -> print_string "assert"
	| BOOLEAN            -> print_string "boolean"
	| BREAK              -> print_string "break"
	| BYTE               -> print_string "byte"
	| CASE               -> print_string "case"
	| CATCH              -> print_string "catch"
	| CHAR               -> print_string "char"
	| CLASS              -> print_string "class"
	| CONST              -> print_string "const"
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
	| GOTO               -> print_string "goto"
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
	| ANNOT              -> print_string "annot"
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
	| INFOREQUAL         -> print_string "inforequal"
	| SUPOREQUAL         -> print_string "suporequal"
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
 

(* Function which read a buffer and print the recognized token *)

let rec read buffer = 
  let token = nexttoken buffer in
  print_string "Read line ";
  print_int buffer.lex_curr_p.pos_lnum;
  print_string " : ";
  print_token token;
  print_string "\n";
  token

let rec examine_all lexbuf =
	let res = nexttoken lexbuf in
	print_token res;
	print_string " ";
	match res with
	| EOF -> ()
	| _  -> examine_all lexbuf

}
