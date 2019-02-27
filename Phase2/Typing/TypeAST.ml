open AST

(*typing for a value*)
(*check all the possible type for the value val and apply the associated Type.Primitive*)
let type_val val =
  match val with
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
  | Pre(operation, expr)             -> type_expression expr
  | Post(expr, operation)            -> type_expression expr
  | Cast(tpe,expr)                   -> type_expression expr
  | Instanceof(expr, tpe)            -> type_expression expr
  | Val val                          -> expression.etype <- type_val val
  | AssignExp(expr1,operation,expr2) -> type_expression expr1; type_expression expr2
  | Op(expr1, operation, expr2)      -> type_expression expr1; type_expression expr2
  | If(expr1, expr2, expr3)          -> type_expression expr1; type_expression expr2; type_expression expr3
  | CondOp(expr1, expr2, expr3)      -> type_expression expr1; type_expression expr2; type_expression expr3
  | Type tpe                         -> ()
  | ClassOf tpe                      -> ()
  | VoidClass                        -> ()

(*typing for a statement*)
let rec type_statement statement =
  match statement with
  | Expr expr                -> type_expression expr
  | Throw expr               -> type_expression expr
  | Return Some(expr)        -> type_expression expr
  | Block block              -> List.iter type_statement block
  | If(expr, st, None)       -> type_expression expr; type_statement st
  | While(expr, st)          -> type_expression expr; type_statement st
  | If(expr, st1, Some(st2)) -> type_expression expr; type_statement st1; type_statement st2
  | Return None              -> ()
  | Nop                      -> ()

let type_method method = List.iter type_statement m.mbody

let type_class c = List.iter type_method c.cmethods

let type_type t =
  match t.info with
  | Class c -> type_class c
  | Inter   -> ()

let type_program p = List.iter type_type p.type_list