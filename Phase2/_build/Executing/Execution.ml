open Compiling
open AST
open Type
open CTYPE
open CAUX
open ETYPE
open EAUX

let execute_program ast comp_data = 
  let m = find_get_method_in_file comp_data in
  match m with
    | None -> print_endline("No main method to execute")
    | Some(mainMethod) ->
  print_method "" mainMethod;
  let globalScope = { data = comp_data; 
                      currentClassScoped = "B"; 
                      heap = Hashtbl.create 20; 
                      free_adress = 1 } in
  Hashtbl.add globalScope.heap 0 NullObject;
  let scope = { currentscope = 0; 
                currentobject=NullObject; 
                scopelist = [Hashtbl.create 20]; 
                catchException = Hashtbl.create 5 } in
  List.iter (evaluate_statement globalScope scope) mainMethod.mbody;
  print_heap globalScope.heap;
  printScope scope
  