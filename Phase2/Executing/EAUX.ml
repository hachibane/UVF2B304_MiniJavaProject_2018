open Compiling
open AST
open Type
open CTYPE
open CAUX
open ETYPE


let rec evaluate_expression globalScope scope expr = match expr.edesc with
  | New(None, l, exps) -> (match expr.etype with Some(Ref(ref_type))
                            -> addObject (Ref(ref_type)) globalScope scope; 
                            let ref_nb = (globalScope.free_adress-1) 
                            and o = find_object_in_heap globalScope.heap (VRef(globalScope.free_adress-1)) 
                            and cd = Hashtbl.find globalScope.data.classDescriptorTable ref_type.tid 
                            and arg_list_str = get_LAFT exps "" in (
                              match cd with 
                              | ClassDescriptor(cdescr) ->
                                let c = Hashtbl.find cdescr.class_constructors (ref_type.tid ^ "_" ^ arg_list_str)
                                and params_evaluated = evaluate_param_functions globalScope scope exps []
                                and lastobject = scope.currentobject 
                                and lastClassScoped = globalScope.currentClassScoped 
                                in  globalScope.currentClassScoped <- ref_type.tid; 
                                scope.currentscope <- scope.currentscope +1;
                                scope.scopelist <- scope.scopelist @ [Hashtbl.create 20]; 
                                scope.currentobject <- o;
                                exec_const c globalScope scope params_evaluated;
                                globalScope.currentClassScoped <- lastClassScoped;
                                scope.currentobject <- lastobject;
                                scope.scopelist <- remove_at scope.currentscope scope.scopelist;
                                scope.currentscope <- scope.currentscope-1;
                              | IntegerClass -> setInt globalScope scope (VRef(ref_nb)) exps );
                            VRef(ref_nb) )

  | Val v -> (match v with
        | Int(i) -> VInt (int_of_string i)
        | Boolean(b) -> VBool(b)
        | String s -> VString(s)
        | Null -> VNull )

  | AssignExp(e1, operator, e2) -> let ref1 = evaluate_expression  globalScope scope e1 and 
                                 ref2 = evaluate_expression globalScope scope e2 in
                                  eval_assign_operator operator ref1 ref2 globalScope scope

  | Op(e1, operator, e2) -> eval_operator operator (evaluate_expression globalScope scope e1) (evaluate_expression globalScope scope e2) globalScope scope

  | Post(exp, operator) -> eval_post_operator operator (evaluate_expression globalScope scope exp) globalScope scope

  | Pre(operator, exp) -> eval_pre_operator operator (evaluate_expression globalScope scope exp) globalScope scope

  | Name(name) -> VName(name)

  | NewArray(head, l, None) -> create_empty_tab globalScope scope head l

  | NewArray(head, l, Some(exp)) -> let vref = create_empty_tab globalScope scope head l in initiate_empty_tab vref exp;
                                    vref

  | Attr(exp, str) -> let value = evaluate_expression globalScope scope exp in (match value with VName(name) -> VAttr(name, str))

  | Call(Some(exp), str, l) -> (match exp.edesc with Name(id) ->
                                let o = find_object_in_heap globalScope.heap (Hashtbl.find (List.nth scope.scopelist  scope.currentscope) (id)) in 
                                (match o with ObjectDescriptor(od) -> 
                                  let cd = Hashtbl.find globalScope.data.classDescriptorTable od.object_type 
                                  and params_evaluated = evaluate_param_functions globalScope scope l []
                                  and lastobject = scope.currentobject 
                                  and lastClassScoped = globalScope.currentClassScoped in
                                (match cd with ClassDescriptor(cdescr) -> 
                                  let m = Hashtbl.find globalScope.data.methodTable (Hashtbl.find cdescr.class_methods str) in  
                                  globalScope.currentClassScoped <- od.object_type; scope.currentscope <- scope.currentscope +1;
                                  scope.scopelist <- scope.scopelist @ [Hashtbl.create 20]; scope.currentobject <- o;
                                  let returnvalue = exec_met m globalScope scope params_evaluated in  
                                  globalScope.currentClassScoped <- lastClassScoped; scope.scopelist <- remove_at scope.currentscope scope.scopelist; 
                                  scope.currentscope <- scope.currentscope-1; scope.currentobject <- lastobject;  returnvalue )))

  | Call(None, str, l) -> let m = Hashtbl.find globalScope.data.methodTable (globalScope.currentClassScoped ^ "_" ^ str) in exec_met m globalScope scope; VNull

  | VoidClass -> VNull

  | ClassOf t -> VNull

  | Instanceof(e, t) -> let value = evaluate_expression globalScope scope e in (match value, t with
              | VName(name), Ref(ref_type) -> let value = find_execvalue_in_scope scope name in let o = find_object_in_heap globalScope.heap value in if String.compare ref_type.tid (extract_type o) == 0 then VBool(true) else VBool(false) )

  | Cast(t, exp) -> let value = evaluate_expression globalScope scope exp in
                    try
                      match t, value with
                      | Primitive(Int), VName(name) -> 
                        let value = find_execvalue_in_scope scope name in 
                        (match value with
                          | VInt(i) -> VInt(i)
                          | VRef(ref_nb) -> let str = obj_to_str globalScope (VRef(ref_nb)) in 
                                            VInt(int_of_string(str)))
                      | Ref(ref_type), VName(name) -> 
                        let value = find_execvalue_in_scope scope name in 
                          (match value with 
                          | VRef(i) -> VRef(i)
                          | VInt(i) -> if String.compare ref_type.tid "String" == 0 
                                       then VString(string_of_int i) 
                                       else raise(ClassCastException)  )
                    with _ -> raise(ClassCastException)


