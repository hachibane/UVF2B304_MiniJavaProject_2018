open Parser

let execute lexbuf verbose =
  try
    let ast = compilationUnit Lexer.token lexbuf in
    print_endline "It is working ! Youhou";
    TypeAST.type_program ast;
    let comp_data = Compiling.compile ast in
      CTYPE.print_CompData(comp_data);
      Execution.execute_program ast comp_data;
    
    if verbose then AST.print_program ast
  with
  	| CheckAST.Variable_exists(elem)                         -> CheckAST.print_variable_exists elem
  	| CheckAST.Unknown_variable(elem)                        -> CheckAST.print_unknown_variable elem
  	| CheckAST.Attribute_exists(attr)                        -> CheckAST.print_attribute_exists attr
  	| CheckAST.Unknown_attribute(elem, x)                    -> CheckAST.print_unknown_attribute elem x
 	  | CheckAST.Method_exists(name, typ, argstype)            -> CheckAST.print_method_exists name typ argstype
  	| CheckAST.Unknown_method(met, expr, str)                -> CheckAST.print_unknown_method met expr str
  	| CheckAST.Class_exists(c)                               -> CheckAST.print_class_exists c
  	| CheckAST.Unknown_class(c)                              -> CheckAST.print_unknown_class (String.concat "." c)
  	| CheckAST.Unknown_constructor(constructor, expr)        -> CheckAST.print_unknown_constructor (String.concat "." constructor) expr
  	| CheckAST.Wrong_types_declaration(x, y)                 -> CheckAST.print_wrong_types_declaration x y
  	| CheckAST.Wrong_type_unitary_operation(operator, x)     -> CheckAST.print_wrong_type_unitary_operation operator x
    | CheckAST.Wrong_types_operation(x, operator, y)         -> CheckAST.print_wrong_types_operation x operator y
		| CheckAST.Wrong_types_assign_operation(x, operator,  y) -> CheckAST.print_wrong_types_assign_operation x operator y    
    | CheckAST.Wrong_type_bool(b)                            -> CheckAST.print_wrong_type_bool b
    | CheckAST.Wrong_types_bool(b1, b2)                      -> CheckAST.print_wrong_types_bool b1 b2
    | CheckAST.Wrong_type_if(elem)                           -> CheckAST.print_wrong_type_if elem
    | CheckAST.Wrong_type_for(elem)                          -> CheckAST.print_wrong_type_for elem
    | CheckAST.Wrong_type_post(elem)                         -> CheckAST.print_wrong_type_post elem
    | CheckAST.Wrong_type_list(elem1, elem2)                 -> CheckAST.print_wrong_type_list elem1 elem2
    | CheckAST.Wrong_type_return(x, y)                       -> CheckAST.print_Wrong_type_return x y
    | CheckAST.Wrong_type_ref(x, y)                          -> CheckAST.print_Wrong_type_ref x y
    | CheckAST.Return_expression_no_type                     -> print_endline "Syntax error on return type"
    | Error ->
      print_string "Syntax error: ";
      Location.print (Location.curr lexbuf)
    | Error.Error(err,loc) ->
      Error.report_error err;
      Location.print loc
