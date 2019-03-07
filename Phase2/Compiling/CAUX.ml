open AST
open Hashtbl
open CTYPE

let add_class_to_DT dt =
  let cd = { class_name = "Object"; class_methods = Hashtbl.create 20; 
             class_constructors = Hashtbl.create 10; 
             class_attributes = [] } in
  Hashtbl.add dt "Object" (ObjectClass(cd));

  let cdex = { class_name = "Exception"; 
               class_methods = Hashtbl.create 20; 
               class_constructors = Hashtbl.create 10; 
               class_attributes = [] } in 
  Hashtbl.add dt "NullPointerException" (ClassDescriptor(cdex));
  Hashtbl.add dt "RuntimeException" (ClassDescriptor(cdex));
  Hashtbl.add dt "InvalideOperationException" (ClassDescriptor(cdex));
  Hashtbl.add dt "ArithmeticException" (ClassDescriptor(cdex));
  Hashtbl.add dt "ClassCastException" (ClassDescriptor(cdex));
  Hashtbl.add dt "Exception" (ClassDescriptor(cdex));
  Hashtbl.add dt "String" StringClass;
  Hashtbl.add dt "Int" IntegerClass;
  Hashtbl.add dt "Boolean" BooleanClass

let extract_type obj = 
  match obj with 
  | ObjectDescriptor(objectDescriptor) -> objectDescriptor.object_type
  | IntegerDescriptor(i) -> "Int"
  | StringDescriptor(s)  -> "String"
  | NullObject           -> "Null"
  | ThisObject           -> "This"

let add_const_to_C constructors const = 
  let listarg = get_list_of_arg const.cargstype "" in
   Hashtbl.add constructors (const.cname ^ "_" ^ listarg) const

let add_M_to_CD class_name methods mT m =
  let method_name = class_name ^ "_" ^ m.mname in
    Hashtbl.add methods m.mname (method_name);
    Hashtbl.add mT method_name m

let add_M_inheritance class_methods x = 
  match x with
  | ClassDescriptor(cd) -> Hashtbl.iter (fun key value -> if(Hashtbl.mem class_methods key) <> true 
                                                          then Hashtbl.add class_methods key value) cd.class_methods
  | ObjectClass(cd) -> Hashtbl.iter (fun key value -> Hashtbl.add class_methods key value) cd.class_methods

let add_A_inheritance class_attr x = 
  match x with
  | ClassDescriptor(cd) -> cd.class_attributes @ class_attr
  | ObjectClass(cd)     -> cd.class_attributes @ class_attr

let add_M_A_to_CD cdt mt c class_name =
	  let methods = Hashtbl.create 20 in
    let pc_D = Hashtbl.find cdt c.cparent.tid in
      List.iter (add_M_to_CD class_name methods mt) c.cmethods;
	    add_M_inheritance methods (pc_D);

	  let cconsts = Hashtbl.create 10 in
		List.iter (add_const_to_C cconsts) c.cconsts; 
		if Hashtbl.mem cconsts (class_name ^ "_") <> true 
    then Hashtbl.add cconsts (class_name ^ "_") ({
                                                    cmodifiers =[Public]; 
                                                    cname = class_name; 
                                                    cargstype = []; 
                                                    cthrows =[]; 
                                                    cbody =[Nop] 
                                                });
	  let attr = add_A_inheritance c.cattributes pc_D in
	  Hashtbl.add cdt class_name (ClassDescriptor({ 
                                                  class_name = class_name; 
                                                  class_methods = methods; 
                                                  class_constructors = cconsts; 
                                                  class_attributes = attr 
                                                }))

let is_compiled class_name cdt = 
  match class_name with
  | "Object" -> true
  | _        -> Hashtbl.mem cdt class_name

let rec extract_parent_class class_name typelist = 
  match typelist with
  | head::tail -> if head.id = class_name 
                  then head 
                  else extract_parent_class class_name tail


let rec compileClass cdt mt ast ttype = 
  match ttype.info with
  | Class c -> if (is_compiled ttype.id cdt) = false 
              then begin
				        if is_compiled c.cparent.tid cdt then
					      begin 
                  add_M_A_to_CD cdt mt c ttype.id 
                end
				        else begin
				          let parenttype = extract_parent_class c.cparent.tid ast.type_list in
				          compileClass cdt mt ast parenttype; add_M_A_to_CD cdt mt c ttype.id 
                end
				      end
 | Inter -> ()
