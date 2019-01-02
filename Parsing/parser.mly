(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)


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
	
(* 4. Types, Values, and Variables*)

(*4.1 The kind of  Types and Values*) 

ttype:
	| pt=primitiveType { pt }
	| rt=referenceType { rt }

(*4.2 Primitive Types and Values*)

primitiveType:
	| nt=numericType { nt } 
	| BOOLEAN { "boolean" } 

numericType:
	| it=integralType { it }
	| fpt=floatingPointType { fpt } 
	
integralType:
	| BYTE { " byte " }
	| SHORT { " short " }
	| INT { " int " }
	| LONG { " long " }
	| CHAR { " char " }

floatingPointType:
	| FLOAT { " float " }
	| DOUBLE { " double " }

(*4.3 Reference Types and Values*)

referenceType:
	| cit=classOrInterfaceType { cit } 
	| tv=typeVariable { tv } 
	| at=arrayType { at }

classOrInterfaceType:
	| ct=classType { ct }
	| it=interfaceType {it } 

classType:
	| tds=typeDeclSpecifier ta=typeArguments? { tds^" "^ta }


interfaceType:
	| tds=typeDeclSpecifier ta=typeArguments? { tds^" "^ta }

typeDeclSpecifier:
	| tn=typeName { tn }
	| cit=classOrInterfaceType POINT id=identifier { cit^" . "^id }

typeName:
	| id=identifier { id }
	| tn=typeName POINT id=identifier { tn^" . "^id }

typeVariable:
	| id=identifier { id } 

arrayType: 
	| t=ttype LBRACE RBRACE { t^" [] "}

typeArguments:
	| atal=actualTypeArgumentList { atal }

actualTypeArgumentList:
	| ata=actualTypeArgument
	| ata0=actualTypeArgument COMMA ata1=actualTypeArgument { ata0^" , "^ata1 }

actualTypeArgument:
	| rt=referenceType { rt }
	| w=wildcard { w } 

wildcard:
	wb=wildcardBounds? { wb } 

wildcardBounds:
	| EXTENDS rt=referenceType { " extends "^rt } 
	| SUPER rt=referenceType { " super "^rt } 

(* 6. Names *)
(* 6.5 Determining the Meaning of a Name *)

packageName:
	| id = IDENT { id }
	| pn=packageName POINT id=identifier { pn^" . "^id } 
	
typeName: 
	| id = IDENT { id }
	| potn=packageOrTypeName POINT id=IDENT { potn^" . "^id }
	
expressionName: 
	| id = IDENT { id }
	| an=ambiguosName POINT IDENT { an^" . "^id }
	
methodName: 
	| id = IDENT { id }
	| an=ambiguosName POINT IDENT { an^" . "^id }
	
packageOrTypeName:
	| id = IDENT { id }
	| potn=packageOrTypeName POINT id=IDENT { potn^" . "^id }
	
ambiguousName:
	| id = IDENT { id }
	| an=ambiguosName POINT IDENT { an^" . "^id }



