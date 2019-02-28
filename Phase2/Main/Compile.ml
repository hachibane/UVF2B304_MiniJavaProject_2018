open Parser

let execute lexbuf verbose =
  try
    let ast = compilationUnit Lexer.token lexbuf in
    print_endline "It is working ! Youhou";
    TypeAST.type_program ast;
    if verbose then AST.print_program ast
  with
    | CheckAST.Wrong_types_operation(x, operator, y) -> CheckAST.print_wrong_types_operation x operator y
    | CheckAST.Wrong_type_bool(t)                    -> CheckAST.print_wrong_type_bool t
    | CheckAST.Wrong_types_bool(t1, t2)              -> CheckAST.print_wrong_types_bool t1 t2
    | Error ->
      print_string "Syntax error: ";
      Location.print (Location.curr lexbuf)
    | Error.Error(err,loc) ->
      Error.report_error err;
      Location.print loc
