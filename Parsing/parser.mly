(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

(* Literals *)
%token <bool> BOOLEANLIT
%token <float> FLOATLIT
%token <int> INTEGERLIT
%token <string> STRINGLIT

(* Infix Operators*)
%token PLUS MINUS TIMES
%token DIV AND OR XOR
%token MOD INF SUP
%token ISEQUAL ISNOTEQUAL
%token SUPEQUAL INFEQUAL
%token CONDOR CONDAND COND
%token LSHIFT RSHIFT USHIFT
(* Prefix Operators*)
%token INCR DECR EXCL TILDE
(* Assignment Operators*)
%token EQUAL PLUSEQUAL MINUSEQUAL TIMESEQUAL
%token DIVEQUAL ANDEQUAL OREQUAL XOREQUAL
%token MODEQUAL LSHIFTEQUAL RSHIFTEQUAL USHIFTEQUAL
(* Delimitors*)
%token POINT SEMICOLON COMMA COLON LBRACE
%token RBRACE LPAREN RPAREN LBRACK RBRACK
(* Modifiers*)
%token ABSTRACT PRIVATE PROTECTED PUBLIC
%token STATIC STRICTFP SYNCHRONIZED
%token VOLATILE TRANSIENT NATIVE FINAL
(* Basic Types*)
%token BYTE SHORT CHAR INT
%token LONG FLOAT DOUBLE BOOLEAN
(* Other Keywords*)
%token ASSERT BREAK CASE CATCH CLASS
%token CONTINUE DO DEFAULT ELSE ENUM
%token FINALLY FOR IF IMPLEMENTS
%token INSTANCEOF INTERFACE NEW PACKAGE
%token SUPER SWITCH THIS THROW RETURN EXTENDS
%token AROBAS THROWS TRY VOID WHILE IMPORT
(* Special Tokens *)
%token EOF
%token <string> IDENT
%token NULL
%token <string> COMMENT


%start prog
%type <unit> prog
%%



(* +++++++++++++ 3 chapter +++++++++++++++++++*)
(* 3.8  identifiers *)
 identifier:
	| IDENT {}

(* 3.9 Literals *)
literal:
	| integerLiteral {}
	| floatingPointLiteral {}
	| booleanLiteral {}
	| stringLiteral {}
	| nullLiteral {}

integerLiteral:
	| INTEGERLIT {}

floatingPointLiteral:
  | FLOATLIT {}

booleanLiteral:
	| BOOLEANLIT {}

stringLiteral:
  | STRINGLIT {}

nullLiteral:
  | NULL {}

(*variable modifiers*)
variableModifiers_opt:
	| {}
	| variableModifiers {}

variableModifiers:
	| variableModifier {}
	| variableModifiers variableModifier {}
variableModifier:
	| annotation {}
	| FINAL {}


(* 8.8.3 Constructor Modifiers *)
constructorModifiers_opt:
	| {}
	| constructorModifiers {}

constructorModifiers :
	| constructorModifier {}
	| constructorModifiers constructorModifier {}



(* 8.3 Field Declarations *)
fieldDeclaration:
	| fieldModifiers_opt ttype variableDeclarators SEMICOLON {}

fieldModifiers_opt:
  	| {}
  	| fieldModifiers {}

fieldModifiers:
	| fieldModifier {}
	| fieldModifiers fieldModifier {}

(* 8.4.3 Method Modifiers *)
methodModifiers_opt:
	| {}
	| methodModifiers {}

methodModifiers :
	| methodModifier {}
	| methodModifiers methodModifier {}



constructorModifier:
	| annotation {}
	| PUBLIC 	 {}
	| PROTECTED {}
	| PRIVATE	 {}


	
methodModifier:
  	| annotation {}
	| PUBLIC {}
	| PROTECTED  {}
	| PRIVATE  {}
	| ABSTRACT {}
	| STATIC {}
	| FINAL  {}
	| SYNCHRONIZED {}
	| NATIVE {}
	| STRICTFP {}



fieldModifier :
	| PUBLIC     		{}
	| STATIC		{}
	| PROTECTED	 	{}
	| PRIVATE		{}
	| FINAL			{}
	| STRICTFP	 	{}
	| TRANSIENT	 	{}
	| VOLATILE   		{}




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
typeDeclSpecifier:
	| typeName {}
	| classOrInterfaceType POINT  identifier {}

referenceType:
	| classOrInterfaceType {}
	| typeVariable {}
	| arrayType {}

classOrInterfaceType:
	| classType {}
	| interfaceType {}

classType:
	| typeDeclSpecifier typeArguments_opt {}



typeVariable:
	|  identifier {}

arrayType:
	| ttype LBRACK RBRACK {}

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



(*variable declarators*)
variableDeclarators:
	| variableDeclarator {}
	| variableDeclarators COMMA variableDeclarator {}

variableDeclarator:
	| variableDeclaratorId {}
	| variableDeclaratorId EQUAL variableInitializer {}

variableDeclaratorId:
	| identifier {}
	| variableDeclaratorId LBRACK RBRACK {}




(* 14.4 *)
localVariableDeclarationStatement:
	| localVariableDeclaration SEMICOLON {}

localVariableDeclaration:
	| variableModifiers_opt ttype variableDeclarators {}





lastFormalParameter:
	| variableModifiers_opt ttype variableDeclaratorId {}
	| formalParameter {}




(* +++++++++++++++ 8 chapter +++++++++++++++++++++++++*)
(* 8.1 Class Declaration *)
className :
  | identifier {}

classDeclaration:
	| normalClassDeclaration {}
	| enumDeclaration {}

normalClassDeclaration :
	| classModifiers_opt CLASS identifier super_opt interfaces_opt classBody {} 

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

classModifiers:
	| classModifier {}
	| classModifiers classModifier {}

classModifier :
  	| annotation {}
	| PUBLIC {}
	| ABSTRACT {}
	| STATIC {}
	| PROTECTED {}
	| PRIVATE {}
	| FINAL {}
	| STRICTFP {}
(* 8.1.4 Superclasses and Subclasses *)
super_opt:
  | {}
  | super {}

super:
	| EXTENDS classType {}

(* 8.1.5 Superinterfaces *)
interfaces_opt :
	| {}
	| interfaces {}

interfaces:
	| IMPLEMENTS interfaceTypeList {}

interfaceTypeList:
	| interfaceType {}
	| interfaceTypeList COMMA interfaceType {}

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
	| instanceInitializer		{}
	| staticInitializer			{}
	| constructorDeclaration	{}

classMemberDeclaration:
	| fieldDeclaration {}
	| methodDeclaration {}
	| classDeclaration {}
	| interfaceDeclaration {}
	| SEMICOLON  {}



(* 8.4 Method Declarations *)
methodDeclaration:
	| methodHeader methodBody {}

methodHeader:
	| methodModifiers_opt typeParameters_opt resultType methodDeclarator throws_opt {}

resultType:
  	| ttype {}
	| VOID {}

methodDeclarator:
	| identifier LPAREN formalParameterList_opt RPAREN {}

formalParameterList_opt:
	| {}
	| formalParameterList {}

(* 8.4.1 Formal Parameters *)
formalParameterList:
	| lastFormalParameter {}
	| formalParameters COMMA lastFormalParameter {}

formalParameters:
	| formalParameter  {}
	| formalParameters COMMA formalParameter {}

formalParameter:
	| variableModifiers_opt ttype variableDeclaratorId {}



(* 8.4.6 Method Throws *)
throws_opt:
  | {}
  | throws {}

throws:
	| THROWS exceptionTypeList {}

exceptionTypeList:
	| exceptionType {}
	| exceptionTypeList COMMA exceptionType {}

exceptionType:
	| classType {}
	| typeVariable {}

(* 8.4.7 Method Body *)
methodBody:
	| block {}
	| SEMICOLON {}

(* 8.6 Instance Initializers *)
instanceInitializer:
	| block {}

(* 8.7 Static Initializers *)
staticInitializer:
	| STATIC block {}

(* 8.8 Constructor Declarations *)
constructorDeclaration:
	| constructorModifiers_opt constructorDeclarator throws_opt constructorBody {}

constructorDeclarator:
	| typeParameters_opt simpleTypeName LPAREN formalParameterList_opt RPAREN {}

simpleTypeName:
  | identifier {}

(* 8.8.7 Constructor Body *)
constructorBody:
	| LBRACE explicitConstructorInvocation_opt blockStatements_opt RBRACE {}

(* 8.8.7.1 Explicit Constructor Invocations *)
explicitConstructorInvocation_opt:
	| {}
	| explicitConstructorInvocation {}

explicitConstructorInvocation:
	| nonWildTypeArguments_opt THIS LPAREN argumentList_opt RPAREN SEMICOLON {}
	| nonWildTypeArguments_opt SUPER LPAREN argumentList_opt RPAREN SEMICOLON {}
	| primary POINT nonWildTypeArguments_opt SUPER LPAREN argumentList_opt RPAREN SEMICOLON {}

nonWildTypeArguments_opt:
	| {}
	| nonWildTypeArguments {}

nonWildTypeArguments:
	| INF referenceTypeList SUP {}

referenceTypeList:
	| referenceType {}
	| referenceTypeList COMMA referenceType {}

(* 8.9 Enums *)
enumDeclaration:
	| classModifiers_opt ENUM identifier interfaces_opt enumBody {}

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
	| annotations identifier arguments_opt classBody_opt {}

arguments_opt :
	| {}
	| arguments {}

arguments:
	| LPAREN argumentList_opt RPAREN {}

enumBodyDeclarations_opt:
	| {}
	| enumBodyDeclarations {}

enumBodyDeclarations:
	| SEMICOLON classBodyDeclarations_opt {}

(* ++++++++++++++++++++++ 9 chapter +++++++++++++++++++++++ *)
(* 9.1 Interface Declarations *)
interfaceDeclaration:
	| normalInterfaceDeclaration {}
	| annotationTypeDeclaration {}

normalInterfaceDeclaration:
	| interfaceModifiers_opt INTERFACE identifier typeParameters_opt extendsInterfaces_opt interfaceBody {}

(* 9.1.1 Interface Modifiers *)
interfaceModifiers_opt:
  | {}
  | interfaceModifiers {}

interfaceModifiers:
	| interfaceModifier {}
	| interfaceModifiers interfaceModifier {}

interfaceModifier:
	| annotation {}
	| PUBLIC {}
	| PROTECTED {}
	| PRIVATE {}
	| ABSTRACT {}
	| STATIC {}
	| STRICTFP {}

(* 9.1.3 Superinterfaces and Subinterfaces *)
extendsInterfaces_opt:
	| {}
	| extendsInterfaces {}

extendsInterfaces:
	| EXTENDS interfaceType {}
	| extendsInterfaces COMMA interfaceType {}

interfaceType:
	| typeDeclSpecifier typeArguments_opt {}

(* 9.1.4 Interface Body and Member Declarations *)
interfaceBody:
	| LBRACE interfaceMemberDeclarations_opt RBRACE {}

interfaceMemberDeclarations_opt:
  | {}
  | interfaceMemberDeclarations {}

interfaceMemberDeclarations:
	| interfaceMemberDeclaration {}
	| interfaceMemberDeclarations interfaceMemberDeclaration {}

interfaceMemberDeclaration:
	| constantDeclaration {}
	| abstractMethodDeclaration {}
	| classDeclaration {}
	| interfaceDeclaration {}
	| SEMICOLON {}

(* 9.3 Field (Constant) Declarations *)
constantDeclaration:
  | constantModifiers_opt ttype variableDeclarators SEMICOLON {}

constantModifiers_opt :
  | {}
  | constantModifiers {}

constantModifiers:
  | constantModifier {}
  | constantModifier constantModifiers {}

constantModifier:
  | annotation {}
  | PUBLIC {}
  | STATIC {}
  | FINAL {}

(* 9.4 Abstract Method Declarations *)
abstractMethodDeclaration:
  | abstractMethodModifiers_opt typeParameters_opt resultType methodDeclarator throws_opt SEMICOLON {}

abstractMethodModifiers_opt:
  | {}
  | abstractMethodModifiers {}

abstractMethodModifiers:
  | abstractMethodModifier {}
  | abstractMethodModifiers abstractMethodModifier {}

abstractMethodModifier:
  | annotation  {}
  | PUBLIC      {}
  | ABSTRACT    {}

(* 9.5 Member Type Declarations *)
(* 9.6 Annotation Types *)
annotationTypeDeclaration:
  | interfaceModifiers_opt AROBAS INTERFACE identifier annotationTypeBody {}

annotationTypeBody:
  | LBRACE annotationTypeElementDeclarations_opt RBRACE {}

annotationTypeElementDeclarations_opt:
  | {}
  | annotationTypeElementDeclarations {}

annotationTypeElementDeclarations:
  | annotationTypeElementDeclaration {}
  | annotationTypeElementDeclarations annotationTypeElementDeclaration {}

annotationTypeElementDeclaration:
  | abstractMethodModifiers_opt ttype identifier LPAREN RPAREN defaultValue_opt SEMICOLON {}
  | constantDeclaration {}
  | classDeclaration {}
  | interfaceDeclaration {}
  | enumDeclaration {}
  | annotationTypeDeclaration {}
  | SEMICOLON {}

defaultValue_opt:
  | {}
  | defaultValue {}

defaultValue:
  | DEFAULT elementValue {}

(* 9.7 annotations *)
annotations_opt:
	| {}
	| annotations {}
annotations:
	| annotation {}
	| annotations annotation {}

annotation:
	| normalAnnotation {}
	| markerAnnotation {}
	| singleElementAnnotation {}

normalAnnotation:
	| AROBAS typeName LPAREN elementValuePairs_opt RPAREN {}

elementValuePairs_opt:
  | {}
  | elementValuePairs {}

elementValuePairs:
	| elementValuePair {}
	| elementValuePairs COMMA elementValuePair {}

elementValuePair:
	| identifier EQUAL elementValue {}

elementValue:
	| conditionalExpression {}
	| annotation {}
	| elementValueArrayInitializer {}

elementValueArrayInitializer:
	| LBRACE elementValues_opt COMMA? RBRACE {}

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

(* 10.6 Array Initializers *)
arrayInitializer:
  | LBRACE variableInitializers_opt COMMA? RBRACE {}

variableInitializers_opt:
  | {}
  | variableInitializers {}

variableInitializers:
  | variableInitializer {}
  | variableInitializers COMMA variableInitializer {}

variableInitializer:
  | expression {}
  | arrayInitializer {}
(* +++++++++++ 14 chapter ++++++++++++++++ *)
(* 14.2 *)
block:
	| LBRACE blockStatements_opt RBRACE {}

blockStatements_opt :
  | {}
  | blockStatements {}

blockStatements:
	| blockStatement {}
	| blockStatements blockStatement {}

blockStatement:
	| localVariableDeclarationStatement {}
	| classDeclaration {}
	| statement {}



(* 14.5 *)
statement:
	| statementWithoutTrailingSubstatement {}
	| labeledStatement {}
	| ifThenStatement {}
	| ifThenElseStatement {}
	| whileStatement {}
	| forStatement {}

statementWithoutTrailingSubstatement:
	| block {}
	| emptyStatement {}
	| expressionStatement {}
	| assertStatement {}
	| switchStatement {}
	| doStatement {}
	| breakStatement {}
	| continueStatement {}
	| returnStatement {}
	| synchronizedStatement {}
	| throwStatement {}
	| tryStatement {}

statementNoShortIf:
	| statementWithoutTrailingSubstatement {}
	| labeledStatementNoShortIf {}
	| ifThenElseStatementNoShortIf {}
	| whileStatementNoShortIf {}
	| forStatementNoShortIf {}

(* 14.6 *)
emptyStatement:
	| SEMICOLON {}

(* 14.7 *)
labeledStatement:
	| identifier COLON statement {}

labeledStatementNoShortIf:
	| identifier COLON statementNoShortIf {}

(* 14.8 *)
expressionStatement:
	| statementExpression SEMICOLON {}

statementExpression:
	| assignment {}
	| preIncrementExpression {}
	| preDecrementExpression {}
	| postIncrementExpression {}
	| postDecrementExpression {}
	| methodInvocation {}
	| classInstanceCreationExpression {}

(* 14.9 *)
ifThenStatement:
	| IF LPAREN expression RPAREN statement {}

ifThenElseStatement:
	| IF LPAREN expression RPAREN statementNoShortIf ELSE statement {}

ifThenElseStatementNoShortIf:
	| IF LPAREN expression RPAREN statementNoShortIf ELSE statementNoShortIf {}

(* 14.10 *)
assertStatement:
  | ASSERT expression SEMICOLON {}
  | ASSERT expression COLON expression SEMICOLON {}

(* 14.11 *)
switchStatement:
	| SWITCH LPAREN expression RPAREN switchBlock {}

switchBlock:
  | LBRACE RBRACE                                         {}
  | LBRACE switchBlockStatementGroups RBRACE              {}
  | LBRACE switchLabels RBRACE                            {}
  | LBRACE switchBlockStatementGroups switchLabels RBRACE {}

switchBlockStatementGroups:
	| switchBlockStatementGroup  {}
	| switchBlockStatementGroups switchBlockStatementGroup {}

switchBlockStatementGroup:
	| switchLabels blockStatements {}

switchLabels:
	| switchLabels switchLabel {}

switchLabel:
	| CASE constantExpression COLON {}
	| CASE enumConstantName COLON {}
	| DEFAULT COLON {}

enumConstantName:
	| identifier {}

(* 14.12 *)
whileStatement:
	| WHILE LPAREN expression RPAREN statement {}

whileStatementNoShortIf:
	| WHILE LPAREN expression RPAREN statementNoShortIf {}

(* 14.13 *)
doStatement:
	| DO statement WHILE LPAREN expression RPAREN {}

(* 14.14 *)
forStatement:
	| basicForStatement {}
	| enhancedForStatement {}

basicForStatement:
	| basicForStatement1 {}
	| basicForStatement2 {}
	| basicForStatement3 {}
	| basicForStatement4 {}
	| basicForStatement5 {}
	| basicForStatement6 {}
	| basicForStatement7 {}
	| basicForStatement8 {}

basicForStatement1:
	| FOR LPAREN SEMICOLON SEMICOLON RPAREN statement {}

basicForStatement2:
	| FOR LPAREN forInit SEMICOLON SEMICOLON RPAREN statement {}

basicForStatement3:
  | FOR LPAREN SEMICOLON expression SEMICOLON RPAREN statement {}

basicForStatement4:
  | FOR LPAREN SEMICOLON SEMICOLON forUpdate RPAREN statement {}

basicForStatement5:
  | FOR LPAREN forInit SEMICOLON expression SEMICOLON RPAREN statement {}

basicForStatement6:
  | FOR LPAREN forInit SEMICOLON SEMICOLON forUpdate RPAREN statement {}

basicForStatement7:
  | FOR LPAREN SEMICOLON expression SEMICOLON forUpdate RPAREN statement {}

basicForStatement8:
  | FOR LPAREN forInit SEMICOLON expression SEMICOLON forUpdate RPAREN statement {}

forStatementNoShortIf:
  | forStatementNoShortIf1 {}
	| forStatementNoShortIf2 {}
	| forStatementNoShortIf3 {}
	| forStatementNoShortIf4 {}
	| forStatementNoShortIf5 {}
	| forStatementNoShortIf6 {}
	| forStatementNoShortIf7 {}
	| forStatementNoShortIf8 {}

forStatementNoShortIf1:
  | FOR LPAREN SEMICOLON SEMICOLON RPAREN  statementNoShortIf {}

forStatementNoShortIf2:
  | FOR LPAREN forInit SEMICOLON SEMICOLON RPAREN statementNoShortIf {}

forStatementNoShortIf3:
  | FOR LPAREN SEMICOLON expression SEMICOLON RPAREN statementNoShortIf {}

forStatementNoShortIf4:
  | FOR LPAREN SEMICOLON SEMICOLON forUpdate RPAREN statementNoShortIf {}

forStatementNoShortIf5:
  | FOR LPAREN forInit SEMICOLON  expression SEMICOLON RPAREN statementNoShortIf {}

forStatementNoShortIf6:
  | FOR LPAREN forInit SEMICOLON SEMICOLON forUpdate RPAREN statementNoShortIf {}

forStatementNoShortIf7:
  | FOR LPAREN SEMICOLON expression SEMICOLON forUpdate RPAREN statementNoShortIf {}

forStatementNoShortIf8:
  | FOR LPAREN forInit SEMICOLON expression SEMICOLON forUpdate RPAREN statementNoShortIf {}

forInit:
  | statementExpressionList {}
	| localVariableDeclaration {}

forUpdate:
  | statementExpressionList {}

statementExpressionList:
  | statementExpression {}
	| statementExpressionList COMMA statementExpression {}

enhancedForStatement:
  | FOR LPAREN ttype  identifier COLON expression RPAREN statement {}
	| FOR LPAREN variableModifiers ttype identifier COLON expression RPAREN statement {}

(* 14.15 *)
breakStatement:
  | BREAK SEMICOLON {}
	| BREAK identifier SEMICOLON {}

(* 14.16 *)
continueStatement:
  | CONTINUE SEMICOLON {}
	| CONTINUE identifier SEMICOLON {}

(* 14.17 *)
returnStatement:
  | RETURN SEMICOLON {}
	| RETURN expression SEMICOLON {}

(* 14.18 *)
throwStatement:
  | THROW expression SEMICOLON {}

(* 14.19 *)
synchronizedStatement:
  | SYNCHRONIZED LPAREN expression RPAREN block {}

(* 14.20 *)
tryStatement:
  | TRY block catches {}
	| TRY block finally {}
	| TRY block catches finally {}

catches:
  | catchClause {}
  | catches catchClause {}

catchClause:
  | CATCH LPAREN formalParameter RPAREN block {}

finally:
  | FINALLY block {}


(* ++++++++++++ 15 chapter +++++++++++++++++++++++++ *)
(* 15.8 Primary Expressions *)
primary:
  | primaryNoNewArray {}
  | arrayCreationExpression {}

primaryNoNewArray:
  | literal {}
  | ttype POINT CLASS{}
  | VOID POINT CLASS{}
  | THIS {}
  | className POINT THIS {}
  | LPAREN expression RPAREN {}
  | classInstanceCreationExpression {}
  | fieldAccess {}
  | methodInvocation {}
  | arrayAccess {}

(* ++++++++++++ 15 chapter ++++++++++++++++++++++++++++++++*)
(* 15.8.1 Lexical Literals *)
  (* already defined in 3.9 Literals*)

(* 15.9 Class Instance Creation Expressions *)
classInstanceCreationExpression:
  | NEW typeArguments_opt classOrInterfaceType LPAREN argumentList_opt RPAREN classBody_opt {}
  | primary POINT NEW typeArguments_opt identifier typeArguments_opt LPAREN argumentList_opt RPAREN classBody_opt {}

argumentList_opt:
  | {}
  | argumentList {}

argumentList:
  | expression {}
  | argumentList COMMA expression RPAREN {}

(* 15.10 Array Creation Expressions *)
arrayCreationExpression:
  | NEW primitiveType dimExprs dims_opt {}
  | NEW classOrInterfaceType dimExprs dims_opt {}
  | NEW primitiveType dims arrayInitializer {}
  | NEW classOrInterfaceType dims arrayInitializer  {}

dimExprs:
  | dimExpr {}
  | dimExprs dimExpr {}

dimExpr:
  | LBRACK expression RBRACK {}

dims_opt:
  | {}
  | dims {}

dims:
  | LBRACK RBRACK {}
  | dims LBRACK RBRACK {}

(* 15.11 Field Access Expressions *)
fieldAccess:
  | primary POINT identifier {}
  | SUPER POINT identifier {}
  | className POINT SUPER POINT identifier {}

(* 15.12 Method Invocation Expressions *)
methodInvocation:
	| methodName LPAREN argumentList_opt RPAREN {}
	| primary POINT nonWildTypeArguments_opt identifier LPAREN argumentList_opt RPAREN {}
  	| SUPER POINT nonWildTypeArguments_opt identifier LPAREN argumentList_opt RPAREN {}
   	| className POINT SUPER POINT nonWildTypeArguments_opt identifier LPAREN argumentList_opt RPAREN {}
    	| typeName POINT nonWildTypeArguments identifier LPAREN argumentList_opt RPAREN {}

(* 15.13 Array Access expressions *)
arrayAccess:
	| expressionName LBRACK expression RBRACK {}
	| primaryNoNewArray LBRACK expression RBRACK {}

(* 15.14 Postfix expressions *)
postfixExpression:
	| primary {}
	| expressionName {}
	| postIncrementExpression {}
	| postDecrementExpression {}

(* 15.14.2 Postfix Increment Operator ++ *)
postIncrementExpression:
	| postfixExpression INCR {}

(* 15.14.3 Postfix Decrement Operator -- *)
postDecrementExpression:
  | postfixExpression DECR {}

(* 15.15 Unary Operators *)
unaryExpression:
  | preIncrementExpression {}
  | preDecrementExpression {}
  | PLUS unaryExpression {}
  | MINUS unaryExpression {}
  | unaryExpressionNotPlusMinus {}

preIncrementExpression:
  | INCR unaryExpression {}

preDecrementExpression:
  | DECR unaryExpression {}

unaryExpressionNotPlusMinus:
  | postfixExpression {}
  | TILDE unaryExpression {}
  | EXCL unaryExpression {}
  | castExpression {}

(* 15.16 Cast Expressions *)
castExpression:
  | LPAREN primitiveType dims_opt RPAREN unaryExpression {}
  | LPAREN referenceType RPAREN unaryExpressionNotPlusMinus {}

(* 15.17 Multiplicative Operators *)
multiplicativeExpression:
  | unaryExpression {}
  | multiplicativeExpression TIMES unaryExpression {}
  | multiplicativeExpression DIV unaryExpression {}
  | multiplicativeExpression MOD unaryExpression {}

(* 15.18 Additive Operators *)
additiveExpression:
  | multiplicativeExpression {}
  | additiveExpression PLUS multiplicativeExpression {}
  | additiveExpression MINUS multiplicativeExpression {}

(* 15.19 Shift Operators *)
shiftExpression:
  | additiveExpression
  | shiftExpression LSHIFT additiveExpression {}
  | shiftExpression RSHIFT additiveExpression {}
  | shiftExpression USHIFT additiveExpression {}

(* 15.20 Relational Operators *)
relationalExpression:
  | shiftExpression {}
  | relationalExpression INF shiftExpression {}
  | relationalExpression SUP shiftExpression {}
  | relationalExpression INFEQUAL shiftExpression {}
  | relationalExpression SUPEQUAL shiftExpression {}
  | relationalExpression INSTANCEOF referenceType {}

(* 15.21 Equality Operators *)
equalityExpression:
  | relationalExpression {}
  | equalityExpression ISEQUAL relationalExpression {}
  | equalityExpression ISNOTEQUAL relationalExpression {}

(* 15.22 Bitwise and Logical Operators *)
andExpression:
  | equalityExpression {}
  | andExpression AND equalityExpression {}

exclusiveOrExpression:
  | andExpression {}
  | exclusiveOrExpression XOR andExpression {}

inclusiveOrExpression:
  | exclusiveOrExpression {}
  | inclusiveOrExpression OR exclusiveOrExpression {}

(* 15.23 Conditional-And Operator && *)
conditionalAndExpression:
  | inclusiveOrExpression {}
  | conditionalAndExpression CONDAND inclusiveOrExpression {}

(* 15.24 Conditional-Or Operator || *)
conditionalOrExpression:
  | conditionalAndExpression {}
  | conditionalOrExpression CONDOR conditionalAndExpression {}

(* 15.25 conditional operator ?: *)
conditionalExpression:
	| conditionalOrExpression {}
	| conditionalOrExpression COND expression COLON conditionalExpression {}

(* 15.26 Assignment Operators *)
assignmentExpression:
	| conditionalExpression {}
	| assignment {}

(* 15.27 Expression *)
expression:
  | assignmentExpression {}

(* 15.28 Constant Expression *)
constantExpression:
  | expression {}

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
	| EQUAL {}


(* 6.5 Determining the Meaning of a Name *)
packageName:
  | identifier {}
  | packageName POINT identifier {}

typeName:
  | identifier {}
  | typeName POINT identifier {}

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

(* 7. Packages *) 
(* 7.3 Compilation Units *)

prog:
	| packageDeclaration_opt importDeclarations_opt typeDeclarations_opt classDeclaration EOF {}

packageDeclaration_opt:
	| {}
	| packageDeclaration {}

importDeclarations_opt:
	| {}
	| importDeclarations {}

typeDeclarations_opt:
	| {}
	| typeDeclarations {}
	
importDeclarations:
	| importDeclaration {  }
	| importDeclarations importDeclaration {  }
	
typeDeclarations:
	| typeDeclaration {  }
	| typeDeclarations typeDeclaration {  }

packageDeclaration:
	| annotations_opt PACKAGE packageName {  }
	
importDeclaration:
	| singleTypeImportDeclaration {  }
	| typeImportOnDemandDeclaration {  }
	| singleStaticImportDeclaration {  }
	| staticImportOnDemandDeclaration {  }
	
singleTypeImportDeclaration:
	| IMPORT typeName SEMICOLON { }
	
typeImportOnDemandDeclaration:
	| IMPORT packageOrTypeName POINT TIMES SEMICOLON {  }

singleStaticImportDeclaration:
	| IMPORT STATIC typeName POINT IDENT SEMICOLON { }

staticImportOnDemandDeclaration:
	| IMPORT STATIC typeName POINT TIMES SEMICOLON { }

typeDeclaration:
	| classDeclaration {  }
	| interfaceDeclaration {  }
	| SEMICOLON { }
%%


(* 8.1 Class Declaration *)
classDeclaration :
	| normalClassDeclaration { $1 }
	| enumDeclaration { $1 }

normalClassDeclaration :
	| classModifiers_opt CLASS IDENT typeParameters_opt super_opt interfaces_opt classBody 
	{{  
		class_modifiers  = List.rev $1;
		class_identifier = $3;
		class_type_parameters  = $4;
		class_super      = $5;
		class_interfaces = $6;
		class_body       = $7 
	}}

(* 8.1.1 Class Modifiers *)
classModifiers_opt:
	| 				 { [] }
	| classModifiers { $1 }

classModifiers :
	| classModifier { [ $1 ] }
	| classModifiers classModifier { $2::$1 }

classModifier :
	| PUBLIC		{  Public    }
	| ABSTRACT		{  Abstract  }
	| STATIC		{  Static    }
	| PROTECTED		{  Protected } 
	| PRIVATE		{  Private   }
	| FINAL			{  Final     } 
	| STRICTFP		{  Strictfp  }

(* 8.1.4 Superclasses and Subclasses *)
super:
	| extends classType { { super_extends = $1, super_classType = $2 }

(* 8.1.5 Superinterfaces *)
interfaces_opt :
	| { [] }
	| interfaces_opt { $1 }
 
interfaces:
	| implements interfaceTypeList { { interfaces_implements = List.rev $1,  interfaceTypeList = List.rev $2} }

interfaceTypeList:
	| interfaceType { [$1] }
	| interfaceTypeList COMMA interfaceType { $2::$1 }

(* 8.1.6 Class Body and Member Declarations *)
classBody :
	| LBRACE classBodyDeclarations_opt RBRACE { List.rev $2 }
	
classBodyDeclarations_opt:
	| SEMICOLON { [] }
	| classBodyDeclarations { $1 }

classBodyDeclarations:
	| classBodyDeclaration { [ $1 ] }
	| classBodyDeclarations classBodyDeclaration { $2::$1 }

classBodyDeclaration:
	| classMemberDeclaration { ClassMemberDeclaration $1 }
	| instanceInitializer    { InstanceInitializer $1    } 
	| staticInitializer      { StaticInitializer $1      }
	| constructorDeclaration { ConstructorDeclaration $1 }

classMemberDeclaration:	
	| fieldDeclaration     { FieldDeclaration $1     }
	| methodDeclaration    { MethodDeclaration $1    }
	| classDeclaration     { ClassDeclaration $1     }
	| interfaceDeclaration { InterfaceDeclaration $1 }
	| SEMICOLON 		   { EmptyDeclaration  }				

(* 8.3 Field Declarations *)
fieldDeclaration:
	| fieldModifiers_opt jtype variableDeclarators SEMICOLON 
	{{ 
		field_modifiers = List.rev $1;
		field_jtype = $2;
		field_var_declarators = List.rev $3
	}}
  
fieldModifiers:
	| { [] }
	| fieldModifier { [ $1 ] }
	| fieldModifiers fieldModifier { $2::$1 }

fieldModifier :
	| PUBLIC		{ Public }
	| STATIC		{  Static    }
	| PROTECTED		{  Protected } 
	| PRIVATE		{  Private   }
	| FINAL			{  Final     } 
	| STRICTFP		{  Strictfp  }
	| TRANSIENT		{  Transient }
	| VOLATILE      {  Volatile  }

variableDeclarators:
	| variableDeclarator { [ $1 ] }
	| variableDeclarators COMMA variableDeclarator { $3::$1 }

variableDeclarator:
	| variableDeclaratorId { { var_id = $1} }
	| variableDeclaratorId EQUAL variableInitializer { { var_id = $1; var_initializer = $3} }

variableDeclaratorId:
	| IDENT { $1 }
	| variableDeclaratorId LBRACK RBRACK { $1 }

variableInitializer:
	| expression   { Expression $1 } 
	| arrayInitializer { ArrayInitializer $1 }

(* 8.4 Method Declarations *)
methodDeclaration:
	| methodHeader methodBody {{ method_header = $1; method_body = $2 }}

methodHeader:
	| methodModifiers_opt typeParameters_opt resultType methodDeclarator throws_opt 
	{{
		method_modifiers = $1;
		typeParameters = $2;
		result_type = $3;
		methodDeclarator = $4;
		throws = $5
	}}

resultType:
	| jtype { $1 }
	| VOID	{ Void }

methodDeclarator:
	| methodDeclarator LBRACK RBRACK { MethodDeclarator $1 }
	| IDENT LPAREN formalParameterList_opt RPAREN { FormalParameterList (List.rev $1) }

formalParameterList_opt:
	| { [] }
	| formalParameterList { $1 }

(* 8.4.1 Formal Parameters *)
formalParameterList:
	| lastFormalParameter { [ $1 ] }
	| formalParameters COMMA lastFormalParameter { (List.rev $2)::$1 }

formalParameters:
	| formalParameter { [ $1 ] }
	| formalParameters COMME formalParameter { $2::$1 }

formalParameter:
	| variableModifiers jtype variableDeclaratorId 
	{{
		var_modifiers = List.rev $1;
		var_type = $2;
		var_id = $3
	}}

variableModifiers:
	| variableModifier { [ $1 ] )
	| variableModifiers variableModifier{ $2::$1 }

variableModifier: 
	| FINAL { Final }

lastFormalParameter:
	| variableModifiers jtype variableDeclaratorId 
	{{
		 var_modifiers = List.rev $1;
		 var_type = $2;
		 var_id = $3
	}}
	| formalParameter { $1 }

(* 8.4.3 Method Modifiers *)
methodModifiers:
	| methodModifier { [ $1 ] }
	| methodModifiers methodModifier { $2::$1 }

methodModifier:
	| PUBLIC		{ Public } 
	| PROTECTED		{ Protected}
	| PRIVATE 		{ Private }
	| ABSTRACT 		{ Abstract }
	| STATIC 		{ Static }
	| FINAL 		{ Final }
	| SYNCHRONIZED 	{ Synchronized }
	| NATIVE 		{ Native }
	| STRICTFP 		{ Strictfp }

(* 8.4.6 Method Throws *)
throws:
	| THROWS exceptionTypeList { List.rev $2 }

exceptionTypeList:
	| exceptionType { [ $1 ] }
	| exceptionTypeList COMMA exceptionType { $2::$1 }

exceptionType:
	| classType { ClassType $1 }
	| typeVariable { TypeVariable $1 }

(* 8.4.7 Method Body *)
methodBody:
	| block { Block $1 }
	| SEMICOLON { EmptyBody }

(* 8.6 Instance Initializers *)
instanceInitializer:
	| block { $1 }

(* 8.7 Static Initializers *)
staticInitializer:
	| STATIC block { $2 }

(* 8.8 Constructor Declarations *)
constructorDeclaration:
	| constructorModifiers_opt constructorDeclarator throws_opt constructorBody
	{{ 
		constructor_modifiers = List.rev $1; 
		constructor_declarator = $2;
		constructor_throws = $3; 
		constructor_body = $4 
	}}

constructorDeclarator:
	| typeParameters_opt simpleTypename LPARENT formalParameterList_opt RPARENT 
	{{
		type_parameters = $1;
		simple_typename = $2;
		formal_parameter_list = $3 
	}}

(* 8.8.3 Constructor Modifiers *)
constructormodifiers:
	| constructormodifier { [ $1 ]}
	| constructormodifiers constructormodifier { $2::$1 }

constructormodifier:
	| PUBLIC 	{ Public }
	| PROTECTED { Protected }
	| PRIVATE	{ Private }

(* 8.8.7 Constructor Body *)
constructorBody:
	| LBRACE explicitConstructorInvocation_opt blockStatements_opt RBRACE 
	{{
		 explicit_constructor_invocation = $1;
		 block_statements = $2
	}}

(* 8.8.7.1 Explicit Constructor Invocations *)
explicitConstructorInvocation:
	| nonWildTypeArguments_opt THIS LPAREN argumentList_opt RPAREN EMICOLON {{ eci_nonWild_type_args = $1; eci_args = $4 }}
	| nonWildTypeArguments_opt SUPER LPAREN argumentList_opt RPAREN EMICOLON {{ eci_nonWild_type_Args = $1; eci_args = $4 }}
	| primary POINT nonWildTypeArguments_opt SUPER LPAREN argumentList_opt RPAREN SEMICOLON {{ eci_primary = $1; eci_nonWild_type_Args = $3; eci_args = $6 }}

nonWildTypeArguments_opt:
	| {[]}
	| nonWildTypeArguments (List.rev $1 }

nonWildTypeArguments:
	| INF referenceTypeList SUP { $2 }

referenceTypeList:
	| referenceType { [ $1 ] }
	| referenceTypeList COMMA referenceType { $2::$1 }

(* 8.9 Enums *)
enumDeclaration:
	| classModifiers_opt ENUM IDENT interfaces_opt enumBody 
	{{
		enum_modifiers = List.rev $1;
		emum_interfaces = $4;
		enum_body = $5
	}}

enumBody:
	| LBRACE enumConstants_opt COMMA enumBodyDeclarations_opt {{ enum_constants = $2; enum_body_declarations = $4}}
	| LBRACE enumConstants_opt enumBodyDeclarations_opt {{ enum_constants = $2; enum_body_declarations = $3}}

enumConstants_opt =
	| {[]}
	| enumConstants { List.rev $1 }

enumConstants:
	| enumConstant { [$1] }
	| enumConstants COMMA enumConstant { $3::$1 }

enumConstant:
	| annotations IDENT arguments_opt classBody_opt 
	{{ 
		enum_cons_annotations = $1; 
		enum_id = $2;
		enum_args = $3;
		enum_body = $4 
	}}

arguments:
	| LPAREN argumentList_opt RPAREN { $2 }

enumBodyDeclarations:
	| SEMICOLON classBodyDeclarations_opt { $2 }
