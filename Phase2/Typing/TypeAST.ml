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

  | New(None, l, args)               -> List.iter (type_expression globalScope scope) args;
                                        let (last, lst) = ListII.extract_last l in
                                        if (Hashtbl.mem globalScope.classes last) <> true
                                        then raise(CheckAST.Unknown_class(l))
                                        else 
                                          (expr.etype <- let constructors = (Hashtbl.find globalScope.classes last).constructors in
                                          try
                                            List.iter (compare_arguments_constructor last args) (Hashtbl.find_all constructors last);
                                            raise(CheckAST.Unknown_constructor(l, args))
                                          with
                                            | Not_typed_argument -> raise(CheckAST.Argument_expression_no_type(last))
                                            | CheckAST.Constructor_exists(_, t, _) -> Some(t))

  | Call(None, str, l)               -> List.iter (type_expression globalScope scope) l;
                                        expr.etype <- type_call str l globalScope globalScope.current

  | Call(Some(exp), str, l)          -> List.iter (type_expression globalScope scope) l; 
                                        type_expression globalScope scope exp;
                                        (match exp with
                                          | { edesc = Name(id) } -> let cname = Type.stringOfOpt exp.etype in
                                                expr.etype <- type_call str l globalScope cname)
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
                                        type_assign globalScope expr1.etype operation expr2.etype;
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

  | Attr(exp, str)                    -> type_expression globalScope scope exp;
                                         (match exp with
                                          | { edesc = Name(id) } -> let cname = Type.stringOfOpt exp.etype in
                                            let attributes = (Hashtbl.find globalScope.classes cname).attributes in
                                            expr.etype <- (if Hashtbl.mem attributes str <> false
                                            then Some(Hashtbl.find attributes str)
                                            else raise(CheckAST.Unknown_attribute(str, cname))))

(* auxiliary functions for type statement *)
let insert_variable_scope scope elem typ = 
  if (Hashtbl.mem scope.vars elem) <> true 
  then Hashtbl.add scope.vars elem typ 
  else raise(CheckAST.Variable_exists(elem))

let insert_catch_arguments scope args = 
  if (Hashtbl.mem scope.vars args.pident) <> true
  then Hashtbl.add scope.vars args.pident args.ptype 
  else raise(CheckAST.Variable_exists(args.pident)) 

let type_var_declaration globalScope scope declaration =
  match declaration with
  | (x, elem, None)   -> insert_variable_scope scope elem x
  | (x, elem, Some y) -> type_expression globalScope scope y;
                         if Some(x) <> y.etype then 
                           (match x with 
                            | Type.Ref(apparent_typ) -> if y.etype <> None then 
                                                          (match y.etype with
                                                            | Some(Type.Ref(real_typ)) -> type_ref globalScope apparent_typ real_typ;
                                                                                          insert_variable_scope scope elem x
                                                            | _ -> raise(CheckAST.Wrong_types_declaration(Some(x), y.etype)))
                                                        else insert_variable_scope scope elem x
                            | _ -> raise(CheckAST.Wrong_types_declaration(Some(x), y.etype)))
                         else insert_variable_scope scope elem x

let type_for_declaration globalScope scope declaration = 
  match declaration with 
  | (Some(elem1), elem2, None)       -> insert_variable_scope scope elem2 elem1
  | (Some(elem1), elem2, Some elem3) -> type_expression globalScope scope elem3;
                                        if Some(elem1) <> elem3.etype 
                                        then raise(CheckAST.Wrong_types_declaration(Some(elem1), elem3.etype))
                                        else insert_variable_scope scope elem2 elem1

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
    | (arg, l) -> insert_catch_arguments catchScope arg; 
                  List.iter (type_statement globalScope catchScope) l

(*auxiliary functions for typing a prorgram*)
let compare_arguments arg1 arg2 = 
  if arg1.ptype <> arg2.ptype then raise(Different_arguments)

let compare_constructor_arguments elem args constructor = 
  if (List.length args) <> (List.length constructor.function_args) then ()
  else try
    List.iter2 compare_arguments args constructor.function_args;
    raise(CheckAST.Method_exists(elem, constructor.function_type, args))
  with
    | Different_arguments -> ()

