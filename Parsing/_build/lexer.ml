# 3 "lexer.mll"
 
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
	"implements",	IMPLEMENTS;
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
	"instanceof",	INSTANCEOF;
	"null",			NULL;
	"true",			BOOLEANLIT true;
	"false",		BOOLEANLIT false;
	"this",			THIS;
	(* other names *)
	"package",		PACKAGE;
	"enum",			ENUM;
	"class",		CLASS;
	"interface",	INTERFACE;
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


# 68 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\223\255\224\255\251\255\002\000\003\000\030\000\031\000\
    \032\000\035\000\085\000\064\000\083\000\066\000\069\000\124\000\
    \001\000\210\000\083\000\114\000\032\001\254\255\001\000\008\000\
    \234\255\245\255\046\001\061\001\071\001\081\001\091\001\166\001\
    \250\255\107\000\240\255\081\000\227\255\239\255\086\000\226\255\
    \082\000\225\255\235\255\246\255\230\255\244\255\231\255\243\255\
    \242\255\241\255\233\255\232\255\229\255\228\255";
  Lexing.lex_backtrk =
   "\003\000\255\255\255\255\255\255\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\003\000\002\000\004\000\255\255\001\000\000\000\
    \255\255\255\255\002\000\255\255\003\000\255\255\006\000\003\000\
    \255\255\255\255\255\255\007\000\255\255\255\255\008\000\255\255\
    \019\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\003\000\000\000\000\000\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \033\000\255\255\255\255\255\255\255\255\000\000\255\255\255\255\
    \000\000\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\033\000\000\000\255\255\000\000\000\000\255\255\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\023\000\021\000\021\000\000\000\022\000\000\000\000\000\
    \000\000\023\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \023\000\008\000\016\000\032\000\000\000\004\000\010\000\002\000\
    \023\000\000\000\007\000\012\000\000\000\020\000\018\000\006\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\000\000\000\000\014\000\009\000\013\000\053\000\
    \052\000\015\000\015\000\015\000\015\000\017\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\051\000\050\000\049\000\005\000\015\000\
    \048\000\015\000\015\000\015\000\015\000\017\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\047\000\011\000\044\000\043\000\037\000\
    \038\000\035\000\034\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\032\000\036\000\041\000\
    \042\000\000\000\046\000\039\000\040\000\000\000\000\000\000\000\
    \027\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \018\000\000\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\000\000\027\000\
    \027\000\000\000\000\000\000\000\045\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\027\000\
    \000\000\000\000\000\000\030\000\000\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\029\000\000\000\029\000\
    \001\000\255\255\031\000\031\000\031\000\031\000\031\000\031\000\
    \031\000\031\000\031\000\031\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\000\000\000\000\000\000\
    \000\000\030\000\000\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\025\000\000\000\000\000\
    \026\000\026\000\026\000\026\000\026\000\026\000\026\000\026\000\
    \026\000\026\000\000\000\000\000\000\000\024\000\026\000\026\000\
    \026\000\026\000\026\000\026\000\026\000\026\000\026\000\026\000\
    \029\000\000\000\029\000\255\255\000\000\028\000\028\000\028\000\
    \028\000\028\000\028\000\028\000\028\000\028\000\028\000\028\000\
    \028\000\028\000\028\000\028\000\028\000\028\000\028\000\028\000\
    \028\000\028\000\028\000\028\000\028\000\028\000\028\000\028\000\
    \028\000\028\000\028\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\000\000\000\000\
    \000\000\000\000\030\000\000\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\031\000\031\000\
    \031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\000\000\000\000\000\000\000\000\030\000\000\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\022\000\255\255\000\000\255\255\255\255\
    \255\255\023\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\016\000\255\255\000\000\000\000\000\000\
    \023\000\255\255\000\000\000\000\255\255\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\255\255\000\000\000\000\000\000\004\000\
    \005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\006\000\007\000\008\000\000\000\000\000\
    \009\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\010\000\000\000\011\000\012\000\013\000\
    \013\000\014\000\014\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\033\000\035\000\040\000\
    \012\000\255\255\010\000\038\000\038\000\255\255\255\255\255\255\
    \018\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \019\000\255\255\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\255\255\019\000\
    \018\000\255\255\255\255\255\255\011\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\019\000\
    \255\255\255\255\255\255\015\000\255\255\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\017\000\255\255\017\000\
    \000\000\016\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\255\255\255\255\255\255\
    \255\255\017\000\255\255\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\020\000\255\255\255\255\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\255\255\255\255\255\255\020\000\026\000\026\000\
    \026\000\026\000\026\000\026\000\026\000\026\000\026\000\026\000\
    \027\000\255\255\027\000\033\000\255\255\027\000\027\000\027\000\
    \027\000\027\000\027\000\027\000\027\000\027\000\027\000\028\000\
    \028\000\028\000\028\000\028\000\028\000\028\000\028\000\028\000\
    \028\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\
    \029\000\029\000\029\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\255\255\255\255\
    \255\255\255\255\030\000\255\255\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
    \030\000\030\000\030\000\030\000\030\000\030\000\031\000\031\000\
    \031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\031\000\
    \031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
    \031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
    \031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
    \031\000\255\255\255\255\255\255\255\255\031\000\255\255\031\000\
    \031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
    \031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
    \031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
    \031\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec read lexbuf =
   __ocaml_lex_read_rec lexbuf 0
and __ocaml_lex_read_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 91 "lexer.mll"
                  ( read lexbuf )
# 287 "lexer.ml"

  | 1 ->
# 92 "lexer.mll"
                   ( Lexing.new_line lexbuf; read lexbuf )
# 292 "lexer.ml"

  | 2 ->
