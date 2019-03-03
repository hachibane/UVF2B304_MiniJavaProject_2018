open AST

(* auxiliary structures *)
type function_information =
{
  function_type: Type.t ;
  function_args: argument list
}

type scope = 
{
  return_type: Type.t ;
  vars: (string, Type.t) Hashtbl.t
}

type class_scope = 
{
  methods    : (string, function_information) Hashtbl.t ;
  attributes : (string, Type.t) Hashtbl.t
}

type gscope = 
{
  classes         : (string, class_scope) Hashtbl.t ;
  mutable current : string
}

(* auxiliary exceptions *)
exception Different_arguments
exception Not_typed_argument 

(* auxiliary functions for typing expression *)

let compare_arguments elem1 elem2 =
  match elem1.etype with
  | None    -> raise(Not_typed_argument)
  | Some(x) -> if x <> elem2.ptype then raise(Different_arguments)

let compare_arguments_method elem args met = 
  if (List.length args) <> (List.length met.function_args) then ()
  else
    try
      List.iter2 compare_arguments args met.function_args;
      raise(CheckAST.Method_exists(elem, met.function_type, met.function_args))
    with
      | Different_arguments -> ()

let type_val v = 
  match v with
  | Boolean boolean -> Some(Type.Primitive(Type.Boolean))
  | Char carac      -> Some(Type.Primitive(Type.Char))
  | Int integer     -> Some(Type.Primitive(Type.Int))
  | String s        -> Some(Type.Ref({tpath=[]; tid="String"}))
  | Float f         -> Some(Type.Primitive(Type.Float))
  | Null            -> None