let compare_method_arguments elem args met = 
  if (List.length args) <> (List.length met.function_args) then ()
  else
    try
      List.iter2 compare_arguments args met.function_args;
      raise(CheckAST.Method_exists(elem, met.function_type, args))
    with
      | Different_arguments -> ()

let insert_method globalScope met = 
  let meths = (Hashtbl.find globalScope.classes globalScope.current).methods in
  (if (Hashtbl.mem meths met.mname) <> true
  then Hashtbl.add meths met.mname {function_type = met.mreturntype; function_args = met.margstype}
  else
    (List.iter (compare_method_arguments met.mname met.margstype) (Hashtbl.find_all meths met.mname);
    Hashtbl.add meths met.mname {function_type = met.mreturntype; function_args = met.margstype}))

let insert_attribute globalScope attr = 
  if (Hashtbl.mem (Hashtbl.find globalScope.classes globalScope.current).attributes attr.aname) <> true
  then Hashtbl.add (Hashtbl.find globalScope.classes globalScope.current).attributes attr.aname attr.atype 
  else raise(CheckAST.Attribute_exists(attr.aname))

let insert_method_with_arguments scope args = 
  if (Hashtbl.mem scope.vars args.pident) <> true 
  then Hashtbl.add scope.vars args.pident args.ptype 
  else raise(CheckAST.Variable_exists(args.pident))

let insert_class globalScope c = List.iter (insert_method globalScope) c.cmethods;
  List.iter (insert_attribute globalScope) c.cattributes

let type_attribute globalScope attr = 
  match attr.adefault with
  | Some(exp) -> type_expression globalScope {return_type = Type.Void; vars = Hashtbl.create 1} exp; 
                  let typ = Some(attr.atype) in type_assign globalScope typ AST.Assign exp.etype
  | None -> ()

let type_method globalScope met  = 
  let scope = 
  {return_type = met.mreturntype; vars = Hashtbl.create 20} in 
  List.iter (insert_method_with_arguments scope) met.margstype;
  List.iter (type_statement globalScope scope) met.mbody

let insert_constructor_arguments scope args = 
  if (Hashtbl.mem scope.vars args.pident) <> true
  then Hashtbl.add scope.vars args.pident args.ptype
  else raise(CheckAST.Variable_exists(args.pident))

let type_constructor globalScope constructor = 
  let constScope = { return_type = Type.Ref({ tpath = []; tid = constructor.cname }); vars = Hashtbl.create 20 } in
  List.iter (insert_constructor_arguments constScope) constructor.cargstype;
  List.iter (type_statement globalScope constScope) constructor.cbody

let type_class globalScope constructor = 
  List.iter (type_method globalScope) constructor.cmethods; 
  List.iter (type_constructor globalScope) constructor.cconsts;
  List.iter (type_attribute globalScope) constructor.cattributes

let insert_constructor globalScope constructor = 
  let constructors = (Hashtbl.find globalScope.classes globalScope.current).constructors in
  (if (Hashtbl.mem constructors constructor.cname) <> true
  then Hashtbl.add constructors constructor.cname { function_type = Type.Ref({ tpath = []; tid = constructor.cname }); function_args = constructor.cargstype }
  else
    (List.iter (compare_constructor_arguments constructor.cname constructor.cargstype) (Hashtbl.find_all constructors constructor.cname);
    Hashtbl.add constructors constructor.cname { function_type = Type.Ref({ tpath = []; tid = constructor.cname }); function_args = constructor.cargstype }))



let type_type globalScope tp =
  match tp.info with
  | Class c -> globalScope.current <- tp.id;
               type_class globalScope c
  | Inter   -> ()

let insert_type globalScope tp =
  match tp.info with
  | Class c -> 
    if (Hashtbl.mem globalScope.classes tp.id) <> true
    then (globalScope.current <- tp.id; 
      Hashtbl.add globalScope.classes globalScope.current {attributes   = (Hashtbl.create 20); 
                                                           methods      = (Hashtbl.create 20);
                                                           constructors = (Hashtbl.create 20);
                                                           parent       = c.cparent })
    else 
      raise(CheckAST.Class_exists(tp.id)); 
      insert_class globalScope c
  | Inter -> ()


(* typing a program *)
let type_program prog = 
  let globalScope = { classes = Hashtbl.create 20; current = "" } in 
  List.iter (insert_type globalScope) prog.type_list;
  List.iter (type_type globalScope) prog.type_list