let
# 93 "lexer.mll"
                    i
# 298 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 93 "lexer.mll"
                         ( INTEGERLIT (int_of_string i) )
# 302 "lexer.ml"

  | 3 ->
let
# 94 "lexer.mll"
                          f
# 308 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 94 "lexer.mll"
                            ( FLOATLIT (float_of_string f) )
# 312 "lexer.ml"

  | 4 ->
let
# 95 "lexer.mll"
                      c
# 318 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 95 "lexer.mll"
                        (
	match c with
	| '.'			->			POINT
	| ';'			->			SEMICOLON
	| ','			->			COMMA
	| ':'			->			COLON
	| '{'			->			LBRACE
	| '}' 		->			RBRACE
	| '('			->			LPAREN
	| ')'			->			RPAREN
	| '['			->			LBRACK
	| ']'			->			RBRACK
	| '='			->			EQUAL
	| '?'			->			COND
	| '!'			->			EXCL
	| '~'			->			TILDE
	| '|'			->			OR
	| '^'			->			XOR
	| '&'			->			AND
	| '@'			->			AROBAS
	| '<'			->			INF
	| '>'			->			SUP
	| '+'			->			PLUS
	| '-'			->			MINUS
	| '*'			->			TIMES
	| '/'			->			DIV
	| '%'			->			MOD
	| _				->			CHARLIT c )
# 349 "lexer.ml"

  | 5 ->
let
# 123 "lexer.mll"
                   s
# 355 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 123 "lexer.mll"
                        ( STRINGLIT s)
# 359 "lexer.ml"

  | 6 ->
let
# 124 "lexer.mll"
           id
# 365 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 124 "lexer.mll"
                     ( try Hashtbl.find keyword_table id with Not_found -> IDENT id )
# 369 "lexer.ml"

  | 7 ->
# 125 "lexer.mll"
                     ( LSHIFT )
# 374 "lexer.ml"

  | 8 ->
# 126 "lexer.mll"
                     ( RSHIFT )
# 379 "lexer.ml"

  | 9 ->
# 127 "lexer.mll"
                     ( INCR )
# 384 "lexer.ml"

  | 10 ->
# 128 "lexer.mll"
                     ( DECR )
# 389 "lexer.ml"

  | 11 ->
# 130 "lexer.mll"
                     ( CONDOR )
# 394 "lexer.ml"

  | 12 ->
# 131 "lexer.mll"
                     ( CONDAND )
# 399 "lexer.ml"

  | 13 ->
# 132 "lexer.mll"
                     ( ISEQUAL )
# 404 "lexer.ml"

  | 14 ->
# 133 "lexer.mll"
                     ( ISNOTEQUAL )
# 409 "lexer.ml"

  | 15 ->
# 134 "lexer.mll"
                     ( INFEQUAL )
# 414 "lexer.ml"

  | 16 ->
# 135 "lexer.mll"
                     ( SUPEQUAL )
# 419 "lexer.ml"

  | 17 ->
# 136 "lexer.mll"
                     ( LSHIFT )
# 424 "lexer.ml"

  | 18 ->
# 137 "lexer.mll"
                     ( RSHIFT )
# 429 "lexer.ml"

  | 19 ->
# 138 "lexer.mll"
                     ( USHIFT )
# 434 "lexer.ml"

  | 20 ->
# 140 "lexer.mll"
                     ( PLUSEQUAL )
# 439 "lexer.ml"

  | 21 ->
# 141 "lexer.mll"
                     ( MINUSEQUAL )
# 444 "lexer.ml"

  | 22 ->
# 142 "lexer.mll"
                     ( TIMESEQUAL )
# 449 "lexer.ml"

  | 23 ->
# 143 "lexer.mll"
                     ( DIVEQUAL )
# 454 "lexer.ml"

  | 24 ->
# 144 "lexer.mll"
                     ( ANDEQUAL )
# 459 "lexer.ml"

  | 25 ->
# 145 "lexer.mll"
                     ( OREQUAL )
# 464 "lexer.ml"

  | 26 ->
# 146 "lexer.mll"
                     ( XOREQUAL )
# 469 "lexer.ml"

  | 27 ->
# 147 "lexer.mll"
                     ( MODEQUAL )
# 474 "lexer.ml"

  | 28 ->
# 148 "lexer.mll"
                     ( LSHIFTEQUAL )
# 479 "lexer.ml"

  | 29 ->
# 149 "lexer.mll"
                     ( RSHIFTEQUAL )
# 484 "lexer.ml"

  | 30 ->
# 150 "lexer.mll"
                     ( USHIFTEQUAL )
# 489 "lexer.ml"

  | 31 ->
let
# 151 "lexer.mll"
       c
# 495 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 151 "lexer.mll"
                     ( raise_error (Illegal_character(c)) lexbuf )
# 499 "lexer.ml"

  | 32 ->
# 152 "lexer.mll"
                     ( EOF )
# 504 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_read_rec lexbuf __ocaml_lex_state

;;

# 154 "lexer.mll"
 
let print_token = function
| EOF                -> print_string "eof"
| IDENT id           -> print_string "(ident : "; print_string id; print_string ")"
| FLOATLIT f         -> print_string "real ("; print_float f; print_string ")"
| INTEGERLIT i			 -> print_string "integer ("; print_int i; print_string ")"
| BOOLEANLIT b       -> ( match b with
											| true  -> print_string "boolean ( true  )"
											| false -> print_string "boolean ( false )")
| STRINGLIT s -> print_string("string ("^s^")")
| COMMENT c -> ()
| CHARLIT c -> print_string "char ("; print_char c; print_string ")"
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

# 621 "lexer.ml"
