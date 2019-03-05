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
  methods      : (string, function_information) Hashtbl.t ;
  constructors : (string, function_information) Hashtbl.t ;
  attributes   : (string, Type.t) Hashtbl.t ;
  parent       : Type.ref_type ;
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

let compare_arguments arg1 arg2 =
  match arg1.etype with
  | None    -> raise(Not_typed_argument)
  | Some(x) -> if x <> arg2.ptype then raise(Different_arguments)

let compare_arguments_method function_name args met = 
  if (List.length args) <> (List.length met.function_args) then ()
  else
    try
      List.iter2 compare_arguments args met.function_args;
      raise(CheckAST.Method_exists(function_name, met.function_type, met.function_args))
    with
      | Different_arguments -> ()

let compare_arguments_constructor function_name args constructor =
	if (List.length args) <> (List.length constructor.function_args) then ()
	else
		try
			List.iter2 compare_arguments args constructor.function_args;
			raise(CheckAST.Constructor_exists(function_name, constructor.function_type, constructor.function_args))
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

let type_call methodName arguments globalScope className = 
	let meths = (Hashtbl.find globalScope.classes className).methods in
  if (Hashtbl.mem meths methodName) <> true
  then raise(CheckAST.Unknown_method(methodName, arguments, None))
  else (
    try
      List.iter (compare_arguments_method methodName arguments) (Hashtbl.find_all meths methodName);
      raise(CheckAST.Unknown_method(methodName, arguments, None))
    with
      | Not_typed_argument -> raise(CheckAST.Argument_expression_no_type(methodName))
      | CheckAST.Method_exists(_, t, _) -> Some(t))

let rec type_ref (globalScope : gscope) (apparent_typ : Type.ref_type) (real_typ : Type.ref_type) =
  if apparent_typ.tid <> real_typ.tid then
    if apparent_typ.tid = "Object" then () else
      let parent = (Hashtbl.find globalScope.classes real_typ.tid).parent in
        if parent.tid = "Object" then raise(CheckAST.Wrong_type_ref(apparent_typ, real_typ)) 
      	else if apparent_typ <> parent then type_ref globalScope apparent_typ parent

let type_assign globalScope x operator y =
  if x <> y then
    (match x with
     | Some(Type.Ref(apparent_typ)) -> if y <> None then
       (match y with
        | Some(Type.Ref(real_typ)) -> type_ref globalScope apparent_typ real_typ
        | _ -> raise(CheckAST.Wrong_types_assign_operation(x, operator, y)))
     | _ -> raise(CheckAST.Wrong_types_assign_operation(x, operator, y)))