and eval_operator operator elem1 elem2 globalScope scope = 
  match operator, elem1, elem2 with
  | Op_cand, VBool(b1), VBool(b2)               -> VBool(b1 && b2)
  | Op_or, VBool(b1), VBool(b2)                 -> VBool(b1 || b2)
  | Op_and, VBool(b1), VBool(b2)                -> VBool(b1 & b2) 
  | Op_xor, VBool(b1), VBool(b2)                -> VBool((b1&&(not b2))||((not b1)&&b2) )
  | Op_add, VInt(i1), VInt(i2)                  -> VInt(i1+i2)
  | Op_sub, VInt(i1), VInt(i2)                  -> VInt(i1-i2)
  | Op_mul, VInt(i1), VInt(i2)                  -> VInt(i1*i2)
  | Op_mod, VInt(i1), VInt(i2)                  -> VInt(i1 mod i2)
  | Op_eq, VInt(i1), VInt(i2)                   -> if i1 == i2 then VBool(true) else VBool(false)
  | Op_ne, VInt(i1), VInt(i2)                   -> if i1 != i2 then VBool(true) else VBool(false)
  | Op_gt, VInt(i1), VInt(i2)                   -> if i1 > i2  then VBool(true) else VBool(false)
  | Op_lt, VInt(i1), VInt(i2)                   -> if i1 < i2  then VBool(true) else VBool(false)
  | Op_ge, VInt(i1), VInt(i2)                   -> if i1 >= i2 then VBool(true) else VBool(false)
  | Op_le, VInt(i1), VInt(i2)                   -> if i1 <= i2 then VBool(true) else VBool(false)
  | Op_div, VInt(i1), VInt(i2)                  -> if i2 == 0  then raise(ArithmeticException) else VInt(i1/i2)
  | Op_add, VString(str1), VString(str2)        -> VString(str1 ^ str2)
  | Op_add, VRef(i), VString(str)               -> let stringdescr = find_object_in_heap globalScope.heap (VRef(i)) in 
                                                    (match stringdescr with StringDescriptor(s) -> VString(s ^ str))

  | _, VName(name1), VName(name2) -> eval_operator operator (find_execvalue_in_scope scope name1) (find_execvalue_in_scope scope name2) globalScope scope

  | _, VAttr(oname,aname), VAttr(oname2,aname2) -> eval_operator operator (find_attribute_value globalScope scope oname aname) (find_attribute_value globalScope scope oname2 aname2) globalScope scope

  | _ , VName(name1), _ -> eval_operator operator (find_execvalue_in_scope scope name1) elem2 globalScope scope

  | _, VAttr(oname,aname), _ -> eval_operator operator (find_attribute_value globalScope scope oname aname) elem2 globalScope scope

  | _, _, _ -> raise(InvalideOperationException)


