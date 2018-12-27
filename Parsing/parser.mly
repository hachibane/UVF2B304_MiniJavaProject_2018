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

%token CLASSDECLARATION
%token TYPE
%token VARIABLEMODIFIERS
%token VARIABLEDECLARATORS
%token IDENTIFIER

%%

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
		a    = assignment                      { a }
	| prie = preIncrementExpression          { prie } 
	| prde = preDecrementExpression          { prde }
	| poie = postIncrementExpression         { poie }
	| pode = postDecrementExpression         { pode }
	| mi   = methodInvocation                { mi }
	| cice = classInstanceCreationExpression { cce }

(* 14.9 *)

ifThenStatement:
		IF LPAREN expr = expression RPAREN st = statement { "if ("^expr^")\n"^s }

ifThenElseStatement:
		IF LPAREN expr = expression RPAREN stnsi = statementNoShortIf ELSE st = statement { "if ("^expr^")\n"^stnsi^"\nelse\n"^st } 

ifThenElseStatementNoShortIf:
		IF LPAREN expr = expression RPAREN stnsi1 = statementNoShortIf ELSE stnsi2 = statementNoShortIf { "if ("^expr^")\n"^stnsi1^"\nelse\n"^stnsi2 }

(* 14.10 *)

assertStatement:
		ASSERT expr = expression SEMICOLON                           { "assert "^expr^" ;" }
	| ASSERT expr1 = expression COLON expr2 = expression SEMICOLON { "assert "^expr1^" : "^expr2^" ;" }

(* 14.11 *)

switchStatement:
		SWITCH LPAREN expr = expression RPAREN sb = switchBlock { "switch ("^expr^") "^sb }

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
		CASE cexpr = constantExpression COLON { "case "^cexpr^" :" }
	| CASE ecn   = enumConstantName COLON   { "case "^ecn^" :" }
	| DEFAULT COLON { "default :" }

enumConstantName:
		id = IDENTIFIER { id }

(* 14.12 *)

whileStatement:
		WHILE LPAREN expr = expression RPAREN st = statement { "while ("^expr^")\n"^st }

whileStatementNoShortIf:
		WHILE LPAREN expr = expression RPAREN stnsi = statementNoShortIf { "while ("^expr^")\n"^stnsi }

(* 14.13 *)

doStatement:
		DO st = statement WHILE LPAREN expr = expression RPAREN { "do\n"^st^"\nwhile ("^expr^")" }

(* 14.14 *)

forStatement:
		bfst = basicForStatement    { bfst }
	| efst = enhancedForStatement { efst }



%%