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
let rec type_expression scope expr =
  match expr.edesc with
  | NewArray(t, l, None)             -> expr.etype <- Some(Type.Array(t, List.length l))
  | NewArray(t, l, Some(exp))        -> expr.etype <- Some(Type.Array(t, List.length l))
  | ArrayInit(exp)                   -> List.iter (type_expression scope) exp;
                                        CheckAST.verify_array_types exp;
                                        expr.etype <- (match (List.hd exp).etype with
                                                       | Some(elem) -> Some(Type.Array(elem, 1)))

  | Name(elem)                       -> expr.etype <- if (Hashtbl.mem scope elem) <> true 
                                                      then raise(CheckAST.Unknown_variable(elem)) 
                                                      else Some(Hashtbl.find scope elem)
  | Pre(operation, exp)              -> type_expression scope exp; 
                                        CheckAST.verify_pre_type operation exp.etype;
                                        expr.etype <- exp.etype
  | Post(exp, operation)             -> type_expression scope exp;
                                        CheckAST.verify_post_type exp.etype;
                                        expr.etype <- exp.etype
  | Cast(tpe,expr)                   -> type_expression scope expr; 
                                        expr.etype <- Some(tpe)
  | Instanceof(expr, tpe)            -> type_expression scope expr
  | Val v                            -> expr.etype <- type_val v
  | Type tpe                         -> expr.etype <- Some(tpe)
  | ClassOf tpe                      -> expr.etype <- Some(tpe)
  | AssignExp(expr1,operation,expr2) -> type_expression scope expr1;
                                        type_expression scope expr2; 
                                        CheckAST.verify_assign_operation_type expr1.etype operation expr2.etype;
                                        expr.etype <- expr1.etype
  | Op(expr1, operation, expr2)      -> type_expression scope expr1;
                                        type_expression scope expr2; 
                                        CheckAST.verify_operation_type expr1.etype operation expr2.etype;
                                        (match operation with
                                        | Op_cor | Op_cand
                                        | Op_eq | Op_ne | Op_gt | Op_lt | Op_ge | Op_le -> expr.etype <- Some(Type.Primitive(Type.Boolean))
                                        | Op_or | Op_and | Op_xor
                                        | Op_shl | Op_shr | Op_shrr
                                        | Op_add | Op_sub | Op_mul | Op_div | Op_mod -> expr.etype <- expr1.etype)
  | VoidClass                        -> ()
  | If(expr1, expr2, expr3)          -> type_expression scope expr1;
                                        type_expression scope expr2; 
                                        type_expression scope expr3; 
                                        CheckAST.verify_if_type expr1.etype
  | CondOp(expr1, expr2, expr3)      -> type_expression scope expr1;
                                        type_expression scope expr2; 
                                        type_expression scope expr3;     
                                        CheckAST.verify_tern_type expr1.etype expr2.etype expr3.etype; 
                                        if expr2.etype <> None 
                                        then expr.etype <- expr2.etype 
                                        else expr.etype <- expr3.etype

let add_variable_scope scope elem typ = 
  if (Hashtbl.mem scope elem) <> true 
  then Hashtbl.add scope elem typ 
  else raise(CheckAST.Variable_name_exists(elem))


let type_var_declaration scope declaration =
  match declaration with
  | (x, elem, None)   -> add_variable_scope scope elem x
  | (x, elem, Some y) -> type_expression scope y;
                         if Some(x) <> y.etype 
                         then raise(CheckAST.Wrong_types_declaration(Some(x), y.etype)) 
                         else add_variable_scope scope elem x

(*typing for a statement*)
let rec type_statement scope statement =
  match statement with
  | VarDecl(l)               -> List.iter (type_var_declaration scope) l
  | Expr expr                -> type_expression scope expr
  | Throw expr               -> type_expression scope expr
  | Return Some(expr)        -> type_expression scope expr
  | Block block              -> let update_scope = Hashtbl.copy scope in
                                List.iter (type_statement update_scope) block;                              
  | While(expr, st)          -> type_expression scope expr;
                                type_statement scope st
  | If(expr, st, None)       -> type_expression scope expr; 
                                type_statement scope st; 
                                CheckAST.verify_if_type expr.etype
  | If(expr, st1, Some(st2)) -> type_expression scope expr; 
                                type_statement scope st1; 
                                type_statement scope st2; 
                                CheckAST.verify_if_type expr.etype
  | Return None              -> ()
  | Nop                      -> ()

let type_method met          = let scope = Hashtbl.create 20 in List.iter (type_statement scope) met.mbody
let type_class c             = List.iter type_method c.cmethods

let type_type t =
  match t.info with
  | Class c -> type_class c
  | Inter   -> ()

let type_program prog = List.iter type_type prog.type_list