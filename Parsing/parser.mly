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
%token ASSERT BREAK CASE CATCH CLASS CONST CONTINUE DEFAULT DO ELSE ENUM EXTENDS FINALLY FOR IF GOTO IMPLEMENTS IMPORT INSTANCEOF INTERFACE NEW PACKAGE RETURN SUPER SWITCH THIS THROW THROWS TRY VOID WHILE

(* Special Tokens *)
%token EOF
%token <string> IDENT
%token ZERO 
%token NULL
%token NZDIGIT
%token <string> COMMENT

(* rules not done yet *)
%token NOTDONE


(* Chapter 14 *)

(* token that are needeed from the previous or post sections *)


(* pre *)

%token CLASSDECLARATION
%token TYPE
%token VARIABLEMODIFIERS
%token VARIABLEDECLARATORS
%token IDENTIFIER
%token FORMALPARAMETER

%%

(* 10 *)

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

(* 14.2 *)

block:
		LBRACE bss = blockStatements RBRACE { " {\n"^bss^"\n}" }
  | LBRACE RBRACE { "{}"}

blockStatements:
		bs  = blockStatement                      { bs }
	| bss = blockStatements bs = blockStatement { bss^"\n" bs }

blockStatement:
		lvds = localVariableDeclarationStatement { lvds }
	| cd   = CLASSDECLARATION                  { cd }     
	| st   = statement                         { st }

(* 14.4 *)

localVariableDeclarationStatement:
		lvd = localVariableDeclaration SEMICOLON { lvd^";" }

localVariableDeclaration:
		vm = VARIABLEMODIFIERS t=TYPE vds = VARIABLEDECLARATORS { vm^" "^t^" "^vds }

(* 14.5 *)

statement:
		stwts = statementWithoutTrailingSubstatement { stwts }
	| lst   = labeledStatement                     { lst }
	| itst  = ifThenStatement                      { itst }
	| itest = ifThenElseStatement                  { itest }
	| wst   = whileStatement                       { wst }
	| fst   = forStatement                         { fst }

statementWithoutTrailingSubstatement:
		b     = block                 { b }
	| est   = emptyStatement        { est }
	| exst  = expressionStatement   { exst }
	| asst  = assertStatement       { asst }
	| swst  = switchStatement       { swst }
	| dost  = doStatement           { dost }
	| brst  = breakStatement        { brst }
	| cnst  = continueStatement     { cnst }
	| rnst  = returnStatement       { rnst }
	| szst  = synchronizedStatement { szst }
	| thst  = throwStatement        { thst }
	| tryst = tryStatement          { tryst }

statementNoShortIf:
		stwts    = statementWithoutTrailingSubstatement { stwts }
	| lstnsi   = labeledStatementNoShortIf            { lstnsi }
	| itestnsi = ifThenElseStatementNoShortIf         { itestnsi }
	| wstnsi   = whileStatementNoShortIf              { wstnsi }
  | fstnsi   = forStatementNoShortIf                { fstnsi }

(* 14.6 *)

emptyStatement:
		SEMICOLON { ";" }

(* 14.7 *)

labeledStatement:
		id = IDENTIFIER COLON st = statement { id^" : "^st }

labeledStatementNoShortIf:
		id = IDENTIFIER COLON stnsi = statementNoShortIf { id^" : "^stnsi }

(* 14.8 *)

expressionStatement:
		ste = statementExpression SEMICOLON { ste^" ;" }

statementExpression:
		a    = ASSIGNMENT                      { a }
	| prie = PREINCREMENTEXPRESSION          { prie } 
	| prde = PREDECREMENTEXPRESSION          { prde }
	| poie = POSTINCREMENTEXPRESSION         { poie }
	| pode = postDecrementExpression        { pode }
	| mi   = methodInvocation                { mi }
	| cice = classInstanceCreationExpression { cce }

(* 14.9 *)

ifThenStatement:
		IF LPAREN expr = EXPRESSION RPAREN st = statement { "if ("^expr^")\n"^s }

ifThenElseStatement:
		IF LPAREN expr = EXPRESSION RPAREN stnsi = statementNoShortIf ELSE st = statement { "if ("^expr^")\n"^stnsi^"\nelse\n"^st } 

ifThenElseStatementNoShortIf:
		IF LPAREN expr = EXPRESSION RPAREN stnsi1 = statementNoShortIf ELSE stnsi2 = statementNoShortIf { "if ("^expr^")\n"^stnsi1^"\nelse\n"^stnsi2 }

(* 14.10 *)

assertStatement:
		ASSERT expr = EXPRESSION SEMICOLON                           { "assert "^expr^" ;" }
	| ASSERT expr1 = EXPRESSION COLON expr2 = EXPRESSION SEMICOLON { "assert "^expr1^" : "^expr2^" ;" }

(* 14.11 *)

