open AST
open Hashtbl
open CAUX


let compile ast = 
  let compilation_Data = { method_Table = Hashtbl.create 20; class_Descriptor_Table = Hashtbl.create 20 }
  in
  add_classes_to_table compilationData.class_Descriptor_Table;
  compilation_Data

let print_Compilation_Data data = match data with
  | {method_Table = m; class_Descriptor_Table = c } -> print_Methods_Table(m); 
                                                       print_CD_Table(c)

