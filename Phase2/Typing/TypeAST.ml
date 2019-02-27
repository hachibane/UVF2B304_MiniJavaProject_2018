open AST

let type_val val =
  match val with
  | Boolean boolean -> Some(Type.Primitive(Type.Boolean))
  | Char carac      -> Some(Type.Primitive(Type.Char))
  | Int integer     -> Some(Type.Primitive(Type.Int))

let rec type_expression expression =
  match expression.edesc with
  | AssignExp(expr1,operation,expr2) -> {edesc = AssignExp(type_expression expr1, operation, type_expression expr2); etype = None}
  | Val val -> {edesc = Val(val); etype = type_val val}

let type_statement s =
  match s with
  | Expr e -> Expr(type_expression e)

let type_method method = 
{
  mmodifiers = method.mmodifiers;
  mname = method.mname;
  mreturntype = method.mreturntype;
  margstype = method.margstype;
  mthrows = method.mthrows;
  mbody = List.map type_statement method.mbody
}

let type_class c = 
{
  cparent = c.cparent;
  cattributes = c.cattributes;
  cinits = c.cinits;
  cconsts = c.cconsts;
  cmethods = List.map type_method c.cmethods;
  ctypes = c.ctypes;
  cloc = c.cloc
}

let type_type t = 
{
  modifiers = t.modifiers;
  id = t.id;
  info = match t.info with
         | Class c -> Class(type_class c)
         | Inter -> Inter
}

let type_program prog = 
{
  package = prog.package;
  type_list = List.map type_type prog.type_list
}
