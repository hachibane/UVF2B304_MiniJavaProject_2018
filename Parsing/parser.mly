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
%token ISEQUAL ISNOTEQUAL INFOREQUAL
%token SUPOREQUAL SUPEQUAL INFEQUAL
%token CONDOR CONDAND COND ANNOT
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
	| classDeclaration EOF {}

(* 8.1 Class Declaration *)
className :
  | identifier {}

classDeclaration :
	| normalClassDeclaration {}
	| enumDeclaration {}

normalClassDeclaration :
	| classModifiers_opt CLASS IDENT typeParameters_opt super_opt interfaces_opt classBody {}

typeParameters_opt:
	| {}
	| typeParameters {}

typeParameters:
	| INF typeParameter LBRACE COMME typeParameter RBRACE SUP {}

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
	| PUBLIC			{}
	| ABSTRACT			{}
	| STATIC			{}
	| PROTECTED			{}
	| PRIVATE			{}
	| FINAL				{}
	| STRICTFP			{}

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
	| implements interfaceTypeList {}

interfaceTypeList:
	| interfaceType {}
	| interfaceTypeList COMMA interfaceType {}

(* 8.1.6 Class Body and Member Declarations *)
classBody_opt:
	| {}
	| classBody {}
classBody :
	| LBRACE classBodyDeclarations_opt RBRACE {}

classBodyDeclarations_opt:
	| SEMICOLON {}
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
	| fieldDeclaration			{}
	| methodDeclaration			{}
	| classDeclaration			{}
	| interfaceDeclaration		{}
	| SEMICOLON					{}

(* 9.1 Interface Declarations *)
interfaceDeclaration:
	| normalInterfaceDeclaration {}
	| annotationTypeDeclaration {}

normalInterfaceDeclaration:
	| interfaceModifiers_opt INTERFACE identifier typeParameters_opt extendsInterfaces_opt interfaceBody {}

(* 9.1.3 Superinterfaces and Subinterfaces *)
extendsInterfaces_opt:
	| {}
	| extendsInterfaces {}

extendsInterfaces:
	| EXTENDS interfaceType {}
	| extendsInterfaces COMMA interfaceType {}

tnterfaceType:
	| typeDeclSpecifier typeArguments_opt {}

(* 9.1.4 Interface Body and Member Declarations *)
interfaceBody:
	| LBRACE interfaceMemberDeclarations_opt RBEACE {}

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
	| COMMA {}


(* 9.1.1 Interface Modifiers *)
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

(* 9.4 Abstract Method Declarations *)
abstractMethodDeclaration:
  | abstractMethodModifiers_opt typeParameters_opt resultType {}
  | methodDeclarator throws_opt SEMICOLON {}

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
	| PUBLIC		 { }
	| STATIC		 {}
	| PROTECTED	 {}
	| PRIVATE		 {}
	| FINAL			 {}
	| STRICTFP	 {}
	| TRANSIENT	 {}
	| VOLATILE {}

variableDeclarators:
	| variableDeclarator {}
	| variableDeclarators COMMA variableDeclarator {}

variableDeclarator:
	| variableDeclaratorId {}
	| variableDeclaratorId EQUAL variableInitializer {}

variableDeclaratorId:
	| IDENT {}
	| variableDeclaratorId LBRACK RBRACK {}

variableInitializer:
	| expression {}
	| arrayInitializer {}

(* 8.4 Method Declarations *)
methodDeclaration:
	| methodHeader methodBody {}

methodHeader:
	| methodModifiers_opt typeParameters_opt resultType methodDeclarator throws_opt {}

resultType:
	| ttype {}
	| VOID	 {}

methodDeclarator:
	| methodDeclarator LBRACK RBRACK {}
	| IDENT LPAREN formalParameterList_opt RPAREN {}

formalParameterList_opt:
	| {}
	| formalParameterList {}

