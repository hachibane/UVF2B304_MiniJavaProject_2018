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

(* token that are needeed from the previous sections *)

%token CLASSDECLARATION
%token TYPE
%token VARIABLEMODIFIERS
%token VARIABLEDECLARATORS

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

%%