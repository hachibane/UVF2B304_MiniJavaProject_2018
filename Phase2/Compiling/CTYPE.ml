open AST
open Hashtbl

type v_Type =
  | VInt    of int
  | VBool   of bool
  | VString of string
  | VRef    of int		
  | VName   of string 	
  | VAttr   of string * string
  | VNull 
  

type object_Descriptor =
{
    object_type : string;
	  object_attributes : (string, v_Type) Hashtbl.t;
}

type global_OD =
  | ObjectDescriptor of object_Descriptor
  | IntegerDescriptor of int
  | StringDescriptor of string
  | NullObject
  | ThisObject	
	

type class_Descriptor =
{
	class_name             : string;
	class_methods          : (string, string) Hashtbl.t;	
	class_constructors     : (string, astconst) Hashtbl.t;
  class_attributes       : astattribute list
}

type globalclass_Descriptor =
  | ClassDescriptor of class_Descriptor
  | ObjectClass of class_Descriptor
  | StringClass
  | IntegerClass
  | BooleanClass


type globalData = 
{
  methodTable          : (string, astmethod) Hashtbl.t;
  classDescriptorTable : (string, globalclass_Descriptor) Hashtbl.t
}