switchStatement:
		SWITCH LPAREN expr = EXPRESSION RPAREN sb = switchBlock { "switch ("^expr^") "^sb }

switchBlock:
		LBRACE RBRACE                                    { "{}" }
	| LBRACE sbstgs = switchBlockStatementGroups RBRACE { "{ "^sbstgs^"}" }
	| LBRACE sls    = switchLabels RBRACE { "{"^sls^"}" }
	| LBRACE sbstgs = switchBlockStatementGroups sls = switchLabels RBRACE { "{"^sbstgs^" "^sls^"}" }

switchBlockStatementGroups:
		sbstg  = switchBlockStatementGroup                                    { sbstg }
	| sbstgs = switchBlockStatementGroups sbstg = switchBlockStatementGroup { sbstgs^"\n"^sbstg }

switchBlockStatementGroup:
		sls = switchLabels bss = blockStatements { sls^"\n"^bss }

switchLabels:
		sl  = switchLabel                   { sl }
	| sls = switchLabels sl = switchLabel { sls^"\n"^sl }

switchLabel:
		CASE cexpr = CONSTANTEXPRESSION COLON { "case "^cexpr^" :" }
	| CASE ecn   = enumConstantName COLON   { "case "^ecn^" :" }
	| DEFAULT COLON { "default :" }

enumConstantName:
		id = IDENTIFIER { id }

(* 14.12 *)

whileStatement:
		WHILE LPAREN expr = EXPRESSION RPAREN st = statement { "while ("^expr^")\n"^st }

whileStatementNoShortIf:
		WHILE LPAREN expr = EXPRESSION RPAREN stnsi = statementNoShortIf { "while ("^expr^")\n"^stnsi }

(* 14.13 *)

doStatement:
		DO st = statement WHILE LPAREN expr = EXPRESSION RPAREN { "do\n"^st^"\nwhile ("^expr^")" }

(* 14.14 *)

forStatement:
		bfst = basicForStatement    { bfst }
	| efst = enhancedForStatement { efst }

basicForStatement:
		bfst1 = basicForStatement1 { bfst1 }
	|	bfst2 = basicForStatement2 { bfst2 }
	| bfst3 = basicForStatement3 { bfst3 }
	| bfst4 = basicForStatement4 { bfst4 }
	| bfst5 = basicForStatement5 { bfst5 }
	| bfst6 = basicForStatement6 { bfst6 }
	| bfst7 = basicForStatement7 { bfst7 }
	| bfst8 = basicForStatement8 { bfst8 }

basicForStatement1:
		FOR LPAREN SEMICOLON SEMICOLON RPAREN st = statement                                               { "for (;;)\n"^st }

basicForStatement2:
		FOR LPAREN fi = forInit SEMICOLON SEMICOLON RPAREN st = statement                                  { "for ("^fi^";;)\n"^st }

basicForStatement3:
		 FOR LPAREN SEMICOLON expr = EXPRESSION SEMICOLON RPAREN s = statement                             { "for (;"^expr^";)\n"^st }

basicForStatement4:
		FOR LPAREN SEMICOLON SEMICOLON fu = forUpdate RPAREN st = statement                                { "for (;;"^fu^")\n"^st }

basicForStatement5:
		FOR LPAREN fi = forInit SEMICOLON expr = EXPRESSION SEMICOLON RPAREN st = statement                { "for ("^fi^";"^expr^";)\n"^st }

basicForStatement6:
		FOR LPAREN fi = forInit SEMICOLON SEMICOLON fu = forUpdate RPAREN st = statement                   { "for ("^fi^";;"^fu^")\n"^st }

basicForStatement7:
		FOR LPAREN SEMICOLON expr = EXPRESSION SEMICOLON fu = forUpdate RPAREN st = statement              { "for (;"^expr^";"^fu^")\n"^st }

basicForStatement8:
		FOR LPAREN fi = forInit SEMICOLON expr = EXPRESSION SEMICOLON fu = forUpdate RPAREN st = statement { "for ("^fi^";"^expr^";"^fu^")\n"^st }

forStatementNoShortIf:
		fstnsi1 = forStatementNoShortIf1 { fstnsi1 }
	| fstnsi2 = forStatementNoShortIf2 { fstnsi2 }
	| fstnsi3 = forStatementNoShortIf3 { fstnsi3 } 
	| fstnsi4 = forStatementNoShortIf4 { fstnsi4 } 
	| fstnsi5 = forStatementNoShortIf5 { fstnsi5 }
	| fstnsi6 = forStatementNoShortIf6 { fstnsi6 }
	| fstnsi7 = forStatementNoShortIf7 { fstnsi7 }
	| fstnsi8 = forStatementNoShortIf8 { fstnsi8 }

forStatementNoShortIf1:
		FOR LPAREN SEMICOLON SEMICOLON RPAREN stnsi = statementNoShortIf                                               { "for (;;)\n"^snsi }

