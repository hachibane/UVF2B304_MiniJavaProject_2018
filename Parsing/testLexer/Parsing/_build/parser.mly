
(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)


(* boolean*)
%token TRUE
%token FALSE

(* Infix Operators*)
%token PLUS MINUS TIMES
%token DIV AND OR XOR
%token MOD INF SUP
%token ISEQUAL ISNOTEQUAL INFOREQUAL SUPOREQUAL SUPEQUAL INFEQUAL
%token CONDOR CONDAND COND ANNOT
%token LSHIFT RSHIFT USHIFT

(* Prefix Operators*)
%token INCR DECR EXCL TILDE

(* Assignment Operators*)
%token EQUAL PLUSEQUAL MINUSEQUAL TIMESEQUAL DIVEQUAL ANDEQUAL OREQUAL XOREQUAL MODEQUAL LSHIFTEQUAL RSHIFTEQUAL USHIFTEQUAL

(* Delimitors*)
%token POINT SEMICOLON COMMA COLON LBRACE RBRACE LPAREN RPAREN LBRACK RBRACK

(* Modifiers*)
%token ABSTRACT PRIVATE PROTECTED PUBLIC STATIC STRICTFP SYNCHRONIZED VOLATILE TRANSIENT NATIVE FINAL IMMPLEMENTS

(* Basic Types*)
%token BYTE SHORT CHAR INT LONG FLOAT DOUBLE BOOLEAN

(* Other Keywords*)
%token ASSERT BREAK CASE CATCH CLASS CONST CONTINUE DO DEFAULT ELSE ENUM EXTENDS FINALLY FOR IF GOTO IMPLEMENTS IMPORT INSTANCEOF INTERFACE NEW PACKAGE RETURN SUPER SWITCH THIS THROW THROWS TRY VOID WHILE STRUCT

(* Special Tokens *)
%token EOF
%token <string> IDENT
%token ZERO
%token NULL
%token <string> COMMENT
%token <int> INTEGER
%token <float> REAL
(* starting symbol *)

%start prog
%type <unit> prog
%%

prog:
	| classDeclaration EOF {}

identifier : 
	| IDENT {}

(* +++++++++++++++ 4 chapter ++++++++++++++++++++++++*)
(*4.1 The kind of  Types and Values*)
ttype:
	| primitiveType {}
	| referenceType {}

(*4.2 Primitive Types and Values*)
primitiveType:
	| numericType {}
	| BOOLEAN {}

numericType:
	| integralType {}
	| floatingPointType {}

integralType:
	| BYTE {}
	| SHORT {}
	| INT {}
	| LONG {}
	| CHAR {}

floatingPointType:
	| FLOAT {}
	| DOUBLE {}

(* 4.3 Reference Types and Values*)
referenceType:
	| classOrInterfaceType {}
	| typeVariable {}
	| arrayType {}

classOrInterfaceType:
	| classType {}
	(*| interfaceType {}*)

classType:
	| typeDeclSpecifier typeArguments_opt {}

typeDeclSpecifier:
	| typeName {}
	| classOrInterfaceType POINT  identifier {}

typeVariable:
	|  identifier {}

arrayType:
	| ttype LBRACE RBRACE {}

typeArguments_opt:
	| {}
	| typeArguments {}

typeArguments:
	| actualTypeArgumentList {}

actualTypeArgumentList:
	| actualTypeArgument
	| actualTypeArgument COMMA actualTypeArgument {}

actualTypeArgument:
	| referenceType {}
	| wildcard {}

wildcard:
	| wildcardBounds COND {}

wildcardBounds:
	| EXTENDS referenceType {}
	| SUPER referenceType {}


(* +++++++++++++++ 8 chapter +++++++++++++++++++++++++*)
(* 8.1 Class Declaration *)
className :
  | identifier {}

classDeclaration :
	| normalClassDeclaration {}
	(*| enumDeclaration {}*)

normalClassDeclaration :
	| classModifiers_opt CLASS IDENT classBody {} (*incomplete*)

typeParameters_opt:
	| {}
	| typeParameters {}

typeParameters:
	| INF typeParameter LBRACE COMMA typeParameter RBRACE SUP {}

typeParameter:
	| identifier LBRACK EXTENDS bound RBRACK {}

bound:
	| ttype LBRACE AND ttype RBRACE {}

(* 8.1.1 Class Modifiers *)
classModifiers_opt:
	| {}
	| classModifiers {}

classModifiers :
	| classModifier {}
	| classModifiers classModifier {}

classModifier :
  	(*| annotation {}*)
	| PUBLIC {}
	| ABSTRACT {}
	| STATIC {}
	| PROTECTED {}
	| PRIVATE {}
	| FINAL {}
	| STRICTFP {}
(* 8.1.6 Class Body and Member Declarations *)
classBody_opt:
	| {}
	| classBody {}

classBody :
	| LBRACE classBodyDeclarations_opt RBRACE { }

classBodyDeclarations_opt:
	| {}
	| classBodyDeclarations {}

classBodyDeclarations:
	| classBodyDeclaration {}
	| classBodyDeclarations classBodyDeclaration {}

classBodyDeclaration:
	| classMemberDeclaration	{}
	(*| instanceInitializer		{}*)
	(*| staticInitializer			{}*)
	(*| constructorDeclaration	{}*)

classMemberDeclaration:
	| fieldDeclaration {}
	(*| methodDeclaration {}*)
	(*| classDeclaration {}*)
	(*| interfaceDeclaration {}*)
	(*| SEMICOLON  {}*)

(* 8.3 Field Declarations *)
fieldDeclaration:
	| fieldModifiers_opt ttype variableDeclarators SEMICOLON {}

fieldModifiers_opt:
  | {}
  | fieldModifiers {}

fieldModifiers:
	| fieldModifier {}
	| fieldModifiers fieldModifier {}

fieldModifier :
	| PUBLIC     {}
	| STATIC		 {}
	| PROTECTED	 {}
	| PRIVATE		 {}
	| FINAL			 {}
	| STRICTFP	 {}
	| TRANSIENT	 {}
	| VOLATILE   {}

variableDeclarators:
	| variableDeclarator {}
	| variableDeclarators COMMA variableDeclarator {}

variableDeclarator:
	| variableDeclaratorId {}
	(*| variableDeclaratorId EQUAL variableInitializer {}*)

variableDeclaratorId:
	| identifier {}
	| variableDeclaratorId LBRACK RBRACK {}

(* 6.5 Determining the Meaning of a Name *)
packageName:
  | identifier {}
  | packageName POINT identifier {}

typeName:
  | identifier {}
  | packageOrTypeName POINT identifier {}

expressionName:
  | identifier {}
  | ambiguousName POINT identifier {}

methodName:
	| identifier {}
	| ambiguousName POINT identifier {}

packageOrTypeName:
	| identifier {}
	| packageOrTypeName POINT identifier {}

ambiguousName:
	| identifier {}
	| ambiguousName POINT identifier {}


%%
