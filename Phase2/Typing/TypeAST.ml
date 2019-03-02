open AST

type scope = {
  returntype: Type.t;
  vars: (string, Type.t) Hashtbl.t
}

type class_scope = 
{
  methods    : (string, Type.t) Hashtbl.t ;
  attributes : (string, Type.t) Hashtbl.t
}

type gscope = 
{
  classes         : (string, class_scope) Hashtbl.t ;
  mutable current : string
}

let type_val v = 
  match v with
  | Boolean boolean -> Some(Type.Primitive(Type.Boolean))
  | Char carac      -> Some(Type.Primitive(Type.Char))
  | Int integer     -> Some(Type.Primitive(Type.Int))
  | String s        -> Some(Type.Ref({tpath=[]; tid="String"}))
  | Float f         -> Some(Type.Primitive(Type.Float))
  | Null            -> None

(*typing for an expression*)
(*match the type of the expression*)
let rec type_expression globalScope scope expr =
  match expr.edesc with
  | New(None, l, [])                 ->   (*of string option * string list * expression list*)
                                        let (last, lst) = ListII.extract_last l in
                                        if (Hashtbl.mem globalScope.classes last) <> false
                                        then expr.etype <- Some(Type.Ref({ tpath = lst ; tid = last }))
                                        else raise(CheckAST.Unknown_class(l))
  | Call(None, str, l)               -> List.iter (type_expression globalScope scope) l;
                                        expr.etype <- if (Hashtbl.mem (Hashtbl.find globalScope.classes globalScope.current).methods str) <> true
                                        then raise(CheckAST.Unknown_method(str))
                                        else Some(Hashtbl.find (Hashtbl.find globalScope.classes globalScope.current).methods str)
  | NewArray(t, l, None)             -> expr.etype <- Some(Type.Array(t, List.length l))
  | NewArray(t, l, Some(exp))        -> expr.etype <- Some(Type.Array(t, List.length l))
  | ArrayInit(exp)                   -> List.iter (type_expression globalScope scope) exp;
                                        CheckAST.verify_array_types exp;
                                        expr.etype <- (match (List.hd exp).etype with
                                                       | Some(elem) -> Some(Type.Array(elem, 1)))

  | Name(elem)                       -> expr.etype <- if (Hashtbl.mem scope.vars elem) <> true then
                                        (if (Hashtbl.mem (Hashtbl.find globalScope.classes globalScope.current).attributes elem) <> true
                                         then raise(CheckAST.Unknown_attribute(elem))
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

let add_variable_scope scope elem typ = 
  if (Hashtbl.mem scope.vars elem) <> true 
  then Hashtbl.add scope.vars elem typ 
  else raise(CheckAST.Variable_exists(elem))


let type_var_declaration globalScope scope declaration =
  match declaration with
  | (x, elem, None)   -> add_variable_scope scope elem x
  | (x, elem, Some y) -> type_expression globalScope scope y;
                         if Some(x) <> y.etype 
                         then raise(CheckAST.Wrong_types_declaration(Some(x), y.etype)) 
                         else add_variable_scope scope elem x

(*typing for a statement*)
let rec type_statement globalScope scope statement =
  match statement with
  | VarDecl(l)               -> List.iter (type_var_declaration globalScope scope) l
  | Expr expr                -> type_expression globalScope scope expr
  | Throw expr               -> type_expression globalScope scope expr
  | Return Some(expr)        -> type_expression globalScope scope expr; 
                                CheckAST.verify_return_type scope.returntype expr.etype
  | Block block              -> let update_scope = 
                                {returntype = scope.returntype; vars = Hashtbl.copy scope.vars} in 
                                List.iter (type_statement globalScope update_scope) block                             
  | While(expr, st)          -> type_expression globalScope scope expr;
                                type_statement globalScope scope st
  | If(expr, st, None)       -> type_expression globalScope scope expr; 
                                type_statement globalScope scope st; 
                                CheckAST.verify_if_type expr.etype
  | If(expr, st1, Some(st2)) -> type_expression globalScope scope expr; 
                                type_statement globalScope scope st1; 
                                type_statement globalScope scope st2; 
                                CheckAST.verify_if_type expr.etype
  | Return None              -> if scope.returntype <> Type.Void 
                                then raise(CheckAST.Wrong_type_return(scope.returntype, Type.Void))
  | Nop                      -> ()

let add_attribute globalScope attr = 
  if (Hashtbl.mem (Hashtbl.find globalScope.classes globalScope.current).attributes attr.aname) <> true
  then Hashtbl.add (Hashtbl.find globalScope.classes globalScope.current).attributes attr.aname attr.atype 
  else raise(CheckAST.Attribute_exists(attr.aname))

let add_method globalScope met = 
  if (Hashtbl.mem (Hashtbl.find globalScope.classes globalScope.current).methods met.mname) <> true 
  then Hashtbl.add (Hashtbl.find globalScope.classes globalScope.current).methods met.mname met.mreturntype
  else raise(CheckAST.Method_exists(met.mname))

let add_class globalScope c = List.iter (add_method globalScope) c.cmethods;
  List.iter (add_attribute globalScope) c.cattributes

let type_method globalScope met  = 
  let scope = 
  {returntype = met.mreturntype; vars = Hashtbl.create 20} in 
  List.iter (type_statement globalScope scope) met.mbody

let type_class globalScope c = 
  List.iter (add_method globalScope) c.cmethods;
  List.iter (add_attribute globalScope) c.cattributes;
  List.iter (type_method globalScope) c.cmethods 

let type_type globalScope tp =
  match tp.info with
  | Class c -> type_class globalScope c
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

let type_program prog = 
  let globalScope = { classes = Hashtbl.create 20; current = "" } in 
  List.iter (add_type globalScope) prog.type_list;
  List.iter (type_type globalScope) prog.type_list