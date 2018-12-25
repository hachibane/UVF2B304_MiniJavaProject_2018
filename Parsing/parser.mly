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
%token ASSERT BREAK CASE CATCH CLASS CONST CONTINUE DEFAULT DO DEFAULT ELSE ENUM EXTENDS FINALLY FOR IF GOTO IMPLEMENTS IMPORT INSTANCEOF INTERFACE NEW PACKAGE RETURN SUPER SWITCH THIS THROW THROWS TRY VOID WHILE

(* Special Tokens *)
%token EOF
%token <string> IDENT
%token ZERO
%token NULL
%token NZDIGIT
%token <string> COMMENT


(* starting symbol *)

%start prog
%type < Java.classDec > prog

%%

prog:
	| classDeclaration EOF { $1 }

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