forStatementNoShortIf2:
		FOR LPAREN fi = forInit SEMICOLON SEMICOLON RPAREN stnsi = statementNoShortIf                                  { "for ("^fi^";;)\n"^stnsi }

forStatementNoShortIf3:
		FOR LPAREN SEMICOLON expr = EXPRESSION SEMICOLON RPAREN stnsi = statementNoShortIf                             { "for (;"^expr^";)\n"^stnsi }

forStatementNoShortIf4:
		FOR LPAREN SEMICOLON SEMICOLON fu = forUpdate RPAREN stnsi = statementNoShortIf                                { "for (;;"^fu^")\n"^stnsi }

forStatementNoShortIf5:
		FOR LPAREN fi = forInit SEMICOLON expr = EXPRESSION SEMICOLON RPAREN snsi = statementNoShortIf                 { "for ("^fi^";"^expr^";)\n"^stnsi }

forStatementNoShortIf6:
		FOR LPAREN fi = forInit SEMICOLON SEMICOLON fu = forUpdate RPAREN stnsi = statementNoShortIf                   { "for ("^fi^";;"^fu^")\n"^stnsi }

forStatementNoShortIf7:
		FOR LPAREN SEMICOLON expr = EXPRESSION SEMICOLON fu = forUpdate RPAREN stnsi = statementNoShortIf              { "for (;"^expr^";"^fu^")\n"^stnsi }		

forStatementNoShortIf8:
		FOR LPAREN fi = forInit SEMICOLON expr = EXPRESSION SEMICOLON fu = forUpdate RPAREN stnsi = statementNoShortIf { "for ("^fi^";"^expr^";"^fu^")\n"^stnsi }


forInit:
		stexprl = statementExpressionList  { stexprl }
	| lvd     = localVariableDeclaration { lvd }

forUpdate:
		stexprl = statementExpressionList { stexprl }

statementExpressionList:
		stexpr = statementExpression                                         { stexpr }
	| stexprl = statementExpressionList COMMA stexpr = statementExpression { stexprl^" , "^stexpr }

enhancedForStatement:
		FOR LPAREN t = TYPE id = IDENTIFIER COLON expr = EXPRESSION RPAREN st = statement                        { "for ("^t^" "^id^" : "^expr^")\n"^st }
	| FOR LPAREN vm = VARIABLEMODIFIERS t = TYPE id = IDENTIFIER COLON expr = EXPRESSION RPAREN st = statement { "for ("^vm^" "^t^" "^id^" : "^expr^")\n"^st }

(* 14.15 *)

breakStatement:
		BREAK SEMICOLON                    { "break ;" }
	| BREAK id = IDENTIFIER SEMICOLON    { "break "^id^" ;" }

(* 14.16 *)

continueStatement:
		CONTINUE SEMICOLON                 { "continue ;" }
	| CONTINUE id = IDENTIFIER SEMICOLON { "continue "^id^" ;" }


(* 14.17 *)

returnStatement:
		RETURN SEMICOLON                   { "return ;" }
	| RETURN expr = EXPRESSION SEMICOLON { "return "^expr^" ;" }

(* 14.18 *)
throwStatement:
		THROW expr = EXPRESSION SEMICOLON  { "throw "^expr^" ;" }

(* 14.19 *)
synchronizedStatement:
		SYNCHRONIZED LPAREN expr = EXPRESSION RPAREN b = block { "synchronized ("^e^")"\n^b }

(* 14.20 *)

tryStatement:
		TRY b = block cs = catches              { "try \n"^b^"\n"^cs }
	| TRY b = block fn = finally              { "try \n"^b^"\n"^fn }
	| TRY b = block cs = catches fn = finally { "try \n"^b^"\n"^cs^"\n"fn }

catches:
		cc = catchClause              { cc }
	| cs = catches cc = catchClause { cs^"\n"^cc }

catchClause:
		CATCH LPAREN fparam = FORMALPARAMETER RPAREN b = block { "catch ("^fparam^")\n"^b }

finally:
		FINALLY b = block { "finally\n"^b }



(* 15.9 Class Instance Creation Expressions *)
classInstanceDecl:
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
	| methodName LPAREN argumentList_opt RPAREN primary POINT nonWildTypeArguments_opt
  identifier LPAREN argumentList_opt RPAREN super POINT nonWildTypeArguments_opt identifier
   LPAREN argumentList_opt RPAREN className POINT super POINT nonWildTypeArguments_opt identifier
    LPAREN argumentList_opt RPAREN typeName POINT nonWildTypeArguments identifier LPAREN argumentList_opt RPAREN {}

(* 15.13 Array Access expressions *)
arrayAccess:
	| expressionName LBRACK expression RBRACK {}
	| primaryNoNewArray LBRACK expression RBRACK {}

(* 15.14 Postfix expressions *)
postfixExpression:
	| primary {}
	| expressionName {}
	| postIncrementExpression {}
	| postDecrementExpression{}

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

%%