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

let val_to_String v = 
  match v with
  | VInt(elem)           -> "int: " ^ string_of_int elem
  | VBool(elem)          -> "bool: " ^ string_of_bool elem
  | VName(name)          -> "name: " ^ name
  | VString(elem)        -> "string: " ^ elem
  | VRef(elem)           -> "object reference, adresse:" ^ string_of_int elem
  | VNull                -> "null"
  | VAttr(elem1, elem2)  -> "Attribute " ^ elem2 ^ "of object " ^ elem1

let print_OD od = match od with
  | IntegerDescriptor(elem) -> Printf.printf "Integer OD: %i" elem; 
                               print_endline("")
  | StringDescriptor(str)   -> print_endline("String OD: " ^ str)
  | ObjectDescriptor(od)    -> print_endline("object type : " ^ od.object_type); 
                               Hashtbl.iter (
                                fun key value -> print_string(key);
                                                 print_endline("\t: attr " ^val_to_String(value)); 
                                                 print_endline("")
                               ) 
                               od.object_attributes
  | NullObject              -> print_endline("Null object")


let print_CD cd = match cd with
  | ClassDescriptor(cd) -> print_endline("Constructor of the class");
                           Hashtbl.iter (fun key value -> print_endline(key)) cd.class_constructors; 
                           print_endline("Method of the class");  
                           Hashtbl.iter (fun key value -> print_endline(key ^":   " ^ value)) cd.class_methods; 
                           print_endline("Attributes of the class"); 
                           List.iter (print_attribute ("  ")) cd.class_attributes
  | ObjectClass(cd) -> ()
  | StringClass     -> ()
  | IntegerClass    -> ()
  | BooleanClass    -> ()

let print_CDT cdt =
  print_endline("list of the classes");
  Hashtbl.iter (fun key value -> print_endline(key); 
                                 print_CD(value)) cdt

let print_MT mt =
  print_endline("Methods of all classes");
  Hashtbl.iter (fun key value -> print_endline(key)) mt

let print_PA pa = 
  match pa with
  | ClassDescriptor(cd) -> List.iter (print_attribute (" parentattribute ")) cd.class_attributes
  | ObjectClass(cd)     -> List.iter (print_attribute (" parentattribute ")) cd.class_attributes


let rec get_list_of_arg args str = match args with
  | [] -> str
  | (head::tail) -> match head.ptype with
                    | Primitive(Int)     -> get_list_of_arg tail (str ^ "int")
                    | Primitive(Boolean) -> get_list_of_arg tail (str ^ "boolean")
                    | Ref(ref_type)      -> get_list_of_arg tail (str ^ ref_type.tid)

let rec get_LAFT exps str = match exps with
  | [] -> str 
  | (head::tail) -> match head.etype with
                    | Some(Primitive(Int))     -> get_LAFT tail (str ^ "int")
                    | Some(Primitive(Boolean)) -> get_LAFT tail (str ^ "boolean")
                    | Some(Ref(ref_type))      -> get_LAFT tail (str ^ ref_type.tid)

let print_CompData comp_data = match comp_data with
  | {methodTable = mt; classDescriptorTable = cdt} -> print_MT(mt); 
                                                      print_CDT(cdt)