open AST
open Hashtbl
open CTYPE
open CAUX


let compile ast = 
  let comp_data = { methodTable = Hashtbl.create 20; 
  				    classDescriptorTable = Hashtbl.create 20 }
  in
  add_class_to_DT comp_data.classDescriptorTable;
  List.iter (compileClass comp_data.classDescriptorTable comp_data.methodTable ast) ast.type_list;
  comp_data

