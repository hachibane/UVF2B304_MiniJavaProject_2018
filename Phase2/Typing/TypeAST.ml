open AST
open AUX

(*typing for an expression*)
(*match the type of the expression*)
let rec type_expression globalScope scope expr =
  match expr.edesc with
  | New(None, l, [])                 -> let (last, lst) = ListII.extract_last l in
                                        if (Hashtbl.mem globalScope.classes last) <> false
                                        then expr.etype <- Some(Type.Ref({ tpath = lst ; tid = last }))
                                        else raise(CheckAST.Unknown_class(l))
  | Call(None, str, l)               -> List.iter (type_expression globalScope scope) l;
                                        expr.etype <- let met = (Hashtbl.find globalScope.classes globalScope.current).methods in
                                        if (Hashtbl.mem met str) <> true
                                        then raise(CheckAST.Unknown_method(str))
                                        else 
                                          (try 
                                            List.iter (compare_arguments_method str l) (Hashtbl.find_all met str);
                                            raise(CheckAST.Unknown_method(str))
                                           with 
                                           | Not_typed_argument                 -> raise(CheckAST.Argument_expression_no_type(str))
                                           | CheckAST.Method_exists(_, elem, _) -> Some(elem))
                                       
  | NewArray(t, l, None)             -> expr.etype <- Some(Type.Array(t, List.length l))
  | NewArray(t, l, Some(exp))        -> expr.etype <- Some(Type.Array(t, List.length l))
  | ArrayInit(exp)                   -> List.iter (type_expression globalScope scope) exp;
                                        CheckAST.verify_array_types exp;
                                        expr.etype <- (match (List.hd exp).etype with
                                                       | Some(elem) -> Some(Type.Array(elem, 1)))

  | Name(elem)                       -> expr.etype <- if (Hashtbl.mem scope.vars elem) <> true then
                                        (if (Hashtbl.mem (Hashtbl.find globalScope.classes globalScope.current).attributes elem) <> true
                                         then raise(CheckAST.Unknown_variable(elem))
                                         else Some(Hashtbl.find (Hashtbl.find globalScope.classes globalScope.current).attributes elem))
                                         else Some(Hashtbl.find scope.vars elem)
  | Pre(operation, exp)              -> type_expression globalScope scope exp; 
                                        CheckAST.verify_pre_type operation exp.etype;
                                        expr.etype <- exp.etype
  | Post(exp, operation)             -> type_expression globalScope scope exp;
                                        CheckAST.verify_post_type exp.etype;
                                        expr.etype <- exp.etype
  | Cast(tpe,expr)                   -> type_expression globalScope scope expr; 
                                        expr.etype <- Some(tpe)
  | Instanceof(expr, tpe)            -> type_expression globalScope scope expr
  | Val v                            -> expr.etype <- type_val v
  | Type tpe                         -> expr.etype <- Some(tpe)
  | ClassOf tpe                      -> expr.etype <- Some(tpe)
  | AssignExp(expr1,operation,expr2) -> type_expression globalScope scope expr1;
                                        type_expression globalScope scope expr2; 
                                        CheckAST.verify_assign_operation_type expr1.etype operation expr2.etype;
                                        expr.etype <- expr1.etype
  | Op(expr1, operation, expr2)      -> type_expression globalScope scope expr1;
                                        type_expression globalScope scope expr2; 
                                        CheckAST.verify_operation_type expr1.etype operation expr2.etype;
                                        (match operation with
                                        | Op_cor | Op_cand
                                        | Op_eq | Op_ne | Op_gt | Op_lt | Op_ge | Op_le -> expr.etype <- Some(Type.Primitive(Type.Boolean))
                                        | Op_or | Op_and | Op_xor
                                        | Op_shl | Op_shr | Op_shrr
                                        | Op_add | Op_sub | Op_mul | Op_div | Op_mod -> expr.etype <- expr1.etype)
  | VoidClass                        -> ()
  | If(expr1, expr2, expr3)          -> type_expression globalScope scope expr1;
                                        type_expression globalScope scope expr2; 
                                        type_expression globalScope scope expr3; 
                                        CheckAST.verify_if_type expr1.etype
  | CondOp(expr1, expr2, expr3)      -> type_expression globalScope scope expr1;
                                        type_expression globalScope scope expr2; 
                                        type_expression globalScope scope expr3;     
                                        CheckAST.verify_tern_type expr1.etype expr2.etype expr3.etype; 
                                        if expr2.etype <> None 
                                        then expr.etype <- expr2.etype 
                                        else expr.etype <- expr3.etype

(* auxiliary functions for type statement *)
let add_variable_scope scope elem typ = 
  if (Hashtbl.mem scope.vars elem) <> true 
  then Hashtbl.add scope.vars elem typ 
  else raise(CheckAST.Variable_exists(elem))

let add_catch_arguments scope args = 
  if (Hashtbl.mem scope.vars args.pident) <> true
  then Hashtbl.add scope.vars args.pident args.ptype 
  else raise(CheckAST.Variable_exists(args.pident)) 

let type_var_declaration globalScope scope declaration =
  match declaration with
  | (x, elem, None)   -> add_variable_scope scope elem x
  | (x, elem, Some y) -> type_expression globalScope scope y;
                         if Some(x) <> y.etype 
                         then raise(CheckAST.Wrong_types_declaration(Some(x), y.etype)) 
                         else add_variable_scope scope elem x

let type_for_declaration globalScope scope declaration = 
  match declaration with 
  | (Some(elem1), elem2, None)       -> add_variable_scope scope elem2 elem1
  | (Some(elem1), elem2, Some elem3) -> type_expression globalScope scope elem3;
                                        if Some(elem1) <> elem3.etype 
                                        then raise(CheckAST.Wrong_types_declaration(Some(elem1), elem3.etype))
                                        else add_variable_scope scope elem2 elem1