(* 8.4.1 Formal Parameters *)
formalParameterList:
	| lastFormalParameter {}
	| formalParameters COMMA lastFormalParameter {}

formalParameters:
	| formalParameter {}
	| formalParameters COMME formalParameter {}

formalParameter:
	| variableModifiers ttype variableDeclaratorId {}

variableModifiers:
	| variableModifier {}
	| variableModifiers variableModifier {}

variableModifier:
	| FINAL {}

lastFormalParameter:
	| variableModifiers ttype variableDeclaratorId {}
	| formalParameter {}

(* 8.4.3 Method Modifiers *)
methodModifiers:
	| methodModifier {}
	| methodModifiers methodModifier {}

methodModifier:
	| PUBLIC		 {}
	| PROTECTED		 {}
	| PRIVATE 		 {}
	| ABSTRACT 		 {}
	| STATIC 		 {}
	| FINAL 		 {}
	| SYNCHRONIZED 	 {}
	| NATIVE 		 {}
	| STRICTFP 		 {}

(* 8.4.6 Method Throws *)
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

(* 8.8.3 Constructor Modifiers *)
constructorModifiers:
	| constructorModifier {}
	| constructorModifiers constructorModifier {}

constructorModifier:
	| PUBLIC 	 {}
	| PROTECTED {}
	| PRIVATE	 {}

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
	| classModifiers_opt ENUM IDENT interfaces_opt enumBody {}

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

elementValuePairs:
  | elementValuePair {}
  | elementValuePairs COMMA elementValuePair {}

elementValuePair:
	|  identifier EQUAL elementValue {}

elementValue:
	| conditionalExpression {}
	| annotation {}
	| elementValueArrayInitializer {}

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

(* 3.8  identifiers*)
 identifier:
	| IDENT {}

(* 3.9 Literals*)
literal:
	| integerLiteral {}
	| floatingPointLiteral {}
	| booleanLiteral {}
	| characterLiteral {}
	| stringLiteral {}
	| nullLiteral {}

integerLIteral:
	| decimalIntegerLiteral {}
	(*| hil=hexIntegerLiteral {}
	| oil=octalIntegerLiteral {}*)

decimalIntegerLiteral:
	 | decimalNumeral {}

(*hexIntegerLiteral:
	 hexn=hexNumeral {}

octalIntegerLiteral:
	 octn=octalNumeral {}*)

decimalNumeral:
	| ZERO {}
	| NZDIGIT dgs=digits? {}

digits:
	| digit {}
	| digits digit {}

digit:
	| ZERO {}
	| NZDIGIT {}

floatingPointLiteral:
	 | decimalFloatingPointLiteral {}

(* to complete with Exponent part e E*)
decimalFloatingPointLiteral:
	| digits POINT digits COND {}
	| POINT digits {}

booleanLiteral:
	| TRUE {}
	| FALSE {}

characterLiteral:
	| NOTDONE {}

stringLiteral:
	| IDENT {}

nullLiteral:
	| NULL {}

(* 4. Types, Values, and Variables*)

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

(*4.3 Reference Types and Values*)
referenceType:
	| classOrInterfaceType {}
	| typeVariable {}
	| arrayType {}

classOrInterfaceType:
	| classType {}
	| interfaceType {}

classType:
	| typeDeclSpecifier typeArguments? {}


interfaceType:
	| typeDeclSpecifier typeArguments COND {}

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


(* +++++++++++ 14 chapter ++++++++++++++++ * )
(* 14.2 *)
block:
	| LBRACE  blockStatements RBRACE {}
	| LBRACE RBRACE {}

blockStatements:
	| blockStatement {}
	| blockStatements blockStatement {}

blockStatement:
	| localVariableDeclarationStatement {}
	| CLASSDECLARATION {}
	| statement {}

(* 14.4 *)
localVariableDeclarationStatement:
	| localVariableDeclaration SEMICOLON {}