and evaluate_statement globalScope scope stmt = match stmt with
  | VarDecl(l)          -> List.iter (exec_var_declaratiob globalScope scope) l
  | Expr e              -> evaluate_expression globalScope scope e; ()
  | Nop                 -> ()
  | Return Some(e)      -> add_variable_to_scope globalScope scope "return" (evaluate_expression globalScope scope e); raise(ReturnStatementException(evaluate_expression globalScope scope e))
  | Return None         -> add_variable_to_scope globalScope scope "return" VNull; raise(ReturnStatementException(VNull))
 
  | If(e, s, None)      -> let value = evaluate_expression globalScope scope e in 
                            print_endline(val_to_String(value));
                            (match value with
                              | VBool(b)    -> if b then evaluate_statement globalScope scope s
                              | VName(name) -> let vbool = find_execvalue_in_scope scope name in 
                                                (match vbool with
                                                  | VBool(b) -> if b then evaluate_statement globalScope scope s ))
 
  | If(e, s1, Some(s2)) -> let value = evaluate_expression globalScope scope e in 
                            (match value with
                            | VBool(b) -> if b 
                                          then evaluate_statement globalScope scope s1 
                                          else evaluate_statement globalScope scope s2
                            | VName(name) -> let vbool = find_execvalue_in_scope scope name in 
                                              (match vbool with
                                              | VBool(b) -> if b 
                                                            then evaluate_statement globalScope scope s1 
                                                            else evaluate_statement globalScope scope s2 ))
 
  | Block b             -> List.iter (evaluate_statement globalScope scope) b
 
  | While(e, s)         -> let value = evaluate_expression globalScope scope e in 
                            (match value with
                              | VBool(b) -> if b then 
                                              begin 
                                                evaluate_statement globalScope scope s; 
                                                evaluate_statement globalScope scope (While(e, s)) 
                                              end
                              | VName(name) -> let vbool = find_execvalue_in_scope scope name in 
                                                            (match vbool with
                                                            | VBool(b) -> if b then 
                                                              begin 
                                                                evaluate_statement globalScope scope s; 
                                                                evaluate_statement globalScope scope (While(e, s)) 
                                                              end ))
 
  | For(l, None, exps, s) -> List.iter (exec_for_var_declaration globalScope scope) l;  
                              evaluate_statement globalScope scope s;
                              evaluate_expressions globalScope scope exps; 
                              evaluate_statement globalScope scope (For([], None, exps, s))
 
  | For(l, Some(exp), exps, s) -> List.iter (exec_for_var_declaration globalScope scope) l;
                                   let value = evaluate_expression globalScope scope exp in 
                                   (match value with
                                    | VBool(b) -> if b then 
                                      begin 
                                        evaluate_statement globalScope scope s; 
                                        evaluate_expressions globalScope scope exps; 
                                        evaluate_statement globalScope scope (For([], Some(exp), exps, s)) 
                                      end
                                    | VName(name) -> let vbool = find_execvalue_in_scope scope name in 
                                      (match vbool with
                                        | VBool(b) -> if b then 
                                          begin 
                                            evaluate_statement globalScope scope s; 
                                            evaluate_expressions globalScope scope exps; 
                                            evaluate_statement globalScope scope (For([], Some(exp), exps, s)) 
                                          end ))
 
  | Throw e        -> let value = evaluate_expression globalScope scope e in 
                       (match e.etype with Some(Ref(ref_type)) -> 
                       raise(Exception(ref_type.tid, value)))
 
  | Try(s1, l, s2) -> List.iter (eval_catches globalScope scope) l; 
                        try List.iter (evaluate_statement globalScope scope) s1
                        with
                        | NullPointerException       -> if Hashtbl.mem scope.catchException "NullPointerException" 
                                                        then List.iter (evaluate_statement globalScope scope) (Hashtbl.find scope.catchException "NullPointerException").statements
                        | InvalideOperationException -> if Hashtbl.mem scope.catchException "InvalideOperationException" 
                                                        then List.iter (evaluate_statement globalScope scope) (Hashtbl.find scope.catchException "InvalideOperationException").statements
                        | ArithmeticException        -> if Hashtbl.mem scope.catchException "ArithmeticException" 
                                                        then List.iter (evaluate_statement globalScope scope) (Hashtbl.find scope.catchException "ArithmeticException").statements
                        | Exception(name, VRef(i))   -> if Hashtbl.mem scope.catchException name 
                                                        then begin 
                                                          add_variable_to_scope globalScope scope  (Hashtbl.find scope.catchException name).pident (VRef(i)); 
                                                          List.iter (evaluate_statement globalScope scope) (Hashtbl.find scope.catchException name).statements 
                                                        end;
                      Hashtbl.reset scope.catchException;
                      List.iter (evaluate_statement globalScope scope) s2



