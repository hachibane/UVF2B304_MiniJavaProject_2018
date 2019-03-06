open AST
open Hashtbl

type object_Descriptor =
{
  object_name : string;
  object_attributes : astattribute list
}

type class_Descriptor =
{
  class_name    : string;
  class_methods : (string, string) Hashtbl.t
}

type global_Class_Descriptor =
  | ClassDescriptor of class_Descriptor
  | ObjectClass
  | StringClass
  | IntegerClass
  | BooleanClass

type global_Data = 
{
  method_Table : (string, astmethod) Hashtbl.t;
  class_Descriptor_Table : (string, global_Class_Descriptor) Hashtbl.t
}

let add_classes_to_table descriptor_Table =
  Hashtbl.add descriptor_Table "Object"  ObjectClass;
  Hashtbl.add descriptor_Table "String"  StringClass;
  Hashtbl.add descriptor_Table "Int"     IntegerClass;
  Hashtbl.add descriptor_Table "Boolean" BooleanClass

let add_method_to_cd cd m = 
  Hashtbl.add cd.class_methods m.mname (cd.class_name)

let print_CD_Table c =
  Hashtbl.iter (fun key value -> print_endline(key)) c

let print_Methods_Table m =
  Hashtbl.iter (fun key value -> print_endline(key) ) m