localVariableDeclaration:
	| variableModifiers TYPE variableDeclarators {}

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
	| postDecrementExpression {}
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
  | FOR LPAREN forInit SEMICOLON  expression SEMICOLON RPAREN snsi statementNoShortIf {}

forStatementNoShortIf6:
  | FOR LPAREN forInit SEMICOLON SEMICOLON forUpdate RPAREN statementNoShortIf {}

forStatementNoShortIf7:
  | FOR LPAREN SEMICOLON expression SEMICOLON forUpdate RPAREN statementNoShortIf {}

forStatementNoShortIf8:
  | FOR LPAREN forInit SEMICOLON expression SEMICOLON forUpdate RPAREN statementNoShortIf {}

forInit:
  | statementexpressionList {}
	| localVariableDeclaration {}

forUpdate:
  | statementExpressionList {}

statementExpressionList:
  | statementExpression {}
	| statementExpressionList COMMA statementExpression {}

enhancedForStatement:
  | FOR LPAREN TYPE  identifier COLON expression RPAREN statement {}
	| FOR LPAREN variableModifiers  TYPE identifier COLON  expression RPAREN  statement {}

(* 14.15 *)
breakStatement:
  | BREAK SEMICOLON {}
	| BREAK   identifier SEMICOLON {}

(* 14.16 *)
continueStatement:
  | CONTINUE SEMICOLON {}
	| CONTINUE identifier SEMICOLON {}

(* 14.17 *)
returnStatement:
  | RETURN SEMICOLON {}
	| RETURN  expression SEMICOLON {}

(* 14.18 *)
throwStatement:
  | THROW  expression SEMICOLON {}

(* 14.19 *)
synchronizedStatement:
  | SYNCHRONIZED LPAREN  expression RPAREN  block {}

(* 14.20 *)
tryStatement:
  | TRY  block  catches {}
	| TRY  block  finally {}
	| TRY  block  catches  finally {}

catches:
  | catchClause {}
  | catches  catchClause {}

catchClause:
  | CATCH LPAREN   formalParameter RPAREN  block {}

finally:
  | FINALLY  block {}

(* 15.9 Class Instance Creation Expressions
And now a new object took possession of my soul.
A Tale of the Ragged Mountains
A class instance creation expression is used to create new objects that are
instances of classes. *)
classInstanceCreationExpression:
  | NEW typeArguments_opt classOrInterfaceType LPAREN argumentList_opt RPAREN {}
  | classBody_opt {}
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
  | primary POINT identifier  {}
  | SUPER POINT identifier  {}
  | className POINT SUPER POINT identifier {}

(* 15.12 Method Invocation Expressions *)
methodInvocation:
	| methodName LPAREN argumentList_opt RPAREN primary POINT nonWildTypeArguments_opt
  identifier LPAREN argumentList_opt RPAREN super POINT nonWildTypeArguments_opt identifier
   LPAREN argumentList_opt RPAREN className POINT super POINT nonWildTypeArguments_opt identifier
    LPAREN argumentList opt RPAREN typeName POINT nonWildTypeArguments identifier LPAREN argumentList_opt RPAREN {}

(* 15.13 Array Access expressions *)
arrayAccess:
	| expressionName LBRACK expression BRACK {}
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
  | relationalExpression INFOREQUAL shiftExpression {}
  | relationalExpression SUPOREQUAL shiftExpression {}
  | relationalExpression instanceof referenceType {}

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

conditionalOrExpression:
  | conditionalAndExpression {}
  | conditionalOrExpression CONDOR conditionalAndExpression {}

(* 15.26 Assignment Operators *)
assignmentExpression:
	| conditionalExpression {}
	| assignment {}

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



(* 18.1 The Grammar of the Java Programming Language *)
annotationTypeDeclaration:
	| AROBAS INTERFACE identifier annotationTypeBody {}

annotationTypeBody:
	| LBRACE LBRACK annotationTypeElementDeclarations RBRACK RBRACE {}

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
