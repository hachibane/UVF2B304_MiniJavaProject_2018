(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

%{
  open Java
%}
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
%token EQUAL PLUSEQUAL MINUSEQUAL TIMESEQUAL DIVEQUAL ANDEQUAL OREEQUAL XOREQUAL MODEQUAL LSHIFTEQUAL RSHIFTEQUAL USHIFTEQUAL

(* Delimitors*)
%token POINT SEMICOLON COMMA COLON LBRACE RBRACE LPAREN RPAREN LBRACK RBRACK

(* Modifiers*)
%token ABSTRACT PRIVATE PROTECTED PUBLIC STATIC STRICTFP SYNCHRONIZED VOLATILE TRANSIENT NATIVE FINAL

(* Basic Types*)
%token BYTE SHORT CHAR INT LONG FLOAT DOUBLE BOOLEAN

(* Other Keywords*)
%token ASSERT BREAK CASE CATCH CLASS CONST
%token CONTINUE DO DEFAULT ELSE ENUM EXTENDS
%token FINALLY FOR IF GOTO IMPLEMENTS IMPORT
%token INSTANCEOF INTERFACE NEW PACKAGE RETURN
%token SUPER SWITCH THIS THROW THROWS TRY VOID WHILE
%token AROBAS
(* Special Tokens *)
%token EOF
%token <string> IDENT
%token ZERO
%token NULL
%token NZDIGIT
%token <string> COMMENT


(* starting symbol *)

%start prog
%type < Unit > prog

%%

prog:
	| classDeclaration EOF { }

(* 8.1 Class Declaration *)
classDeclaration :
	| normalClassDeclaration { }
	| enumDeclaration { }

normalClassDeclaration :
	| classModifiers_opt CLASS IDENT typeParameters_opt super_opt interfaces_opt classBody {}

(* 8.1.1 Class Modifiers *)
classModifiers_opt:
	| 				 { }
	| classModifiers { }

classModifiers :
	| classModifier { }
	| classModifiers classModifier { }

classModifier :
	| PUBLIC	{ }
	| ABSTRACT	{ }
	| STATIC	{ }
	| PROTECTED	{ }
	| PRIVATE	{ }
	| FINAL		{ }
	| STRICTFP	{ }

(* 8.1.4 Superclasses and Subclasses *)
super:
	| EXTENDS classType { }

(* 8.1.5 Superinterfaces *)
interfaces_opt :
	| { }
	| interfaces { }

interfaces:
	| implements interfaceTypeList { }

interfaceTypeList:
	| interfaceType { }
	| interfaceTypeList COMMA interfaceType { }

(* 8.1.6 Class Body and Member Declarations *)
classBody :
	| LBRACE classBodyDeclarations_opt RBRACE { }

classBodyDeclarations_opt:
	| SEMICOLON { }
	| classBodyDeclarations { }

classBodyDeclarations:
	| classBodyDeclaration { }
	| classBodyDeclarations classBodyDeclaration { }

classBodyDeclaration:
	| classMemberDeclaration { }
	| instanceInitializer    { }
	| staticInitializer      { }
	| constructorDeclaration { }

classMemberDeclaration:
	| fieldDeclaration     { }
	| methodDeclaration    { }
	| classDeclaration     { }
	| interfaceDeclaration { }
	| SEMICOLON 		   { }

(* 8.3 Field Declarations *)
fieldDeclaration:
	| fieldModifiers_opt jtype variableDeclarators SEMICOLON {}


fieldModifiers_opt:
  | {}
  | fieldModifiers { }

fieldModifiers:
	| fieldModifier {  }
	| fieldModifiers fieldModifier { }

fieldModifier :
	| PUBLIC		{  }
	| STATIC		{ }
	| PROTECTED	{ }
	| PRIVATE		{ }
	| FINAL			{ }
	| STRICTFP	{ }
	| TRANSIENT	{ }
	| VOLATILE  { }

variableDeclarators:
	| variableDeclarator { }
	| variableDeclarators COMMA variableDeclarator { }

variableDeclarator:
	| variableDeclaratorId {  }
	| variableDeclaratorId EQUAL variableInitializer { }

variableDeclaratorId:
	| IDENT {}
	| variableDeclaratorId LBRACK RBRACK { }

variableInitializer:
	| expression   { }
	| arrayInitializer { }

(* 8.4 Method Declarations *)
methodDeclaration:
	| methodHeader methodBody {}

methodHeader:
	| methodModifiers_opt typeParameters_opt resultType methodDeclarator throws_opt {}

resultType:
	| jtype { }
	| VOID	{ }

methodDeclarator:
	| methodDeclarator LBRACK RBRACK { }
	| IDENT LPAREN formalParameterList_opt RPAREN { }

formalParameterList_opt:
	| { }
	| formalParameterList { }

(* 8.4.1 Formal Parameters *)
formalParameterList:
	| lastFormalParameter { }
	| formalParameters COMMA lastFormalParameter { }

formalParameters:
	| formalParameter { }
	| formalParameters COMME formalParameter { }

formalParameter:
	| variableModifiers jtype variableDeclaratorId {}

variableModifiers:
	| variableModifier { }
	| variableModifiers variableModifier{ }

variableModifier:
	| FINAL { }

lastFormalParameter:
	| variableModifiers jtype variableDeclaratorId { }
	| formalParameter { }

(* 8.4.3 Method Modifiers *)
methodModifiers:
	| methodModifier { }
	| methodModifiers methodModifier { }

methodModifier:
	| PUBLIC		{ }
	| PROTECTED		{ }
	| PRIVATE 		{ }
	| ABSTRACT 		{ }
	| STATIC 		{ }
	| FINAL 		{ }
	| SYNCHRONIZED 	{ }
	| NATIVE 		{ }
	| STRICTFP 		{ }

(* 8.4.6 Method Throws *)
throws:
	| THROWS exceptionTypeList { }

exceptionTypeList:
	| exceptionType { }
	| exceptionTypeList COMMA exceptionType { }

exceptionType:
	| classType { }
	| typeVariable {  }

(* 8.4.7 Method Body *)
methodBody:
	| block { }
	| SEMICOLON {  }

(* 8.6 Instance Initializers *)
instanceInitializer:
	| block {  }

(* 8.7 Static Initializers *)
staticInitializer:
	| STATIC block {}

(* 8.8 Constructor Declarations *)
constructorDeclaration:
	| constructorModifiers_opt constructorDeclarator throws_opt constructorBody {}

constructorDeclarator:
	| typeParameters_opt simpleTypename LPARENT formalParameterList_opt RPARENT {}

(* 8.8.3 Constructor Modifiers *)
constructormodifiers:
	| constructormodifier { }
	| constructormodifiers constructormodifier { }

constructormodifier:
	| PUBLIC 	{ }
	| PROTECTED { }
	| PRIVATE	{ }

(* 8.8.7 Constructor Body *)
constructorBody:
	| LBRACE explicitConstructorInvocation_opt blockStatements_opt RBRACE {}

(* 8.8.7.1 Explicit Constructor Invocations *)
explicitConstructorInvocation:
	| nonWildTypeArguments_opt THIS LPAREN argumentList_opt RPAREN SEMICOLON {}
	| nonWildTypeArguments_opt SUPER LPAREN argumentList_opt RPAREN SEMICOLON {}
	| primary POINT nonWildTypeArguments_opt SUPER LPAREN argumentList_opt RPAREN SEMICOLON {}

nonWildTypeArguments_opt:
	| {}
	| nonWildTypeArguments {}

nonWildTypeArguments:
	| INF referenceTypeList SUP { }

referenceTypeList:
	| referenceType {}
	| referenceTypeList COMMA referenceType {}

(* 8.9 Enums *)
enumDeclaration:
	| classModifiers_opt ENUM IDENT interfaces_opt enumBody{}

enumBody:
	| LBRACE enumConstants_opt COMMA enumBodyDeclarations_opt {}
	| LBRACE enumConstants_opt enumBodyDeclarations_opt {}

enumConstants_opt:
	| {}
	| enumConstants {}

enumConstants:
	| enumConstant {}
	| enumConstants COMMA enumConstant {}

enumConstant:
	| annotations IDENT arguments_opt classBody_opt {}

arguments:
	| LPAREN argumentList_opt RPAREN {}

enumBodyDeclarations:
	| SEMICOLON classBodyDeclarations_opt {}

(* 9.7 annotations *)
annotations:
	| annotation {}
	| annotations annotation {}

annotation:
	| normalAnnotation {}
	| markerAnnotation {}
	| singleElementAnnotation {}

normalAnnotation:
	| AROBAS typeName LPAREN elementValuePairs_opt RPAREN {}
	| elementValuePairs COLON {}
	| elementValuePair {}
	| elementValuePairs COMMA elementValuePair {}

elementValuePair:
	| identifier EQUAL elementValue {}

elementValue:
	| conditionalExpression {}
	| annotation {}
	| elementValueArrayInitializer{}

elementValueArrayInitializer:
	| LBRACE elementValues_opt COMMA RBRACE {}
	| LBRACE elementValues_opt RBRACE {}

elementValues_opt:
	| {}
	| elementValues {}

elementValues:
	| elementValue {}
	| elementValues COMMA elementValue {}

markerAnnotation:
	| AROBAS typeName {}

singleElementAnnotation:
	| AROBAS typeName LPAREN elementValue RPAREN {}

(* 15.25 conditional operator ?: *)
conditionalExpression:
	| conditionalOrExpression {}
	| conditionalOrExpression COND expression COLON conditionalExpression {}

(* 15.26 Assignment Operators *)
assignmentExpression:
	| conditionalExpression {}
	| assignment {}

assignment:
	| leftHandSide assignmentOperator assignmentExpression {}

leftHandSide:
	| expressionName {}
	| fieldAccess {}
	| arrayAccess {}

assignmentOperator:
	| PLUSEQUAL {}
	| MINUSEQUAL {}
	| TIMESEQUAL {}
	| DIVEQUAL {}
	| ANDEQUAL {}
	| OREQUAL {}
	| XOREQUAL {}
	| MODEQUAL {}
	| LSHIFTEQUAL {}
	| RSHIFTEQUAL {}
	| USHIFTEQUAL {}

(* 15.13 Array Access Expressions *)

arrayAccess:
	| expressionName LBRACK expression BRACK {}
	| primaryNoNewArray LBRACK expression RBRACK {}

(* 15.14 Postfix Expressions *)
postfixExpression:
	| primary {}
	| expressionName {}
	| postIncrementExpression {}
	| postDecrementExpression {}

(* 3.8 identifiers*)
identifier:
	| IDENT { }

(* 3.9 Literals*)
literal:
	| integerLiteral {}
	| floatingPointLiteral {}
	| booleanLiteral { }
	| characterLiteral { }
	| stringLiteral { }
	| nullLiteral { }

integerLIteral:
	| decimalIntegerLiteral { }
	(*| hil=hexIntegerLiteral { hil }
	| oil=octalIntegerLiteral { oil }*)

decimalIntegerLiteral:
	 | decimalNumeral { }

(*hexIntegerLiteral:
	 hexn=hexNumeral { hexn }

octalIntegerLiteral:
	 octn=octalNumeral { octn }*)

decimalNumeral:
	| ZERO { }
	| NZDIGIT dgs=digits? { }

digits:
	| digit { }
	| digits digit { }

digit:
	| ZERO { }
	| NZDIGIT { }

floatingPointLiteral:
	 | decimalFloatingPointLiteral { }

(* to complete with Exponent part e E*)
decimalFloatingPointLiteral:
	| digits POINT digits COND { }
	| POINT digits { }

booleanLiteral:
	| TRUE { }
	| FALSE { }

characterLiteral:
	| NOTDONE {}

stringLiteral:
	| IDENT { }

nullLiteral:
	NULL { }

(* 4. Types, Values, and Variables*)

(*4.1 The kind of  Types and Values*)

ttype:
	| primitiveType { }
	| referenceType { }

(*4.2 Primitive Types and Values*)

primitiveType:
	| numericType { }
	| BOOLEAN { }

numericType:
	| integralType {}
	| floatingPointType {}

integralType:
	| BYTE { }
	| SHORT { }
	| INT { }
	| LONG { }
	| CHAR { }

floatingPointType:
	| FLOAT { }
	| DOUBLE { }

(*4.3 Reference Types and Values*)

referenceType:
	| classOrInterfaceType { }
	| typeVariable { }
	| arrayType { }

classOrInterfaceType:
	| classType { }
	| interfaceType { }

classType:
	| typeDeclSpecifier ta=typeArguments? { }


interfaceType:
	| typeDeclSpecifier typeArguments COND { }

typeDeclSpecifier:
	| typeName { }
	| classOrInterfaceType POINT identifier { }

typeName:
	| identifier { }
	| typeName POINT identifier { }

typeVariable:
	| identifier { }

arrayType:
	| ttype LBRACE RBRACE { }

typeArguments:
	| actualTypeArgumentList { }

actualTypeArgumentList:
	| actualTypeArgument
	| actualTypeArgument COMMA actualTypeArgument {  }

actualTypeArgument:
	| referenceType { }
	| wildcard { }

wildcard:
	| wildcardBounds COND { }

wildcardBounds:
	| EXTENDS referenceType { }
	| SUPER referenceType { }
