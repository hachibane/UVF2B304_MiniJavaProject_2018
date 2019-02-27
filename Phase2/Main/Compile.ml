open Parser

let execute lexbuf verbose =
  try
    let ast = compilationUnit Lexer.token lexbuf in
    print_endline "successfull parsing";
    TypeAST.type_program ast;
    if verbose then AST.print_program ast
  with
    | CheckAST.Wrong_types_aop(x, operator, y) ->
      print_string ("The operator " ^ (AST.string_of_assign_op operator));
      print_string ("needs two values of the same type");
      print_string ("but he had : " ^ (CheckAST.stringOf_prim x));
      print_endline ("and : " ^ (CheckAST.stringOf_prim y))
    | Error ->
      print_string "Syntax error: ";
      Location.print (Location.curr lexbuf)
    | Error.Error(err,loc) ->
      Error.report_error err;
      Location.print loc
