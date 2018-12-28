(* basic types *)


type identifier = string

type value =
	| True
	| Null
	| False
	| Integer of int
	| Real of float

type varType =
	| Int
	| Float
	| Double
	| String
	| Bool

type modifier =
	| Public
	| Abstract
	| Static
	| Protected
	| Private
	| Volatile
	| Transient
	| Final
	| Strictfp
	| None


(* ----------------- 8.1 class typing  -------------------------*)

type classDec =
{
	class_modifiers : modifier list;
	class_name      : identifier;
	class_body      : classBodyDec list
}

and classBodyDec =
	| ClassMemberDec of classMemberDec


and classMemberDec =
	| FieldDec of fieldDec
	| ClassDec of classDec

and fieldDec =
{
	var_modifiers		: modifier list;
	var_type			: varType;
	var_declarators		: varDeclarator list
}

and varDeclarator =
	| VarDec of identifier
	| VarDecInit of { var_name : identifier; var_initializer : varInitializer}

and varInitializer =
	| Expression of expression





type classDeclaration =
	| normalClassDeclaration of normalClassDeclaration





	type classDeclaration :
		| NormalClassDeclaration of normalClassDeclaration
		| EnumDeclaration of enumDeclaration

	type normalClassDeclaration =
		{
			class_modifiers : modifier List;
			class_identifier: identifier;
			class_type_parameters : typeParameters;
			class_super : super;
			class_interfaces : interfaces;
			class_body : classBodyDeclaration List
		}

	(* 8.1.1 Class Modifiers *)


	(* 8.1.4 Superclasses and Subclasses *)
	type super = { super_extends : extends; super_classType : classType }

	(* 8.1.5 Superinterfaces *)
	type interfaces = { interfaces_implements : implements;  interface_type : interfaceType List }

	(* 8.1.6 Class Body and Member Declarations *)
	type classBodyDeclaration =
		| ClassMemberDeclaration of classMemberDeclaration
		| InstanceInitializerc of instanceInitializer
		| StaticInitializer of staticInitializer
		| ConstructorDeclaration of constructorDeclaration

	type classMemberDeclaration =
		| FieldDeclaration of fieldDeclaration
		| MethodDeclaration of methodDeclaration
		| ClassDeclaration classDeclaration
		| InterfaceDeclaration interfaceDeclaration
		| EmptyDeclaration

	(* 8.3 Field Declarations *)
	type fieldDeclaration =
		{
			field_modifiers : modifier List;
			field_jtype : jtype;
			field_var_declarators : variableDeclarator List
		}

	type variableDeclarator =
		| VariableDeclaratorId { var_id : identifier }
		| VariableDeclaratorIdInit { var_id : identifier; var_initializer : variableInitializer }

	type variableInitializer:
		| Expression of expression
		| ArrayInitializer of arrayInitializer

	(* 8.4 Method Declarations *)
	type methodDeclaration = { method_header : methodHeader; method_body : methodBody }

	type methodHeader:
		| methodModifiers_opt typeParameters_opt resultType  throws_opt
		{
			method_modifiers : modifier;
			typeParameters : typeParameters;
			result_type : resultType;
			methodDeclarator : methodDeclarator;
			methode_throws : throws
		}

	type resultType =
		| ResType of jtype
		| Void

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
		| variableModifier { [ $1 ] }
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

let print_varType vt =
	 match vt with
	| Float         -> print_string "float "
	| Int           -> print_string "int "
	| Double        -> print_string "double "
	| Bool          -> print_string "bool "

let print_value v =
	match v with
	| True          -> print_string "true"
	| False         -> print_string "false"
	| Null          -> print_string "null"

let print_modifier m =
	match m with
	| Public        -> print_string "public "
	| Abstract      -> print_string "abstract "
	| Static        -> print_string "static "
	| Protected     -> print_string "protected "
	| Private       -> print_string "private "
	| Final         -> print_string "final "
	| Strictfp      -> print_string "strictfp "

let rec print_javaCode jc =
	match jc with
	| classDec as c ->  List.iter print_modifier c.class_modifiers;
						print_string " class "; print_string c.class_name;
						print_string "{\n";
						List.iter print_body c.class_body;
						print_string "\n}"

and print_body b =
	match b with
	| ClassMemberDec cmd ->
		match cmd with
		| FieldDec fd -> List.iter print_modifier fd.var_modifiers;
						 print_varType fd.var_type;
						 let h::rest = fd.var_declarators in
						 print_string h.variable_name;
						 List.iter (fun vd-> print_string (", "^vd.variable_name)) rest;
						 print_string ";"