and eval_assign_operator operator elem1 elem2 globalScope scope = 
  match operator with
  | Assign -> (match elem1, elem2 with
          | VName(name), _         -> replace_execvalue_in_scope globalScope  scope name elem2; elem2
          | VAttr(oname, aname), _ -> replace_attribute_value globalScope scope oname aname elem2; elem2
  )
  | Ass_add -> eval_assign_operator Assign elem1 (eval_operator Op_add elem1 elem2 globalScope scope) globalScope scope 
  | Ass_sub -> eval_assign_operator Assign elem1 (eval_operator Op_sub elem1 elem2 globalScope scope) globalScope scope
  | Ass_mul -> eval_assign_operator Assign elem1 (eval_operator Op_mul elem1 elem2 globalScope scope) globalScope scope
  | Ass_div -> eval_assign_operator Assign elem1 (eval_operator Op_div elem1 elem2 globalScope scope) globalScope scope
  | Ass_mod -> eval_assign_operator Assign elem1 (eval_operator Op_mod elem1 elem2 globalScope scope) globalScope scope

and eval_post_operator operator elem1 globalScope scope = 
  match operator, elem1 with
  | Incr, VInt(i)             -> VInt(i+1)
  | Decr, VInt(i)             -> VInt(i-1)
  | Incr, VName(name)         -> let value = find_execvalue_in_scope scope name in 
                                  (match value with VInt(i) -> 
                                    replace_execvalue_in_scope globalScope scope name (VInt(i+1)); VInt(i+1))

  | Decr, VName(name)         -> let value = find_execvalue_in_scope scope name in 
                                  (match value with VInt(i) -> 
                                    replace_execvalue_in_scope globalScope scope name (VInt(i-1)); VInt(i-1))

  | Incr, VAttr(oname, aname) -> let value = find_attribute_value globalScope scope oname aname in 
                                  (match value with VInt(i) -> 
                                    replace_attribute_value globalScope scope oname aname (VInt(i+1)); VInt(i+1))

  | Decr, VAttr(oname, aname) -> let value = find_attribute_value globalScope scope oname aname in 
                                  (match value with VInt(i) -> 
                                    replace_attribute_value globalScope scope oname aname (VInt(i-1)); VInt(i-1))

and eval_pre_operator operator elem1 globalScope scope = 
  match operator, elem1 with
  | Op_incr, VInt(i)     -> VInt(i+1)
  | Op_decr, VInt(i)     -> VInt(i-1)
  | Op_not, VBool(b)     -> VBool(not b)
  | Op_not, VName(name)  -> let value = find_execvalue_in_scope scope name in 
                              (match value with VBool(b) -> VBool(not b))
  | Op_incr, VName(name) -> let value = find_execvalue_in_scope scope name in 
                              (match value with VInt(i) -> 
                                replace_execvalue_in_scope globalScope  scope name (VInt(i+1)); VInt(i)) 
  | Op_decr, VName(name) -> let value = find_execvalue_in_scope scope name in 
                              (match value with VInt(i) -> 
                                replace_execvalue_in_scope globalScope  scope name (VInt(i-1)); VInt(i))

and exec_met met globalScope scope params_evaluated =
   print_endline("executing method" ^ met.mname ^"");
   List.iter2 (addParameterToScope globalScope scope) met.margstype params_evaluated;
   try
    List.iter (evaluate_statement globalScope scope) met.mbody;
    VNull
    with ReturnStatementException(execution_value) -> 
      match execution_value with
        | VName(vname)                   -> find_execvalue_in_scope scope vname
        | VAttr(object_name, attr_name) -> find_attribute_value globalScope scope object_name attr_name
        | _                              -> execution_value


and exec_const construct globalScope scope params_evaluated =
   print_endline("executing constructor" ^ construct.cname);
   List.iter2 (addParameterToScope globalScope scope) construct.cargstype params_evaluated;
   List.iter (evaluate_statement globalScope scope) construct.cbody;


and addParameterToScope globalScope scope marg param_evaluated  =
  add_variable_to_scope globalScope scope marg.pident param_evaluated