(*typing for a statement*)
let rec type_statement globalScope scope statement =
  match statement with
  | Nop                          -> ()
  | VarDecl(l)                   -> List.iter (type_var_declaration globalScope scope) l
  | Expr expr                    -> type_expression globalScope scope expr
  | Throw expr                   -> type_expression globalScope scope expr
  | Return Some(expr)            -> type_expression globalScope scope expr; 
                                    CheckAST.verify_return_type scope.return_type expr.etype
  | Block block                  -> let update_scope = 
                                    {return_type = scope.return_type; vars = Hashtbl.copy scope.vars} in 
                                    List.iter (type_statement globalScope update_scope) block                             
  | While(expr, st)              -> type_expression globalScope scope expr;
                                    type_statement globalScope scope st
  | If(expr, st, None)           -> type_expression globalScope scope expr; 
                                    type_statement globalScope scope st; 
                                    CheckAST.verify_if_type expr.etype
  | If(expr, st1, Some(st2))     -> type_expression globalScope scope expr; 
                                    type_statement globalScope scope st1; 
                                    type_statement globalScope scope st2; 
                                    CheckAST.verify_if_type expr.etype
  | Return None                  -> if scope.return_type <> Type.Void 
                                    then raise(CheckAST.Wrong_type_return(scope.return_type, Type.Void))
  | For(elem, None, exps, s)     -> let forScope = {return_type = scope.return_type; vars = Hashtbl.copy scope.vars} in
                                    List.iter (type_for_declaration globalScope forScope) elem;
                                    List.iter (type_expression globalScope forScope) exps; 
                                    type_statement globalScope forScope s
  | For(elem, Some(exp), exps, s)-> let forScope = {return_type = scope.return_type; vars = Hashtbl.copy scope.vars} in
                                    List.iter (type_for_declaration globalScope forScope) elem;
                                    type_expression globalScope forScope exp; 
                                    CheckAST.verify_for_expr exp.etype;
                                    List.iter (type_expression globalScope forScope) exps; 
                                    type_statement globalScope forScope s
  | Try(st1, elem, st2)          -> List.iter(type_statement globalScope scope) st1;
                                    List.iter(type_statement globalScope scope) st2;
                                    List.iter (type_catch_declaration globalScope scope) elem

and type_catch_declaration globalScope scope catch = 
  let catchScope = {return_type = scope.return_type; vars = Hashtbl.copy scope.vars} in
  match catch with
    | (arg, l) -> add_catch_arguments catchScope arg; 
                  List.iter (type_statement globalScope catchScope) l

(*auxiliary functions for typing a prorgram*)
let compare_arg a b = 
  if a.ptype <> b.ptype then raise(Different_arguments)

let compare_method_args elem args met = 
  if (List.length args) <> (List.length met.function_args) then ()
  else
    try
      List.iter2 compare_arg args met.function_args;
      raise(CheckAST.Method_exists(elem, met.function_type, args))
    with
      | Different_arguments -> ()

let add_method globalScope met = 
  let meths = (Hashtbl.find globalScope.classes globalScope.current).methods in
  (if (Hashtbl.mem meths met.mname) <> true
  then Hashtbl.add meths met.mname {function_type = met.mreturntype; function_args = met.margstype}
  else
    (List.iter (compare_method_args met.mname met.margstype) (Hashtbl.find_all meths met.mname);
    Hashtbl.add meths met.mname {function_type = met.mreturntype; function_args = met.margstype}))

let add_attribute globalScope attr = 
  if (Hashtbl.mem (Hashtbl.find globalScope.classes globalScope.current).attributes attr.aname) <> true
  then Hashtbl.add (Hashtbl.find globalScope.classes globalScope.current).attributes attr.aname attr.atype 
  else raise(CheckAST.Attribute_exists(attr.aname))

let add_method_with_arguments scope args = 
  if (Hashtbl.mem scope.vars args.pident) <> true 
  then Hashtbl.add scope.vars args.pident args.ptype 
  else raise(CheckAST.Variable_exists(args.pident))

let add_class globalScope c = List.iter (add_method globalScope) c.cmethods;
  List.iter (add_attribute globalScope) c.cattributes

let type_method globalScope met  = 
  let scope = 
  {return_type = met.mreturntype; vars = Hashtbl.create 20} in 
  List.iter (add_method_with_arguments scope) met.margstype;
  List.iter (type_statement globalScope scope) met.mbody

let type_class globalScope c = 
  List.iter (add_method globalScope) c.cmethods;
  List.iter (add_attribute globalScope) c.cattributes;
  List.iter (type_method globalScope) c.cmethods 

let type_type globalScope tp =
  match tp.info with
  | Class c -> globalScope.current <- tp.id;
               type_class globalScope c
  | Inter   -> ()

let add_type globalScope tp =
  match tp.info with
  | Class c -> 
    if (Hashtbl.mem globalScope.classes tp.id) <> true
    then (globalScope.current <- tp.id; 
      Hashtbl.add globalScope.classes globalScope.current {attributes = (Hashtbl.create 20); 
      methods = (Hashtbl.create 20)})
    else 
      raise(CheckAST.Class_exists(tp.id)); 
      add_class globalScope c
  | Inter -> ()


(* typing a program *)
let type_program prog = 
  let globalScope = { classes = Hashtbl.create 20; current = "" } in 
  List.iter (add_type globalScope) prog.type_list;
  List.iter (type_type globalScope) prog.type_list