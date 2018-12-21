(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

%{
  open Java
%}
(* token declaration *)

(* java identifiers *)
%token CLASS

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
%token CLASS_MODIFIER

(* starting symbol *)

%start prog
%type < Java.lexeme > prog


%%

(* grammar definition*)
prog:
	| jc = javaCode  EOF { jc }
;

javaCode :
	| cd = classDeclaration { None }

(* class grammar *)

classDeclaration :
	| ncd = normalClassDeclaration { None }
(*| ed  = enumDeclaration { ed }  *)
 
normalClassDeclaration :
	| cms = CLASS_MODIFIER* CLASS IDENT cb = classBody { None }

(*classModifiers :
	| CLASS_MODIFIER { None }
	| cms = classModifiers CLASS_MODIFIER { None } *)
	
classBody:
	| LPAREN (* cbd = option(classBodyDeclarations) *) RPAREN   { None }

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
