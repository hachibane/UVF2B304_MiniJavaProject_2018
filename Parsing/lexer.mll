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
let decimal   = '.' digit*
let real      = digit * (decimal)?

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
(* principally completed using keywords page 21, operations page 36
   and pages 586 and 587 *)

rule nexttoken = parse
	| line_terminator    { Lexing.new_line lexbuf; nexttoken lexbuf }
	| comment            { Lexing.new_line lexbuf; nexttoken lexbuf }
	| white_space+       { nexttoken lexbuf }
	| eof                { EOF }
	| ident as str       { IDENT str }
	| real as nb         { FLOAT(float_of_string nb) }
	| nzdigit as nz      { NZDIGIT(nz) }
	| "0"                { ZERO }
	| "null"             { NULL }
	| "true"             { TRUE }
	| "false"            { FALSE }
	| "abstract"         { ABSTRACT }   
	| "assert"           { ASSERT }
	| "boolean"          { BOOLEAN }
	| "break"            { BREAK }
	| "byte"             { BYTE }
	| "case"             { CASE }
	| "catch"            { CATCH }
	| "char"             { CHAR }
	| "class"            { CLASS }
	| "const"            { CONST }
	| "continue"         { CONTINUE }
	| "default"          { DEFAULT }
	| "do"               { DO }
	| "double"           { DOUBLE }
	| "else"             { ELSE }
	| "enum"             { ENUM }
	| "extends"          { EXTENDS }
	| "final"            { FINAL }
	| "finally"          { FINALLY }
	| "float"            { FLOAT }
	| "for"              { FOR }
	| "if"               { IF }
	| "goto"             { GOTO }
	| "implements"       { IMPLEMENTS }
	| "import"           { IMPORT }
	| "instanceof"       { INSTANCEOF }
	| "int"              { INT }
	| "interface"        { INTERFACE }
	| "long"             { LONG }
	| "native"           { NATIVE }
	| "new"              { NEW }
	| "package"          { PACKAGE }
	| "private"          { PRIVATE }
	| "protected"        { PROTECTED }
	| "public"           { PUBLIC }
	| "return"           { RETURN }
	| "short"            { SHORT }
	| "static"           { STATIC }
	| "strictfp"         { STRICTFP }
	| "super"            { SUPER }
	| "switch"           { SWITCH }
	| "synchronized"     { SYNCHRONIZED }
	| "this"             { THIS }
	| "throw"            { THROW }
	| "throws"           { THROWS }
	| "transient"        { TRANSIENT }
	| "try"              { TRY }
	| "void"             { VOID }
	| "volatile"         { VOLATILE }
	| "while"            { WHILE }
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
	| "&&"               { CONDAND}
	| "++"               { INCR }
	| "--"               { DECR }
	| "?"                { COND }
	| "!"                { EXCL }
	| "~"                { TILDE }
	| "@"                { ANNOT }
	| "=="               { ISEQUAL}
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
  | _                  { raise_error LexingError lexbuf }