and evaluate_param_functions globalScope scope params params_evaluated = 
  match params with
  | [] -> params_evaluated
  | (param::liste)  -> let value = (evaluate_expression globalScope scope param) in 
                        (match value with 
                          | VName(name) -> find_execvalue_in_scope scope name
                          | VAttr(oname, aname) -> find_attribute_value globalScope scope oname aname
                          | _ -> value) :: evaluate_param_functions globalScope scope liste params_evaluated


and exec_var_declaratiob globalScope scope declaration = 
  match declaration with
  | (typ, name, None)   -> add_variable_to_scope globalScope scope name VNull
  | (typ, name, Some e) -> add_variable_to_scope globalScope scope name (evaluate_expression globalScope scope e)


and exec_for_var_declaration globalScope scope declaration =
  match declaration with
  | (Some(t), name, None)   -> ()
  | (Some(t), name, Some e) -> ()
  | (None, name, None)      -> ()
  | (None, name, Some e)    -> ()


and eval_catches globalScope scope catch = 
  match catch with
  | (arg, l) -> match arg.ptype with Ref(ref_type) 
                  -> Hashtbl.add scope.catchException ref_type.tid { pident= arg.pident; statements =l }; 
                      addObject (Ref(ref_type)) globalScope scope; 
                      add_variable_to_scope globalScope scope arg.pident (VRef(globalScope.free_adress-1))


and evaluate_expressions globalScope scope expressions = 
  match expressions with
  | [] -> ()
  | (head::tail) -> evaluate_expression globalScope scope head; 
                    evaluate_expressions globalScope scope tail;


and addObject obj_typ globalScope scope =
  let addAttributeToObject objectattributes globalScope scope classattribute = 
    match classattribute.adefault with
      | Some(expr) -> Hashtbl.add objectattributes classattribute.aname (evaluate_expression globalScope scope expr)
      | None       -> Hashtbl.add objectattributes classattribute.aname (VNull)
  in

  let createObjectFromDescriptor cd = 
    match cd with
    | ClassDescriptor(classDescriptor) -> let objectcreated = { 
                                            object_type  = classDescriptor.class_name; 
                                            object_attributes = Hashtbl.create 20 } 
                                          in 
                                            List.iter (addAttributeToObject objectcreated.object_attributes globalScope scope) classDescriptor.class_attributes; 
                                            ObjectDescriptor(objectcreated)
    | StringClass                      -> StringDescriptor("")
    | IntegerClass                     -> IntegerDescriptor(0)

  in 

  match obj_typ with
      | Ref(ref_type) -> print_endline(ref_type.tid);
                        let cd = Hashtbl.find globalScope.data.classDescriptorTable ref_type.tid in
                        let object_created = createObjectFromDescriptor cd in
                            Hashtbl.add globalScope.heap globalScope.free_adress object_created; 
                            globalScope.free_adress <- globalScope.free_adress+1


and add_variable_to_scope globalScope scope name value = 
  match value with
  | VName(name1) -> Hashtbl.add (List.nth scope.scopelist  scope.currentscope) name (find_execvalue_in_scope scope name1)
  | VString(s)   -> add_object_to_heap globalScope (StringDescriptor(s)); 
                    Hashtbl.add (List.nth scope.scopelist  scope.currentscope) name (VRef(globalScope.free_adress-1))
  | _            -> Hashtbl.add (List.nth scope.scopelist  scope.currentscope) name value
  

and add_object_to_heap globalScope globalOD =
  Hashtbl.add globalScope.heap globalScope.free_adress globalOD; 
  globalScope.free_adress <- globalScope.free_adress +1


and find_object_in_heap heap value = 
  match value with
  | VRef(i) -> print_endline(val_to_String(value)); 
                Hashtbl.find heap i


and find_execvalue_in_scope scope name =
  if Hashtbl.mem (List.nth scope.scopelist  scope.currentscope) name <> true
  then match scope.currentobject with
    | ObjectDescriptor(od) -> Hashtbl.find od.object_attributes name
    | StringDescriptor(s)  -> VString(s)
    | NullObject           -> VNull
  else Hashtbl.find (List.nth scope.scopelist  scope.currentscope) name

