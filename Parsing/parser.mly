(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

%{
  open Java
%}
(* token declaration *)

(* java identifiers *)
%token CLASS 
%token <string> CLASS_MODIFIER

(* values *)


%token <float> FLOAT
%token <string> STRING
%token <int> INT
%token TRUE
%token FALSE
%token NULL

(* delimiters *)

%token POINT
%token SEMICOLON
%token COMMA
%token COLON
%token LBRACE
%token RBRACE
%token LPAREN
%token RPAREN
%token LBRACK
%token RBRACK
%token EOF

(* other *)
%token <string> IDENT 


(* starting symbol *)

%start prog
%type < Java.javaCode > prog

%%

(* grammar definition*)
prog:
	| classDeclaration EOF { $1 }
;

(* class grammar *)

classDeclaration :
	| normalClassDeclaration { $1 }

 
normalClassDeclaration :
	| classModifiers CLASS IDENT classBody { ClassDeclaration($1, $3, $4) }

classModifiers :
	| CLASS_MODIFIER { ClassModifier $1  }
	| CLASS_MODIFIER classModifiers  { ClassModifiers( $1, $2 ) } 
	
classBody:
	| LBRACE (* cbd = option(classBodyDeclarations) *) RBRACE { ClassBody "to finish" }

(*	
classBodyDeclarations:
	| classBodyDeclaration
	| classBodyDeclarations classBodyDeclaration

classBodyDeclaration:
	| classMemberDeclaration
	| instanceInitializer
	| StaticInitializer
	| constructorDeclaration

classMemberDeclaration:	
	| fieldDeclaration
	| methodDeclaration
	| classDeclaration
(*| InterfaceDeclaration*)
;
*)
value :
  | s = STRING { String s }
  | i = INT    { Int i }
  | x = FLOAT  { Float x }
  | NULL       { Null }
  | TRUE       { Bool true }
  | FALSE      { Bool false }
%%
