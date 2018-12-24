(* @authors : Robin You - Achibane Hamza - Hamza Sahri - Khaled Bousrih - Khalid Majdoub *)

%{
  open Java
%}
(* token declaration *)
(* operators *)
%token EQUAL MINUS PLUS MUL DIV 

(* keywords *)
%token TRUE FALSE NULL
%token CLASS STRUCT

(* Modifiers *)
%token PUBLIC ABSTRACT STATIC PROTECTED 
%token PRIVATE VOLATILE STRICTFP FINAL
%token TRANSIENT
(* var types *)
%token FLOAT INT BOOL DOUBLE

(* values *)
%token <float> REAL
%token <string> STRING
%token <int> INTEGER

(* delimiters *)
%token POINT SEMICOLON COMMA COLON
%token LBRACE RBRACE LPAREN RPAREN
%token LBRACK RBRACK EOF

(* other *)
%token <string> IDENT 


(* starting symbol *)

%start prog
%type < Java.classDec > prog

%%

prog:
	| classDeclaration EOF { $1 }

(* class grammar *)
classDeclaration :
	| normalClassDeclaration { $1 }

normalClassDeclaration :
	| classModifiers CLASS IDENT classBody 
	{{  
		class_modifiers = $1;
		class_name      = $3;
		class_body      = $4 
	}}

classModifiers:
	| { [] }
	| classModifier                { [ $1 ] }
	| classModifiers classModifier { $2::$1 }

classModifier :
	| PUBLIC		{  Public    }
	| ABSTRACT		{  Abstract  }
	| STATIC		{  Static    }
	| PROTECTED		{  Protected } 
	| PRIVATE		{  Private   }
	| FINAL			{  Final     } 
	| STRICTFP		{  Strictfp  }

classBody :
	| LBRACE classBodyDeclarations RBRACE { $2 }
	
classBodyDeclarations:
	| SEMICOLON { [] }
	| classBodyDeclaration { [ $1 ] }
	| classBodyDeclarations classBodyDeclaration { $2::$1 }

classBodyDeclaration:
	| classMemberDeclaration { ClassMemberDec $1 }

classMemberDeclaration:	
	| fieldDeclaration { FieldDec $1 }

fieldDeclaration:
	| fieldModifiers varType variableDeclarators SEMICOLON 
	{{ 
		var_modifiers = $1;
		var_type = $2;
		var_declarators = $3
	}}

varType :
	| FLOAT		{ Float }
	| INT		{ Int }
	| DOUBLE	{ Double }
	| BOOL	 	{ Bool }
	| STRING	{ String }
  
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
	| IDENT { { variable_name = $1 } }
(*	| IDENT EQUAL (*variableInitializer*) {  } 


variableInitializer:
	| expression   { $1 }
	| arrayInitializer { $1 } 
*)
value :
  | s = STRING { String s }
  | i = INT    { Int i }
  | x = FLOAT  { Float x }
  | NULL       { Null }
  | TRUE       { Bool true }
  | FALSE      { Bool false } 
%%