and replace_execvalue_in_scope globalScope  scope name value = 
  match value with
  | VAttr(oname, aname) -> replace_execvalue_in_scope globalScope scope name (find_attribute_value globalScope scope oname aname)
  | VName(vname)        -> replace_execvalue_in_scope globalScope scope name (find_execvalue_in_scope scope vname)
  | VString(s)          -> add_object_to_heap globalScope (StringDescriptor(s));
                           replace_execvalue_in_scope globalScope scope name (VRef(globalScope.free_adress-1))
  | _                   -> if Hashtbl.mem (List.nth scope.scopelist  scope.currentscope) name <> true
                           then match scope.currentobject with
                              | ObjectDescriptor(od) -> Hashtbl.remove od.object_attributes name; Hashtbl.add od.object_attributes name value
                              | NullObject -> ()
                           else Hashtbl.remove (List.nth scope.scopelist  scope.currentscope) name; 
                           Hashtbl.add (List.nth scope.scopelist  scope.currentscope) name value


and find_attribute_value globalScope scope oname aname =
  let o = find_object_in_heap globalScope.heap (find_execvalue_in_scope scope oname) in 
  match o with
  | ObjectDescriptor(od) -> Hashtbl.find od.object_attributes aname

and replace_attribute_value globalScope scope oname aname value =
  let o = find_object_in_heap globalScope.heap (find_execvalue_in_scope scope oname) in 
  match o, value with
  | ObjectDescriptor(od), VName(name)       -> replace_attribute_value globalScope scope oname aname (find_execvalue_in_scope scope name)
  | ObjectDescriptor(od), VAttr(str1, str2) -> replace_attribute_value globalScope scope oname aname (find_attribute_value globalScope scope str1 str2)
  | ObjectDescriptor(od), VString(s)        -> add_object_to_heap globalScope (StringDescriptor(s)); 
                                               replace_attribute_value globalScope scope oname aname (VRef(globalScope.free_adress-1))
  | ObjectDescriptor(od), _                 -> Hashtbl.remove od.object_attributes aname; 
                                               Hashtbl.add od.object_attributes aname value; 
                                               VAttr(oname, aname)


and obj_to_str globalScope value =
  let o = find_object_in_heap globalScope.heap value in 
  (match o with StringDescriptor(str) -> str )


and create_empty_tab globalScope scope typ l = 
match typ with
  | Primitive(Int) -> let vint =  nb_ligns globalScope scope l 1 in 
                      for i = 1 to vint do 
                        addObject (Ref({tpath = [] ; tid = "Int"})) globalScope scope 
                      done; 
                      VRef(globalScope.free_adress - vint)


and initiate_empty_tab vref exp = ()


and nb_ligns globalScope scope l nbligne = 
  match l with
  | [] -> nbligne
  | (Some(e)::liste)  -> let value = evaluate_expression globalScope scope e in 
                         (match value with
                            | VInt(i)     -> nb_ligns globalScope scope liste  (nbligne*i)
                            | VName(name) -> let vint = find_execvalue_in_scope scope name in 
                                (match vint with VInt(i) -> nb_ligns globalScope scope liste (nbligne+i)))
  | (None::liste)     -> 0


and setInt globalScope scope value exps  = 
  let e = evaluate_expression globalScope scope (List.hd exps) in 
  match value, e with
  | VRef(ref_nb), VInt(i)     -> Hashtbl.remove globalScope.heap ref_nb; 
                                 Hashtbl.add globalScope.heap ref_nb (IntegerDescriptor(i))
  | VRef(ref_nb), VName(name) -> let value = find_execvalue_in_scope scope name in
                                   match value with VInt(i) -> Hashtbl.remove globalScope.heap ref_nb; 
                                                                   Hashtbl.add globalScope.heap ref_nb (IntegerDescriptor(i))


and remove_at n liste = match liste with
  | [] -> []
  | h :: t -> if n = 0 then t 
              else h :: remove_at (n-1) t


and find_get_method_in_file compilationData  =
  let mainClassName = "None" in
  try
  Hashtbl.iter (fun key value -> (match value with
                      | ClassDescriptor(cd) -> print_endline(key);
                                               if Hashtbl.mem cd.class_methods "main" 
                                               then raise(MainFound(key))
                      | _ -> () ) ) compilationData.classDescriptorTable;
  None
  with MainFound(name) -> Some(Hashtbl.find compilationData.methodTable (name ^ "_main"))
