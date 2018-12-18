%{
    (* OCaml code *)
%}

 /*Symbols declaration */
 %%
 /* Rules */
 %%
 (* OCaml code *)
(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

%{
    (* code ocaml *)
  
%}

(* boolean*)
%token TRUE
%token FALSE

(* Infix Operators*)
%token PLUS MINUS TIMES DIV AND OR XOR MOD INF SUP ISEQUAL ISNOTEQUAL INFOREQUAL SUPOREQUAL CONDOR CONDAND COND ANNOT LSHIFT RSHIFT USHIFT INFEQUAL SUPEQUAL 

(* Prefix Operators*) 
%token INCR DECR EXCL TILDE

(* Assignment Operators*)
%token EQUAL PLUSEQUAL MINUSEQUAL TIMESEQUAL DIVEQUAL ANDEQUAL OREEQUAL XOREQUAL MODEQUAL LSHIFTEQUAL RSHIFTEQUAL USHIFTEQUAL 

(* Delimitors*)
%token POINT SEMICOLON COMMA COLON LBRACE RBRACE LPAREN RPAREN LBRACK RBRACK

(* Modifiers*)
%token ABSTRACT PRIVATE PROTECTED PUBLIC STATIC STRICTFP SYNCHRONIZED VOLATILE TRANSIENT NATIVE FINAL

(* Basic Types*)
%token BYTE SHORT CHAR INT LONG FLOAT DOUBLE BOOLEAN

(* Other Keywords*) 
%token ASSERT BREAK CASE CATCH CLASS CONST CONTINUE DEFAULT DO DEFAULT ELSE ENUM EXTENDS FINALLY FOR IF GOTO IMPLEMENTS IMPORT INSTANCEOF INTERFACE NEW PACKAGE RETURN SUPER SWITCH THIS THROW THROWS TRY VOID WHILE

(* Special Tokens *)
%token EOF
%token <string> IDENT
%token ZERO 
%token NULL
%token NZDIGIT
%token <string> COMMENT

(* rules not done yet *)
%token NOTDONE

(* %start compilationUnit*)
%start <string> compilationUnit

%%
(* 3.8 identifiers*)
identifier:
	| id=IDENT { id }   

(* 3.9 Literals*)
literal: 
	| il=integerLiteral { il }
	| fpl=floatingPointLiteral { fpl }
	| bl=booleanLiteral { bl }
	| cl=characterLiteral { cl }
	| sl=stringLiteral { sl }
	| nl=nullLiteral { nl }

integerLIteral: 
	| dil=decimalIntegerLiteral { dil }
	(*| hil=hexIntegerLiteral { hil }
	| oil=octalIntegerLiteral { oil }*)

decimalIntegerLiteral:
	 decn=decimalNumeral { decn }

(*hexIntegerLiteral:
	 hexn=hexNumeral { hexn }

octalIntegerLiteral:
	 octn=octalNumeral { octn }*)
	
decimalNumeral:
	| ZERO { "0" }
	| NZDIGIT dgs=digits? { " nzdigit "^dgs }

digits:
	| dg=digit { dg }
	| dgs=digits dg=digit { dgs^" "^dg }

digit: 
	| ZERO { "0" }
	| NZDIGIT { " nzdigit " }
(*
hexNumeral:
	| ZERO smallx hexs=hexDigits { "0"^" x "^hexs }
	| ZERO capitalx hexs=hexDigits { "0"^" X "^hexs }

hexDigits:
	| hex=hexDigit { hex }
	| hex=hexDigit hexs=hexDigits { hex^" "^hexs }

hexdigit:
	| HEXDIGIT { "hexdigit" } *)

(*
octalNumeral: 
	| ZERO octs=octalDigits { octs }

octalDigits:
	| ...*)

floatingPointLiteral:
	 dfpl=decimalFloatingPointLiteral { dfpl }

(* to complete with Exponent part e E*)
decimalFloatingPointLiteral:
	| dgs0=digits POINT dgs1=digits? { dgs0^"."^dgs1 }
	| POINT dgs=digits { "."^dgs }

booleanLiteral:
	| TRUE { " true " }
	| FALSE { "false " }

characterLiteral:
	| NOTDONE { "" }

stringLiteral:
	| id = IDENT { id }

nullLiteral:
	NULL { "null" }

