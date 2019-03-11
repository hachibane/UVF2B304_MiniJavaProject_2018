open Compiling
open AST
open Type
open CTYPE
open CAUX

exception ReturnStatementException of v_Type
exception NullPointerException
exception InvalideOperationException
exception ArithmeticException
exception RuntimeException
exception ClassCastException
exception Exception of string * v_Type
exception MainFound of string
exception NoMainFoundException

type globalScope =
{
  data : globalData;
  mutable currentClassScoped : string;
  heap : (int, global_OD) Hashtbl.t;
  mutable free_adress : int;
}

type exec_scope =
{
  mutable currentscope : int;
  mutable currentobject : global_OD;
  mutable scopelist : (string, v_Type) Hashtbl.t list;	
  mutable catchException : (string, type_for_catch) Hashtbl.t
}	

and type_for_catch =
{ pident : string; statements : statement list }

let print_heap heap =
   Hashtbl.iter (fun key value -> (Printf.printf "%i " key; print_OD(value); print_endline(""))) heap

let printScope scope =
	Hashtbl.iter (fun key value -> print_string("object: " ^ key); print_string(", value "^ val_to_String(value)); print_endline("")) (List.nth scope.scopelist  scope.currentscope)
