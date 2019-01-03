 
%token TRUE
%token FALSE


%token PLUS MINUS TIMES
%token DIV AND OR XOR
%token MOD INF SUP
%token ISEQUAL ISNOTEQUAL INFOREQUAL SUPOREQUAL SUPEQUAL INFEQUAL
%token CONDOR CONDAND COND ANNOT
%token LSHIFT RSHIFT USHIFT


%token INCR DECR EXCL TILDE


%token EQUAL PLUSEQUAL MINUSEQUAL TIMESEQUAL DIVEQUAL ANDEQUAL OREQUAL XOREQUAL MODEQUAL LSHIFTEQUAL RSHIFTEQUAL USHIFTEQUAL


%token POINT SEMICOLON COMMA COLON LBRACE RBRACE LPAREN RPAREN LBRACK RBRACK


%token ABSTRACT PRIVATE PROTECTED PUBLIC STATIC STRICTFP SYNCHRONIZED VOLATILE TRANSIENT NATIVE FINAL IMMPLEMENTS


%token BYTE SHORT CHAR INT LONG FLOAT DOUBLE BOOLEAN


%token ASSERT BREAK CASE CATCH CLASS CONST CONTINUE DO DEFAULT ELSE ENUM EXTENDS FINALLY FOR IF GOTO IMPLEMENTS IMPORT INSTANCEOF INTERFACE NEW PACKAGE RETURN SUPER SWITCH THIS THROW THROWS TRY VOID WHILE STRUCT


%token EOF
%token <string> IDENT
%token ZERO
%token <char> NZDIGIT
%token NULL
%token <string> COMMENT
%token <int> INTEGER
%token <float> REAL


%start prog
%type < unit> prog
%%

prog :
	| type EOF { $1 }

type :
	| primitiveType { $1 }
	| referenceType { $1 }

primitiveType :
	| numericType { $1 }
	| BOOLEAN { BOOLEAN }

numericType :
	| integralType { $1 }
	| floatingPointType { $1 }

integralType :
	| BYTE { BYTE }
	| SHORT { SHORT }
	| INT { INT }
	| LONG { LONG }

floatingPointType :
	| FLOAT { FLOAT }
	| DOUBLE { DOUBLE }

referenceType :
	| classOrInterfaceType { $1 }
	| typeVariable { $1 }
	| arrayType { $1 }

classOrInterfaceType :
	| classType { $1 }
	| interfaceType { $1 }

classType :
	| typeDeclSpecifier { $1 }
	| typeDeclSpecifier typeArguments { $1::$2 }

interfaceType :
	| typeDeclSpecifier { $1 }
	| typeDeclSpecifier typeArguments { $1::$2 }

typeDeclSpecifier :
	| typeName { $1 }
	| classOrInterfaceType PERIOD IDENT {$1.IDENT}

typeName :
	| IDENT {IDENT}
	| typeName PERIOD IDENT {$1.IDENT}

typeVariable:
	| IDENT {IDENT}

arrayType :
	| type LBRACK RBRACK { $1 }

typeArguments :
	| INF actualTypeArgumentList SUP {$1}

actualTypeArgumentList : 
	| actualTypeArgumentList { $1 }
	| actualTypeArgumentList COMMA actualTypeArgument { $1::$2 }

actualTypeArgument :
	| referenceType { $1 }
	| wildCard { $1 }

wildCard :
	|

wildCardBounds: 
	| EXTENDS referenceType { $1 }
	| SUPER referenceType { $1 }


%%
