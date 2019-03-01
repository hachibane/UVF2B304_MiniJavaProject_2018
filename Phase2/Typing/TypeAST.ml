open AST

let type_val v = 
  match v with
  | Boolean boolean -> Some(Type.Primitive(Type.Boolean))
  | Char carac      -> Some(Type.Primitive(Type.Char))
  | Int integer     -> Some(Type.Primitive(Type.Int))
  | String s        -> Some(Type.Ref({tpath=[]; tid="String"}))
  | Float f         -> Some(Type.Primitive(Type.Float))
  | Null            -> None

(*typing for an expression*)
(*match the type of the expression following the JavaDoc specification*)
let rec type_expression expr =
  match expr.edesc with
  | Pre(operation, exp)              -> type_expression exp; expr.etype <- exp.etype
  | Post(exp, operation)             -> type_expression exp; expr.etype <- exp.etype
  | Cast(tpe,expr)                   -> type_expression expr; expr.etype <- Some(tpe)
  | Instanceof(expr, tpe)            -> type_expression expr
  | Val v                            -> expr.etype <- type_val v
  | Type tpe                         -> expr.etype <- Some(tpe)
  | ClassOf tpe                      -> expr.etype <- Some(tpe)
  | AssignExp(expr1,operation,expr2) -> type_expression expr1; type_expression expr2; CheckAST.verify_assign_operation_type expr1.etype operation expr2.etype
  | Op(expr1, operation, expr2)      -> type_expression expr1; type_expression expr2; CheckAST.verify_operation_type expr1.etype operation expr2.etype; expr.etype <- expr1.etype
  | If(expr1, expr2, expr3)          -> type_expression expr1; type_expression expr2; type_expression expr3; CheckAST.verify_if_type expr1.etype
  | CondOp(expr1, expr2, expr3)      -> type_expression expr1; type_expression expr2; type_expression expr3; CheckAST.verify_tern_type expr1.etype expr2.etype expr3.etype; expr.etype <- expr2.etype
  | VoidClass                        -> ()

(*typing for a statement*)
let rec type_statement statement =
  match statement with
  | Expr expr                -> type_expression expr
  | Throw expr               -> type_expression expr
  | Return Some(expr)        -> type_expression expr
  | Block block              -> List.iter type_statement block
  | While(expr, st)          -> type_expression expr; type_statement st
  | If(expr, st, None)       -> type_expression expr; type_statement st; CheckAST.verify_if_type expr.etype
  | If(expr, st1, Some(st2)) -> type_expression expr; type_statement st1; type_statement st2; CheckAST.verify_if_type expr.etype
  | Return None              -> ()
  | Nop                      -> ()

let type_method met    = List.iter type_statement met.mbody
let type_class c       = List.iter type_method    c.cmethods

let type_type t =
  match t.info with
  | Class c -> type_class c
  | Inter   -> ()

let type_program prog = List.iter type_type prog.type_list