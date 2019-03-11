open Compiling
open AST
open Type
open CTYPE
open CAUX
open ETYPE


let rec evaluate_expression globalScope scope expr = match expr.edesc with
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

  | Attr(exp, str) -> let value = evaluate_expression globalScope scope exp in (match value with VName(name) -> VAttr(name, str))

  | Call(Some(exp), str, l) -> (match exp.edesc with Name(id) ->
  													 		let o = find_object_in_heap globalScope.heap (Hashtbl.find (List.nth scope.scopelist  scope.currentscope) (id)) in 
																(match o with ObjectDescriptor(od) -> 
																	let cd = Hashtbl.find globalScope.data.classDescriptorTable od.object_type 
																	and params_evaluated = eval_param_functions globalScope scope l []
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

and eval_operator operator elem1 elem2 globalScope scope = 
	match operator, elem1, elem2 with
  | Op_cand, VBool(b1), VBool(b2)               -> VBool(b1 && b2)
  | Op_or, VBool(b1), VBool(b2)                 -> VBool(b1 || b2)
  | Op_and, VBool(b1), VBool(b2) 								-> VBool(b1 & b2)	
  | Op_xor, VBool(b1), VBool(b2)                -> VBool((b1&&(not b2))||((not b1)&&b2) )
  | Op_add, VInt(i1), VInt(i2)                  -> VInt(i1+i2)
  | Op_sub, VInt(i1), VInt(i2)                  -> VInt(i1-i2)
  | Op_mul, VInt(i1), VInt(i2)                  -> VInt(i1*i2)
  | Op_mod, VInt(i1), VInt(i2)                  -> VInt(i1 mod i2)
  | Op_add, VString(str1), VString(str2)        -> VString(str1 ^ str2)
  | Op_eq, VInt(i1), VInt(i2)                   -> if i1 == i2 then VBool(true) else VBool(false)
  | Op_ne, VInt(i1), VInt(i2)                   -> if i1 != i2 then VBool(true) else VBool(false)
  | Op_gt, VInt(i1), VInt(i2)                   -> if i1 > i2  then VBool(true) else VBool(false)
  | Op_lt, VInt(i1), VInt(i2)                   -> if i1 < i2  then VBool(true) else VBool(false)
  | Op_ge, VInt(i1), VInt(i2)                   -> if i1 >= i2 then VBool(true) else VBool(false)
  | Op_le, VInt(i1), VInt(i2)                   -> if i1 <= i2 then VBool(true) else VBool(false)
  | Op_div, VInt(i1), VInt(i2)                  -> if i2 == 0  then raise(ArithmeticException) else VInt(i1/i2)

  | Op_add, VRef(i), VString(str)               -> let stringdescr = find_object_in_heap globalScope.heap (VRef(i)) in 
  																	                (match stringdescr with StringDescriptor(s) -> VString(s ^ str))

  | _, VName(name1), VName(name2) -> eval_operator operator (find_execvalue_in_scope scope name1) (find_execvalue_in_scope scope name2) globalScope scope

  | _, VAttr(oname,aname), VAttr(oname2,aname2) -> eval_operator operator (find_attribute_value globalScope scope oname aname) (find_attribute_value globalScope scope oname2 aname2) globalScope scope

  | _ , VName(name1), _ -> eval_operator operator (find_execvalue_in_scope scope name1) elem2 globalScope scope

  | _, VAttr(oname,aname), _ -> eval_operator operator (find_attribute_value globalScope scope oname aname) elem2 globalScope scope

  | _, _, _ -> raise(InvalideOperationException)


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
  | Incr, VName(name)         -> let execvalue = find_execvalue_in_scope scope name in 
  																(match execvalue with VInt(i) -> 
  																	replace_execvalue_in_scope globalScope scope name (VInt(i+1)); VInt(i+1))

  | Decr, VName(name)         -> let execvalue = find_execvalue_in_scope scope name in 
  																(match execvalue with VInt(i) -> 
  																	replace_execvalue_in_scope globalScope scope name (VInt(i-1)); VInt(i-1))

  | Incr, VAttr(oname, aname) -> let execvalue = find_attribute_value globalScope scope oname aname in 
  																(match execvalue with VInt(i) -> 
  																	replace_attribute_value globalScope scope oname aname (VInt(i+1)); VInt(i+1))

  | Decr, VAttr(oname, aname) -> let execvalue = find_attribute_value globalScope scope oname aname in 
  																(match execvalue with VInt(i) -> 
  																	replace_attribute_value globalScope scope oname aname (VInt(i-1)); VInt(i-1))

and eval_pre_operator operator elem1 globalScope scope = 
	match operator, elem1 with
  | Op_incr, VInt(i)     -> VInt(i+1)
  | Op_decr, VInt(i)     -> VInt(i-1)
  | Op_not, VBool(b)     -> VBool(not b)
  | Op_not, VName(name)  -> let execvalue = find_execvalue_in_scope scope name in 
  														(match execvalue with VBool(b) -> VBool(not b))
  | Op_incr, VName(name) -> let execvalue = find_execvalue_in_scope scope name in 
  														(match execvalue with VInt(i) -> 
  															replace_execvalue_in_scope globalScope  scope name (VInt(i+1)); VInt(i)) 
  | Op_decr, VName(name) -> let execvalue = find_execvalue_in_scope scope name in 
  														(match execvalue with VInt(i) -> 
  															replace_execvalue_in_scope globalScope  scope name (VInt(i-1)); VInt(i))

and exec_met met globalScope scope params_evaluated =
	 print_endline("executing method" ^ met.mname ^"");
	 List.iter2 (addParameterToScope globalScope scope) met.margstype params_evaluated;
	 try
	 	List.iter (evaluate_statement globalScope scope) met.mbody;
		VNull
		with ReturnStatementException(execution_value) -> 
			match execution_value with
				| VName(vname)                  -> find_execvalue_in_scope scope vname
				| VAttr(object_name, attr_name) -> find_attribute_value globalScope scope object_name attr_name
				| _                             -> execution_value


and addParameterToScope globalScope scope marg param_evaluated  =
  add_variable_to_scope globalScope scope marg.pident param_evaluated


and eval_param_functions globalScope scope params params_evaluated = 
  match params with
  | [] -> params_evaluated
  | (param::liste)  -> let execvalue = (evaluate_expression globalScope scope param) in 
                        (match execvalue with 
                          | VName(name) -> find_execvalue_in_scope scope name
                          | VAttr(oname, aname) -> find_attribute_value globalScope scope oname aname
                          | _ -> execvalue) :: eval_param_functions globalScope scope liste params_evaluated
