
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VOLATILE
    | VOID
    | VARARG
    | TRY
    | TRUE
    | TRANSIENT
    | THROWS
    | THROW
    | THIS
    | SYNCHRONIZED
    | SWITCH
    | SUPER
    | STRING of (
# 40 "Parsing/InnerParser.mly"
       (string)
# 24 "Parsing/Parser.ml"
  )
    | STRICTFP
    | STATIC
    | SHORT
    | SEMI
    | RPAREN
    | RETURN
    | RBRACKET
    | RBRACE
    | PUBLIC
    | PROTECTED
    | PRIVATE
    | PACKAGE
    | OP_XOR
    | OP_SUB
    | OP_SHRR
    | OP_SHR
    | OP_SHL
    | OP_OR
    | OP_NOT
    | OP_NE
    | OP_MUL
    | OP_MOD
    | OP_LT
    | OP_LE
    | OP_INC
    | OP_GT
    | OP_GE
    | OP_EQ
    | OP_DIV
    | OP_DEC
    | OP_COR
    | OP_COND
    | OP_CAND
    | OP_BNOT
    | OP_AND
    | OP_ADD
    | NULL
    | NEW
    | NATIVE
    | LPAREN
    | LONG
    | LBRACKET
    | LBRACE
    | INT_LIT of (
# 38 "Parsing/InnerParser.mly"
       (string)
# 72 "Parsing/Parser.ml"
  )
    | INTERFACE
    | INT
    | INSTANCEOF
    | IMPORT
    | IMPLEMENTS
    | IF
    | IDENTIFIER of (
# 26 "Parsing/OuterParser.mly"
       (string)
# 83 "Parsing/Parser.ml"
  )
    | FOR
    | FLOAT_LIT of (
# 39 "Parsing/InnerParser.mly"
       (string)
# 89 "Parsing/Parser.ml"
  )
    | FLOAT
    | FINALLY
    | FINAL
    | FALSE
    | EXTENDS
    | EOF
    | ELSE
    | DOUBLE
    | DOT
    | DO
    | DEFAULT
    | COMMA
    | COLON
    | CLASS
    | CHAR_LIT of (
# 41 "Parsing/InnerParser.mly"
       (char option)
# 108 "Parsing/Parser.ml"
  )
    | CHAR
    | CATCH
    | CASE
    | BYTE
    | BREAK
    | BOOLEAN
    | ASS_XOR
    | ASS_SUB
    | ASS_SHRR
    | ASS_SHR
    | ASS_SHL
    | ASS_OR
    | ASS_MUL
    | ASS_MOD
    | ASS_DIV
    | ASS_AND
    | ASS_ADD
    | ASSIGN
    | ASSERT
    | ABSTRACT
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState572
  | MenhirState570
  | MenhirState566
  | MenhirState559
  | MenhirState558
  | MenhirState557
  | MenhirState552
  | MenhirState550
  | MenhirState543
  | MenhirState542
  | MenhirState541
  | MenhirState540
  | MenhirState536
  | MenhirState535
  | MenhirState534
  | MenhirState524
  | MenhirState521
  | MenhirState514
  | MenhirState513
  | MenhirState508
  | MenhirState504
  | MenhirState503
  | MenhirState501
  | MenhirState500
  | MenhirState497
  | MenhirState496
  | MenhirState489
  | MenhirState488
  | MenhirState485
  | MenhirState484
  | MenhirState483
  | MenhirState480
  | MenhirState479
  | MenhirState476
  | MenhirState475
  | MenhirState472
  | MenhirState471
  | MenhirState470
  | MenhirState468
  | MenhirState466
  | MenhirState463
  | MenhirState460
  | MenhirState459
  | MenhirState457
  | MenhirState456
  | MenhirState452
  | MenhirState450
  | MenhirState449
  | MenhirState448
  | MenhirState444
  | MenhirState443
  | MenhirState440
  | MenhirState439
  | MenhirState436
  | MenhirState431
  | MenhirState428
  | MenhirState427
  | MenhirState426
  | MenhirState425
  | MenhirState424
  | MenhirState423
  | MenhirState422
  | MenhirState420
  | MenhirState419
  | MenhirState416
  | MenhirState414
  | MenhirState413
  | MenhirState410
  | MenhirState409
  | MenhirState408
  | MenhirState405
  | MenhirState404
  | MenhirState402
  | MenhirState397
  | MenhirState396
  | MenhirState394
  | MenhirState392
  | MenhirState390
  | MenhirState389
  | MenhirState388
  | MenhirState387
  | MenhirState386
  | MenhirState385
  | MenhirState384
  | MenhirState383
  | MenhirState381
  | MenhirState379
  | MenhirState377
  | MenhirState376
  | MenhirState374
  | MenhirState373
  | MenhirState371
  | MenhirState370
  | MenhirState368
  | MenhirState367
  | MenhirState365
  | MenhirState364
  | MenhirState362
  | MenhirState361
  | MenhirState359
  | MenhirState358
  | MenhirState356
  | MenhirState355
  | MenhirState349
  | MenhirState347
  | MenhirState346
  | MenhirState345
  | MenhirState342
  | MenhirState341
  | MenhirState340
  | MenhirState338
  | MenhirState336
  | MenhirState335
  | MenhirState334
  | MenhirState333
  | MenhirState332
  | MenhirState331
  | MenhirState330
  | MenhirState329
  | MenhirState328
  | MenhirState327
  | MenhirState326
  | MenhirState325
  | MenhirState324
  | MenhirState323
  | MenhirState322
  | MenhirState321
  | MenhirState320
  | MenhirState319
  | MenhirState318
  | MenhirState317
  | MenhirState316
  | MenhirState315
  | MenhirState314
  | MenhirState313
  | MenhirState312
  | MenhirState311
  | MenhirState310
  | MenhirState309
  | MenhirState308
  | MenhirState307
  | MenhirState306
  | MenhirState304
  | MenhirState303
  | MenhirState302
  | MenhirState301
  | MenhirState300
  | MenhirState299
  | MenhirState298
  | MenhirState297
  | MenhirState296
  | MenhirState293
  | MenhirState291
  | MenhirState289
  | MenhirState287
  | MenhirState285
  | MenhirState283
  | MenhirState281
  | MenhirState279
  | MenhirState276
  | MenhirState274
  | MenhirState272
  | MenhirState271
  | MenhirState270
  | MenhirState269
  | MenhirState268
  | MenhirState267
  | MenhirState266
  | MenhirState265
  | MenhirState264
  | MenhirState263
  | MenhirState262
  | MenhirState261
  | MenhirState260
  | MenhirState259
  | MenhirState258
  | MenhirState257
  | MenhirState256
  | MenhirState255
  | MenhirState254
  | MenhirState253
  | MenhirState252
  | MenhirState251
  | MenhirState250
  | MenhirState249
  | MenhirState248
  | MenhirState247
  | MenhirState246
  | MenhirState245
  | MenhirState244
  | MenhirState243
  | MenhirState242
  | MenhirState241
  | MenhirState240
  | MenhirState239
  | MenhirState238
  | MenhirState237
  | MenhirState236
  | MenhirState235
  | MenhirState234
  | MenhirState233
  | MenhirState232
  | MenhirState231
  | MenhirState230
  | MenhirState229
  | MenhirState228
  | MenhirState227
  | MenhirState226
  | MenhirState225
  | MenhirState220
  | MenhirState218
  | MenhirState216
  | MenhirState212
  | MenhirState211
  | MenhirState210
  | MenhirState209
  | MenhirState208
  | MenhirState207
  | MenhirState206
  | MenhirState202
  | MenhirState199
  | MenhirState198
  | MenhirState197
  | MenhirState196
  | MenhirState195
  | MenhirState193
  | MenhirState190
  | MenhirState189
  | MenhirState186
  | MenhirState185
  | MenhirState182
  | MenhirState181
  | MenhirState177
  | MenhirState176
  | MenhirState172
  | MenhirState171
  | MenhirState166
  | MenhirState165
  | MenhirState161
  | MenhirState160
  | MenhirState159
  | MenhirState158
  | MenhirState157
  | MenhirState156
  | MenhirState155
  | MenhirState154
  | MenhirState150
  | MenhirState148
  | MenhirState146
  | MenhirState144
  | MenhirState142
  | MenhirState141
  | MenhirState140
  | MenhirState139
  | MenhirState138
  | MenhirState135
  | MenhirState134
  | MenhirState126
  | MenhirState124
  | MenhirState122
  | MenhirState121
  | MenhirState120
  | MenhirState118
  | MenhirState116
  | MenhirState115
  | MenhirState113
  | MenhirState110
  | MenhirState103
  | MenhirState102
  | MenhirState100
  | MenhirState95
  | MenhirState93
  | MenhirState91
  | MenhirState89
  | MenhirState87
  | MenhirState85
  | MenhirState83
  | MenhirState81
  | MenhirState78
  | MenhirState76
  | MenhirState75
  | MenhirState73
  | MenhirState67
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState50
  | MenhirState47
  | MenhirState42
  | MenhirState39
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState25
  | MenhirState24
  | MenhirState23
  | MenhirState18
  | MenhirState15
  | MenhirState10
  | MenhirState3
  | MenhirState2
  | MenhirState1

# 1 "Parsing/InnerParser.mly"
  
    open AST
    open Type

    let rec listOfNames_form_exp = function
      | { edesc = Name(id) } -> [id]
      | { edesc = Attr(o,id) } -> (listOfNames_form_exp o)@[id]

    let rec listOfTypes_form_exp = function
      | { edesc = Name(id) } -> Ref (Type.mk_type [] id)
      | { edesc = Attr(o,id) } -> Ref (Type.mk_type (listOfNames_form_exp o) id)
      | { edesc = Array(e,el) } -> Array(listOfTypes_form_exp e,List.length el)
      | e -> failwith ("bug listOfTypes_form_exp("^(string_of_expression e)^")")

# 466 "Parsing/Parser.ml"

# 1 "Parsing/OuterParser.mly"
  
    open AST
    open Type

    let rec separate = function
      | [] -> [], [], [], [], []
      | `Initializer(i) :: t -> let atts, inits, meths, consts, types = separate t in atts, i::inits, meths, consts, types
      | `AttList(al) :: t -> let atts, inits, meths, consts, types = separate t in al@atts, inits, meths, consts, types
      | `Meth(m) :: t -> let atts, inits, meths, consts, types = separate t in atts, inits, m::meths, consts, types
      | `Const(c) :: t -> let atts, inits, meths, consts, types = separate t in atts, inits, meths, c::consts, types
      | `Class(c) :: t -> let atts, inits, meths, consts, types = separate t in atts, inits, meths, consts, c::types

# 481 "Parsing/Parser.ml"

let rec _menhir_goto_variableInitializerRest : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState347 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : (AST.expression list)) = _v in
        let ((_menhir_stack, _menhir_s), _, (e : (
# 65 "Parsing/InnerParser.mly"
      (AST.expression)
# 493 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (AST.expression list) = 
# 167 "Parsing/InnerParser.mly"
                                                              ( e :: l )
# 499 "Parsing/Parser.ml"
         in
        _menhir_goto_variableInitializerRest _menhir_env _menhir_stack _menhir_s _v
    | MenhirState345 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : (AST.expression list)) = _v in
        let (_menhir_stack, _menhir_s, (e : (
# 65 "Parsing/InnerParser.mly"
      (AST.expression)
# 509 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _v : (AST.expression list) = 
# 162 "Parsing/InnerParser.mly"
                                                        ( e :: l )
# 514 "Parsing/Parser.ml"
         in
        _menhir_goto_variableInitializers _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce228 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.expression option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 525 "Parsing/Parser.ml"
     in
    _menhir_goto_option_arrayInitializer_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce230 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 538 "Parsing/Parser.ml"
     in
    _menhir_goto_option_body_list_classContent___ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nonempty_list_pair_LBRACKET_RBRACKET__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((unit * unit) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState276 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((unit * unit) list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let y0 = () in
        let x0 = () in
        let _v : ((unit * unit) list) = let x =
          let y = y0 in
          let x = x0 in
          
# 155 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( (x, y) )
# 558 "Parsing/Parser.ml"
          
        in
        
# 211 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 564 "Parsing/Parser.ml"
         in
        _menhir_goto_nonempty_list_pair_LBRACKET_RBRACKET__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState274 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let _10 = () in
        let _v : (Type.t) = let t =
          let _1 = _10 in
          
# 116 "Parsing/OuterParser.mly"
            ( Type.Short  )
# 577 "Parsing/Parser.ml"
          
        in
        
# 241 "Parsing/InnerParser.mly"
                                                             ( Array(Primitive t,List.length l) )
# 583 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let _10 = () in
        let _v : (Type.t) = let t =
          let _1 = _10 in
          
# 118 "Parsing/OuterParser.mly"
            ( Type.Long   )
# 596 "Parsing/Parser.ml"
          
        in
        
# 241 "Parsing/InnerParser.mly"
                                                             ( Array(Primitive t,List.length l) )
# 602 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | MenhirState281 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let _10 = () in
        let _v : (Type.t) = let t =
          let _1 = _10 in
          
# 117 "Parsing/OuterParser.mly"
            ( Type.Int    )
# 615 "Parsing/Parser.ml"
          
        in
        
# 241 "Parsing/InnerParser.mly"
                                                             ( Array(Primitive t,List.length l) )
# 621 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | MenhirState283 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let (_menhir_stack, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 631 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _v : (Type.t) = 
# 240 "Parsing/InnerParser.mly"
                                                           ( Array(Ref(Type.mk_type [] id),List.length l) )
# 636 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | MenhirState285 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let _10 = () in
        let _v : (Type.t) = let t =
          let _1 = _10 in
          
# 119 "Parsing/OuterParser.mly"
            ( Type.Float  )
# 649 "Parsing/Parser.ml"
          
        in
        
# 241 "Parsing/InnerParser.mly"
                                                             ( Array(Primitive t,List.length l) )
# 655 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | MenhirState287 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let _10 = () in
        let _v : (Type.t) = let t =
          let _1 = _10 in
          
# 120 "Parsing/OuterParser.mly"
            ( Type.Double )
# 668 "Parsing/Parser.ml"
          
        in
        
# 241 "Parsing/InnerParser.mly"
                                                             ( Array(Primitive t,List.length l) )
# 674 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | MenhirState289 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let _10 = () in
        let _v : (Type.t) = let t =
          let _1 = _10 in
          
# 114 "Parsing/OuterParser.mly"
            ( Type.Char   )
# 687 "Parsing/Parser.ml"
          
        in
        
# 241 "Parsing/InnerParser.mly"
                                                             ( Array(Primitive t,List.length l) )
# 693 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | MenhirState291 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let _10 = () in
        let _v : (Type.t) = let t =
          let _1 = _10 in
          
# 115 "Parsing/OuterParser.mly"
            ( Type.Byte   )
# 706 "Parsing/Parser.ml"
          
        in
        
# 241 "Parsing/InnerParser.mly"
                                                             ( Array(Primitive t,List.length l) )
# 712 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | MenhirState293 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : ((unit * unit) list)) = _v in
        let _10 = () in
        let _v : (Type.t) = let t =
          let _1 = _10 in
          
# 113 "Parsing/OuterParser.mly"
            ( Type.Boolean )
# 725 "Parsing/Parser.ml"
          
        in
        
# 241 "Parsing/InnerParser.mly"
                                                             ( Array(Primitive t,List.length l) )
# 731 "Parsing/Parser.ml"
         in
        _menhir_goto_typeExpr _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_catch_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((AST.argument * AST.statement list) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState397 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (p0 : (AST.argument))), _, (b0 : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 747 "Parsing/Parser.ml"
        ))), _, (xs : ((AST.argument * AST.statement list) list))) = _menhir_stack in
        let _40 = () in
        let _20 = () in
        let _10 = () in
        let _v : ((AST.argument * AST.statement list) list) = let x =
          let b = b0 in
          let _4 = _40 in
          let p = p0 in
          let _2 = _20 in
          let _1 = _10 in
          
# 141 "Parsing/InnerParser.mly"
                                                  ( p,b )
# 761 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 767 "Parsing/Parser.ml"
         in
        _menhir_goto_list_catch_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState392 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FINALLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState402
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_body_list_classContent___ : _menhir_env -> 'ttv_tail -> _menhir_state -> ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState220 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_8 : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list option)) = _v in
        let ((((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 813 "Parsing/Parser.ml"
        ))), _), _, (l0 : (string list))), _, (xs0 : (AST.expression list))) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 822 "Parsing/Parser.ml"
        ) = let params =
          let xs = xs0 in
          
# 220 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 828 "Parsing/Parser.ml"
          
        in
        let id =
          let l = l0 in
          
# 244 "Parsing/InnerParser.mly"
                                                              ( l )
# 836 "Parsing/Parser.ml"
          
        in
        
# 209 "Parsing/InnerParser.mly"
                                                                                                                             (
      match o with
      | { edesc = Name(n) } -> { edesc = New(Some n,id,params); etype = None } )
# 844 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState379 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_6 : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list option)) = _v in
        let ((((_menhir_stack, _menhir_s), _, (l0 : (string list))), _), _, (xs0 : (AST.expression list))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 862 "Parsing/Parser.ml"
        ) = let params =
          let xs = xs0 in
          
# 220 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 868 "Parsing/Parser.ml"
          
        in
        let id =
          let l = l0 in
          
# 244 "Parsing/InnerParser.mly"
                                                              ( l )
# 876 "Parsing/Parser.ml"
          
        in
        
# 213 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = New(None,id,params); etype = None } )
# 882 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_arrayInitializer_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState341 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _10 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 901 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 116 "Parsing/OuterParser.mly"
            ( Type.Short  )
# 907 "Parsing/Parser.ml"
          
        in
        
# 215 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = NewArray(Primitive t,tab,init); etype = None } )
# 913 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState356 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _10 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 926 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 118 "Parsing/OuterParser.mly"
            ( Type.Long   )
# 932 "Parsing/Parser.ml"
          
        in
        
# 215 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = NewArray(Primitive t,tab,init); etype = None } )
# 938 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState359 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _10 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 951 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 117 "Parsing/OuterParser.mly"
            ( Type.Int    )
# 957 "Parsing/Parser.ml"
          
        in
        
# 215 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = NewArray(Primitive t,tab,init); etype = None } )
# 963 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState362 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _10 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 976 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 119 "Parsing/OuterParser.mly"
            ( Type.Float  )
# 982 "Parsing/Parser.ml"
          
        in
        
# 215 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = NewArray(Primitive t,tab,init); etype = None } )
# 988 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState365 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _10 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1001 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 120 "Parsing/OuterParser.mly"
            ( Type.Double )
# 1007 "Parsing/Parser.ml"
          
        in
        
# 215 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = NewArray(Primitive t,tab,init); etype = None } )
# 1013 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState368 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _10 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1026 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 114 "Parsing/OuterParser.mly"
            ( Type.Char   )
# 1032 "Parsing/Parser.ml"
          
        in
        
# 215 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = NewArray(Primitive t,tab,init); etype = None } )
# 1038 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState371 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _10 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1051 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 115 "Parsing/OuterParser.mly"
            ( Type.Byte   )
# 1057 "Parsing/Parser.ml"
          
        in
        
# 215 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = NewArray(Primitive t,tab,init); etype = None } )
# 1063 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState374 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _10 = () in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1076 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 113 "Parsing/OuterParser.mly"
            ( Type.Boolean )
# 1082 "Parsing/Parser.ml"
          
        in
        
# 215 "Parsing/InnerParser.mly"
                                                                                                            ( { edesc = NewArray(Primitive t,tab,init); etype = None } )
# 1088 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState381 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (init : (AST.expression option)) = _v in
        let (((_menhir_stack, _menhir_s), _, (l0 : (string list))), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1100 "Parsing/Parser.ml"
        ) = let id =
          let l = l0 in
          
# 244 "Parsing/InnerParser.mly"
                                                              ( l )
# 1106 "Parsing/Parser.ml"
          
        in
        
# 214 "Parsing/InnerParser.mly"
                                                                                                              ( { edesc = NewArray(Ref(Type.extract_type id),tab,init); etype = None } )
# 1112 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_switchStatement_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState422 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (unit))), _, (xs : (unit list))) = _menhir_stack in
        let _v : (unit list) = 
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1129 "Parsing/Parser.ml"
         in
        _menhir_goto_list_switchStatement_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState416 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (x : (unit list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit list) = 
# 79 "Parsing/OuterParser.mly"
                                   ( x )
# 1147 "Parsing/Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (unit list)) = _v in
            let (((_menhir_stack, _menhir_s), _, (_3 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1155 "Parsing/Parser.ml"
            ))), _) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (AST.statement) = 
# 110 "Parsing/InnerParser.mly"
                                                             ( Nop )
# 1163 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce286 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.expression list) = 
# 165 "Parsing/InnerParser.mly"
               ( [] )
# 1180 "Parsing/Parser.ml"
     in
    _menhir_goto_variableInitializerRest _menhir_env _menhir_stack _menhir_s _v

and _menhir_run346 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
    | LBRACE ->
        _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState346
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (AST.expression list) = 
# 166 "Parsing/InnerParser.mly"
          ( [] )
# 1251 "Parsing/Parser.ml"
         in
        _menhir_goto_variableInitializerRest _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState346

and _menhir_goto_nonempty_list_delimited_LBRACKET_option_expression__RBRACKET__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression option list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState193 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e : (AST.expression))), _, (tab : (AST.expression option list))) = _menhir_stack in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1270 "Parsing/Parser.ml"
        ) = 
# 216 "Parsing/InnerParser.mly"
                                                                                         (
      { edesc = Array(e,tab); etype = None }
    )
# 1276 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState338 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (x0 : (AST.expression option))), _, (xs : (AST.expression option list))) = _menhir_stack in
        let _30 = () in
        let _10 = () in
        let _v : (AST.expression option list) = let x =
          let _3 = _30 in
          let x = x0 in
          let _1 = _10 in
          
# 188 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 1292 "Parsing/Parser.ml"
          
        in
        
# 211 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1298 "Parsing/Parser.ml"
         in
        _menhir_goto_nonempty_list_delimited_LBRACKET_option_expression__RBRACKET__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState341
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState341
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState341)
    | MenhirState355 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState356
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState356
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState356)
    | MenhirState358 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState359
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState359
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState359)
    | MenhirState361 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState362
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState362
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState362)
    | MenhirState364 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState365
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState365
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState365)
    | MenhirState367 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState368
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState368
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState368)
    | MenhirState370 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState371)
    | MenhirState373 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState374
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState374
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState374)
    | MenhirState376 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState381
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            _menhir_reduce228 _menhir_env (Obj.magic _menhir_stack) MenhirState381
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState381)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1440 "Parsing/Parser.ml"
                ))), _), _, (xs0 : (AST.expression list))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (AST.expression) = let params =
                  let xs = xs0 in
                  
# 220 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1449 "Parsing/Parser.ml"
                  
                in
                
# 232 "Parsing/InnerParser.mly"
                                                                       (
      match o with
      | { edesc = Name(id) } -> { edesc = Call(None,id,params); etype = None }
      | { edesc = Attr(o,id) } -> { edesc = Call(Some o,id,params); etype = None }
    )
# 1459 "Parsing/Parser.ml"
                 in
                _menhir_goto_expressionSansBracket _menhir_env _menhir_stack _menhir_s _v
            | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1467 "Parsing/Parser.ml"
                ))), _), _, (xs0 : (AST.expression list))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1474 "Parsing/Parser.ml"
                ) = let params =
                  let xs = xs0 in
                  
# 220 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1480 "Parsing/Parser.ml"
                  
                in
                
# 203 "Parsing/InnerParser.mly"
                                                                       (
      match o with
      | { edesc = Name(id) } -> { edesc = Call(None,id,params); etype = None }
      | { edesc = Attr(o,id) } -> { edesc = Call(Some o,id,params); etype = None } )
# 1489 "Parsing/Parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState218 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
                _menhir_reduce230 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState377 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState379
            | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
                _menhir_reduce230 _menhir_env (Obj.magic _menhir_stack) MenhirState379
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState379)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState468 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ASSERT ->
                _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | BOOLEAN ->
                _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | BREAK ->
                _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | BYTE ->
                _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | CHAR ->
                _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState470 _v
            | CLASS ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | DO ->
                _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | DOUBLE ->
                _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | FINAL ->
                _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | FLOAT ->
                _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState470 _v
            | FOR ->
                _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | IDENTIFIER _v ->
                _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState470 _v
            | IF ->
                _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | INT ->
                _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | INTERFACE ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState470 _v
            | LBRACE ->
                _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | LONG ->
                _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | RETURN ->
                _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | SEMI ->
                _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | SHORT ->
                _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState470 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | SWITCH ->
                _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | SYNCHRONIZED ->
                _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | THROW ->
                _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | TRY ->
                _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | WHILE ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState470
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState470)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typeExpr : _menhir_env -> 'ttv_tail -> (Type.t) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (t : (Type.t)) = _v in
    let ((_menhir_stack, _menhir_s, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1667 "Parsing/Parser.ml"
    ))), _) = _menhir_stack in
    let _2 = () in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 1673 "Parsing/Parser.ml"
    ) = 
# 182 "Parsing/InnerParser.mly"
                                       ( { edesc = Instanceof(e,t); etype = None } )
# 1677 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run275 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState276
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            let y0 = () in
            let x0 = () in
            let _v : ((unit * unit) list) = let x =
              let y = y0 in
              let x = x0 in
              
# 155 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( (x, y) )
# 1705 "Parsing/Parser.ml"
              
            in
            
# 209 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1711 "Parsing/Parser.ml"
             in
            _menhir_goto_nonempty_list_pair_LBRACKET_RBRACKET__ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState276)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce194 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.expression list) = 
# 142 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 1730 "Parsing/Parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nonempty_list_catch_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((AST.argument * AST.statement list) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState397 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((AST.argument * AST.statement list) list)) = _v in
        let (((_menhir_stack, _menhir_s), _, (p0 : (AST.argument))), _, (b0 : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 1744 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _40 = () in
        let _20 = () in
        let _10 = () in
        let _v : ((AST.argument * AST.statement list) list) = let x =
          let b = b0 in
          let _4 = _40 in
          let p = p0 in
          let _2 = _20 in
          let _1 = _10 in
          
# 141 "Parsing/InnerParser.mly"
                                                  ( p,b )
# 1758 "Parsing/Parser.ml"
          
        in
        
# 211 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1764 "Parsing/Parser.ml"
         in
        _menhir_goto_nonempty_list_catch_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState392 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (c : ((AST.argument * AST.statement list) list)) = _v in
        let ((_menhir_stack, _menhir_s), _, (b1 : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 1774 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (AST.statement) = 
# 106 "Parsing/InnerParser.mly"
                          (
  Try (b1,c,[])
    )
# 1782 "Parsing/Parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce168 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((AST.argument * AST.statement list) list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 1793 "Parsing/Parser.ml"
     in
    _menhir_goto_list_catch_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run393 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FINAL ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState394
        | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENTIFIER _ | INT | LONG | SHORT ->
            _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState394
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState394)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_classDeclaration : _menhir_env -> 'ttv_tail -> _menhir_state -> (string * AST.type_info) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState124 | MenhirState389 | MenhirState524 | MenhirState423 | MenhirState521 | MenhirState450 | MenhirState452 | MenhirState470 | MenhirState483 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (c : (string * AST.type_info)) = _v in
        let _v : (AST.statement) = 
# 116 "Parsing/InnerParser.mly"
                         ( Nop )
# 1833 "Parsing/Parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (c : (string * AST.type_info)) = _v in
        let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ]) = 
# 154 "Parsing/OuterParser.mly"
                         (
       let id, info = c in
       `Class { modifiers = [] ; id = id ; info = info } 
    )
# 1849 "Parsing/Parser.ml"
         in
        _menhir_goto_memberDecl _menhir_env _menhir_stack _menhir_s _v
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (c : (string * AST.type_info)) = _v in
        let _v : (unit) = 
# 163 "Parsing/OuterParser.mly"
                         ( )
# 1859 "Parsing/Parser.ml"
         in
        _menhir_goto_interfaceMemberDecl _menhir_env _menhir_stack _menhir_s _v
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (c : (string * AST.type_info)) = _v in
        let (_menhir_stack, _menhir_s, (ml : (AST.modifier list))) = _menhir_stack in
        let _v : (AST.asttype) = 
# 65 "Parsing/OuterParser.mly"
                                             (
       let id, info = c in
       { modifiers = ml ; id = id ; info = info } 
    )
# 1873 "Parsing/Parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABSTRACT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | FINAL ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | PRIVATE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | PROTECTED ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | PUBLIC ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | STATIC ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | STRICTFP ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | EOF ->
            _menhir_reduce180 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | CLASS | INTERFACE ->
            _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState570
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState570)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_classContent_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (x : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list) = 
# 79 "Parsing/OuterParser.mly"
                                   ( x )
# 1936 "Parsing/Parser.ml"
             in
            (match _menhir_s with
            | MenhirState379 | MenhirState220 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (x : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list)) = _v in
                let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list option) = 
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 1954 "Parsing/Parser.ml"
                 in
                _menhir_goto_option_body_list_classContent___ _menhir_env _menhir_stack _menhir_s _v
            | MenhirState115 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (cl : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list)) = _v in
                let ((((_menhir_stack, _menhir_s), (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 1968 "Parsing/Parser.ml"
                ))), (ext : (Type.ref_type option))), (_4 : (Type.ref_type list option))) = _menhir_stack in
                let _1 = () in
                let _v : (string * AST.type_info) = 
# 83 "Parsing/OuterParser.mly"
                                                                                                                                                                               (
	let extends = match ext with
	  | None -> object_type
	  | Some t -> t in
	let atts, inits, meths, consts, types = separate cl in
	id , Class {
		       cparent = extends;
		       cattributes = atts;
		       cinits = inits;
		       cconsts = consts;
		       cmethods = meths;
		       ctypes = types;
		       cloc = Location.none;
		     }
    )
# 1988 "Parsing/Parser.ml"
                 in
                _menhir_goto_classDeclaration _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState550 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ]))), _, (xs : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list))) = _menhir_stack in
        let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list) = 
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2018 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classContent_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_boption_STATIC_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (bool) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState552
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState552

and _menhir_goto_separated_nonempty_list_COMMA_variableDeclarator2_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * AST.expression option) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState459 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((string * AST.expression option) list)) = _v in
        let ((_menhir_stack, _menhir_s, (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 2048 "Parsing/Parser.ml"
        ))), _, (init0 : (AST.expression option))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * AST.expression option) list) = let x =
          let init = init0 in
          let id = id0 in
          
# 154 "Parsing/InnerParser.mly"
                                                                    ( id, init )
# 2057 "Parsing/Parser.ml"
          
        in
        
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2063 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_variableDeclarator2_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState456 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (vdl : ((string * AST.expression option) list)) = _v in
        let (_menhir_stack, (_1 : (unit option))) = _menhir_stack in
        let _v : ((Type.t option * string * AST.expression option) list) = 
# 146 "Parsing/InnerParser.mly"
                                                                             ( List.map (fun (id,init) -> None , id, init) vdl )
# 2074 "Parsing/Parser.ml"
         in
        _menhir_goto_forInit _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_variableDeclarator_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * AST.expression option) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState431 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 2090 "Parsing/Parser.ml"
        ))), _, (_20 : ((unit * unit) list))), _, (init0 : (AST.expression option))), _, (xs : ((string * AST.expression option) list))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * AST.expression option) list) = let x =
          let init = init0 in
          let _2 = _20 in
          let id = id0 in
          
# 151 "Parsing/InnerParser.mly"
                                                                                                  ( id, init )
# 2100 "Parsing/Parser.ml"
          
        in
        
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2106 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_variableDeclarator_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState425 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let p =
              let _1 = _10 in
              
# 116 "Parsing/OuterParser.mly"
            ( Type.Short  )
# 2126 "Parsing/Parser.ml"
              
            in
            
# 122 "Parsing/InnerParser.mly"
                                                                                                                   (
  let t = if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p in
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2135 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState440 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let p =
              let _1 = _10 in
              
# 118 "Parsing/OuterParser.mly"
            ( Type.Long   )
# 2161 "Parsing/Parser.ml"
              
            in
            
# 122 "Parsing/InnerParser.mly"
                                                                                                                   (
  let t = if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p in
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2170 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState444 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let p =
              let _1 = _10 in
              
# 117 "Parsing/OuterParser.mly"
            ( Type.Int    )
# 2196 "Parsing/Parser.ml"
              
            in
            
# 122 "Parsing/InnerParser.mly"
                                                                                                                   (
  let t = if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p in
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2205 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState463 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, (_1 : (unit option))), _, (t : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 2220 "Parsing/Parser.ml"
        ))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
        let _v : ((Type.t option * string * AST.expression option) list) = 
# 145 "Parsing/InnerParser.mly"
                                                                                    ( List.map (fun (id,init) -> Some t, id, init) vdl )
# 2225 "Parsing/Parser.ml"
         in
        _menhir_goto_forInit _menhir_env _menhir_stack _v
    | MenhirState472 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let p =
              let _1 = _10 in
              
# 119 "Parsing/OuterParser.mly"
            ( Type.Float  )
# 2245 "Parsing/Parser.ml"
              
            in
            
# 122 "Parsing/InnerParser.mly"
                                                                                                                   (
  let t = if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p in
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2254 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState476 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (t : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 2275 "Parsing/Parser.ml"
            ))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let _1 =
              let _1 = _10 in
              
# 147 "Parsing/InnerParser.mly"
                                ( )
# 2284 "Parsing/Parser.ml"
              
            in
            
# 76 "Parsing/InnerParser.mly"
                                                                                        (
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2292 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState480 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let p =
              let _1 = _10 in
              
# 120 "Parsing/OuterParser.mly"
            ( Type.Double )
# 2318 "Parsing/Parser.ml"
              
            in
            
# 122 "Parsing/InnerParser.mly"
                                                                                                                   (
  let t = if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p in
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2327 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState485 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let p =
              let _1 = _10 in
              
# 114 "Parsing/OuterParser.mly"
            ( Type.Char   )
# 2353 "Parsing/Parser.ml"
              
            in
            
# 122 "Parsing/InnerParser.mly"
                                                                                                                   (
  let t = if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p in
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2362 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState489 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let p =
              let _1 = _10 in
              
# 115 "Parsing/OuterParser.mly"
            ( Type.Byte   )
# 2388 "Parsing/Parser.ml"
              
            in
            
# 122 "Parsing/InnerParser.mly"
                                                                                                                   (
  let t = if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p in
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2397 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState497 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _v : (AST.statement) = let p =
              let _1 = _10 in
              
# 113 "Parsing/OuterParser.mly"
            ( Type.Boolean )
# 2423 "Parsing/Parser.ml"
              
            in
            
# 122 "Parsing/InnerParser.mly"
                                                                                                                   (
  let t = if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p in
  VarDecl (List.map (fun (id,init) -> t, id, init) vdl)
    )
# 2432 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState508 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 2447 "Parsing/Parser.ml"
        ))), _, (vdl : ((string * AST.expression option) list))) = _menhir_stack in
        let _v : ([ `Decl of AST.statement | `Exp of AST.expression ]) = 
# 135 "Parsing/InnerParser.mly"
                                                                        (
      let t = listOfTypes_form_exp o in
      `Decl (VarDecl (List.map (fun (id,init) -> t, id, init) vdl))
    )
# 2455 "Parsing/Parser.ml"
         in
        _menhir_goto_expression0 _menhir_env _menhir_stack _menhir_s _v
    | MenhirState540 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 2470 "Parsing/Parser.ml"
            ))), _, (vars : ((string * AST.expression option) list))) = _menhir_stack in
            let _3 = () in
            let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ]) = 
# 136 "Parsing/OuterParser.mly"
                                                                        (
        `AttList (List.map (fun (id,init) -> { amodifiers = [] ; atype = t ; aname = id ; adefault = init }) vars)
    )
# 2481 "Parsing/Parser.ml"
             in
            _menhir_goto_memberDecl _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState557 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 2502 "Parsing/Parser.ml"
            ))), _, (vars : ((string * AST.expression option) list))) = _menhir_stack in
            let _3 = () in
            let _v : (unit) = 
# 160 "Parsing/OuterParser.mly"
                                                                        ( )
# 2508 "Parsing/Parser.ml"
             in
            _menhir_goto_interfaceMemberDecl _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_variableInitializers : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (x : (AST.expression list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (AST.expression list) = 
# 79 "Parsing/OuterParser.mly"
                                   ( x )
# 2537 "Parsing/Parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (l : (AST.expression list)) = _v in
        let _v : (AST.expression) = 
# 170 "Parsing/InnerParser.mly"
                                 ( { edesc = ArrayInit l; etype = None } )
# 2545 "Parsing/Parser.ml"
         in
        (match _menhir_s with
        | MenhirState428 | MenhirState342 | MenhirState346 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (e : (AST.expression)) = _v in
            let _v : (
# 65 "Parsing/InnerParser.mly"
      (AST.expression)
# 2555 "Parsing/Parser.ml"
            ) = 
# 158 "Parsing/InnerParser.mly"
                         ( e )
# 2559 "Parsing/Parser.ml"
             in
            _menhir_goto_variableInitializer _menhir_env _menhir_stack _menhir_s _v
        | MenhirState381 | MenhirState374 | MenhirState371 | MenhirState368 | MenhirState365 | MenhirState362 | MenhirState359 | MenhirState356 | MenhirState341 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (x : (AST.expression)) = _v in
            let _v : (AST.expression option) = 
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 2569 "Parsing/Parser.ml"
             in
            _menhir_goto_option_arrayInitializer_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_DOT_name_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState150 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 2591 "Parsing/Parser.ml"
        ))), _, (xs : (string list))) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = let x =
          let id = id0 in
          
# 257 "Parsing/InnerParser.mly"
                  ( id )
# 2599 "Parsing/Parser.ml"
          
        in
        
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2605 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_DOT_name_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState148 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (string list))) = _menhir_stack in
        let _2 = () in
        let _10 = () in
        let _v : (string list) = let x =
          let _1 = _10 in
          
# 256 "Parsing/InnerParser.mly"
          ( "super" )
# 2619 "Parsing/Parser.ml"
          
        in
        
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2625 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_DOT_name_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (string list))) = _menhir_stack in
        let _2 = () in
        let _10 = () in
        let _v : (string list) = let x =
          let _1 = _10 in
          
# 255 "Parsing/InnerParser.mly"
         ( "this" )
# 2639 "Parsing/Parser.ml"
          
        in
        
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2645 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_DOT_name_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState216 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | RPAREN ->
                _menhir_reduce194 _menhir_env (Obj.magic _menhir_stack) MenhirState218
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState376
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState376 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState377 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState377 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState377 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState377 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState377 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | RPAREN ->
                _menhir_reduce194 _menhir_env (Obj.magic _menhir_stack) MenhirState377
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState377)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState376)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expression0 : _menhir_env -> 'ttv_tail -> _menhir_state -> ([ `Decl of AST.statement | `Exp of AST.expression ]) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (e : ([ `Decl of AST.statement | `Exp of AST.expression ]))) = _menhir_stack in
        let _2 = () in
        let _v : (AST.statement) = 
# 117 "Parsing/InnerParser.mly"
                       (
  match e with
  | `Exp e -> Expr e
  | `Decl e -> e
    )
# 2821 "Parsing/Parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_switchLabel : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | BOOLEAN ->
        _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | BREAK ->
        _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | BYTE ->
        _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | CHAR ->
        _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState423 _v
    | CLASS ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | DO ->
        _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | DOUBLE ->
        _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | FINAL ->
        _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | FLOAT ->
        _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState423 _v
    | FOR ->
        _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | IDENTIFIER _v ->
        _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState423 _v
    | IF ->
        _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | INT ->
        _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | INTERFACE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState423 _v
    | LBRACE ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | LONG ->
        _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | RETURN ->
        _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | SEMI ->
        _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | SHORT ->
        _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState423 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | SWITCH ->
        _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | SYNCHRONIZED ->
        _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | THROW ->
        _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | TRY ->
        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | WHILE ->
        _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | CASE | DEFAULT | RBRACE ->
        _menhir_reduce166 _menhir_env (Obj.magic _menhir_stack) MenhirState423
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState423

and _menhir_reduce190 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2934 "Parsing/Parser.ml"
     in
    _menhir_goto_list_switchStatement_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run417 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 131 "Parsing/InnerParser.mly"
                  ( )
# 2954 "Parsing/Parser.ml"
         in
        _menhir_goto_switchLabel _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run419 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState419 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState419 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState419 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState419 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState419 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState419
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState419

and _menhir_goto_variableInitializer : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 65 "Parsing/InnerParser.mly"
      (AST.expression)
# 3030 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState342 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run346 _menhir_env (Obj.magic _menhir_stack) MenhirState345
        | RBRACE ->
            _menhir_reduce286 _menhir_env (Obj.magic _menhir_stack) MenhirState345
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState345)
    | MenhirState346 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run346 _menhir_env (Obj.magic _menhir_stack) MenhirState347
        | RBRACE ->
            _menhir_reduce286 _menhir_env (Obj.magic _menhir_stack) MenhirState347
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState347)
    | MenhirState428 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (x0 : (
# 65 "Parsing/InnerParser.mly"
      (AST.expression)
# 3067 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _10 = () in
        let _v : (AST.expression option) = let x =
          let x = x0 in
          let _1 = _10 in
          
# 171 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 3076 "Parsing/Parser.ml"
          
        in
        
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 3082 "Parsing/Parser.ml"
         in
        _menhir_goto_option_preceded_ASSIGN_variableInitializer__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState155 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACKET ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState338
            | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LBRACE | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (x0 : (AST.expression option))) = _menhir_stack in
                let _30 = () in
                let _10 = () in
                let _v : (AST.expression option list) = let x =
                  let _3 = _30 in
                  let x = x0 in
                  let _1 = _10 in
                  
# 188 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 3116 "Parsing/Parser.ml"
                  
                in
                
# 209 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 3122 "Parsing/Parser.ml"
                 in
                _menhir_goto_nonempty_list_delimited_LBRACKET_option_expression__RBRACKET__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState436 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (AST.expression option))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (AST.statement) = 
# 97 "Parsing/InnerParser.mly"
                              (
  Return (e)
    )
# 3152 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState466 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | RPAREN ->
                _menhir_reduce194 _menhir_env (Obj.magic _menhir_stack) MenhirState468
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState468)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState468 | MenhirState377 | MenhirState218 | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (AST.expression list)) = _v in
        let _v : (AST.expression list) = 
# 144 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 3248 "Parsing/Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState304 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (AST.expression list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3258 "Parsing/Parser.ml"
        ))), _) = _menhir_stack in
        let _2 = () in
        let _v : (AST.expression list) = 
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 3264 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run207 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3273 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState207

and _menhir_run209 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3340 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState209

and _menhir_run253 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3407 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState253

and _menhir_run255 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3474 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState255

and _menhir_run269 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3541 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState269
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState269

and _menhir_run257 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3608 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState257

and _menhir_run259 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3675 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState259
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState259

and _menhir_run261 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3742 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState261
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState261

and _menhir_run263 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3809 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState263
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState263

and _menhir_run265 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3876 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState265
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState265

and _menhir_run271 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 3943 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState271
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState271

and _menhir_run300 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4010 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState300 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState300 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState300 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState300 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState300 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState300
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState300

and _menhir_run267 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4077 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState267 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState267 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState267 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState267 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState267 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState267
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState267

and _menhir_run296 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4144 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState296 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState296 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState296 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState296 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState296 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState296
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState296

and _menhir_run298 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4211 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState298
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState298

and _menhir_run273 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4278 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState293)
    | BYTE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState291
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState291)
    | CHAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState289
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState289)
    | DOUBLE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState287
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState287)
    | FLOAT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState285)
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 4353 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _v : (Type.t) = 
# 239 "Parsing/InnerParser.mly"
                  ( Ref(Type.mk_type [] id) )
# 4358 "Parsing/Parser.ml"
             in
            _menhir_goto_typeExpr _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState283)
    | INT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState281
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState281)
    | LONG ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279)
    | SHORT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState274
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState274)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run196 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4408 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196

and _menhir_run198 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4475 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState198

and _menhir_run211 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4542 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211

and _menhir_run200 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4609 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4617 "Parsing/Parser.ml"
    ))) = _menhir_stack in
    let _10 = () in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4623 "Parsing/Parser.ml"
    ) = let op =
      let _1 = _10 in
      
# 251 "Parsing/InnerParser.mly"
           ( Incr )
# 4629 "Parsing/Parser.ml"
      
    in
    
# 178 "Parsing/InnerParser.mly"
                               ( { edesc = Post(e,op); etype = None } )
# 4635 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run249 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4642 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState249

and _menhir_run201 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4709 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4717 "Parsing/Parser.ml"
    ))) = _menhir_stack in
    let _10 = () in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4723 "Parsing/Parser.ml"
    ) = let op =
      let _1 = _10 in
      
# 252 "Parsing/InnerParser.mly"
           ( Decr )
# 4729 "Parsing/Parser.ml"
      
    in
    
# 178 "Parsing/InnerParser.mly"
                               ( { edesc = Post(e,op); etype = None } )
# 4735 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run251 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4742 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState251

and _menhir_run202 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4809 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | RPAREN ->
        _menhir_reduce194 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState202

and _menhir_run213 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4878 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4892 "Parsing/Parser.ml"
        ))), _) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4899 "Parsing/Parser.ml"
        ) = 
# 208 "Parsing/InnerParser.mly"
                            ( { edesc = Attr(o,"class"); etype = None } )
# 4903 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4917 "Parsing/Parser.ml"
            ))), _), (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 4921 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (AST.expression) = let n =
              let id = id0 in
              
# 257 "Parsing/InnerParser.mly"
                  ( id )
# 4929 "Parsing/Parser.ml"
              
            in
            
# 231 "Parsing/InnerParser.mly"
                             ( { edesc = Attr(o,n); etype = None } )
# 4935 "Parsing/Parser.ml"
             in
            _menhir_goto_expressionSansBracket _menhir_env _menhir_stack _menhir_s _v
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4943 "Parsing/Parser.ml"
            ))), _), (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 4947 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4953 "Parsing/Parser.ml"
            ) = let n =
              let id = id0 in
              
# 257 "Parsing/InnerParser.mly"
                  ( id )
# 4959 "Parsing/Parser.ml"
              
            in
            
# 207 "Parsing/InnerParser.mly"
                             ( { edesc = Attr(o,n); etype = None } )
# 4965 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | NEW ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
        | SUPER ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | THIS ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState216)
    | SUPER ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 4999 "Parsing/Parser.ml"
            ))), _) = _menhir_stack in
            let _10 = () in
            let _2 = () in
            let _v : (AST.expression) = let n =
              let _1 = _10 in
              
# 256 "Parsing/InnerParser.mly"
          ( "super" )
# 5008 "Parsing/Parser.ml"
              
            in
            
# 231 "Parsing/InnerParser.mly"
                             ( { edesc = Attr(o,n); etype = None } )
# 5014 "Parsing/Parser.ml"
             in
            _menhir_goto_expressionSansBracket _menhir_env _menhir_stack _menhir_s _v
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5022 "Parsing/Parser.ml"
            ))), _) = _menhir_stack in
            let _10 = () in
            let _2 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5029 "Parsing/Parser.ml"
            ) = let n =
              let _1 = _10 in
              
# 256 "Parsing/InnerParser.mly"
          ( "super" )
# 5035 "Parsing/Parser.ml"
              
            in
            
# 207 "Parsing/InnerParser.mly"
                             ( { edesc = Attr(o,n); etype = None } )
# 5041 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | THIS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5060 "Parsing/Parser.ml"
            ))), _) = _menhir_stack in
            let _10 = () in
            let _2 = () in
            let _v : (AST.expression) = let n =
              let _1 = _10 in
              
# 255 "Parsing/InnerParser.mly"
         ( "this" )
# 5069 "Parsing/Parser.ml"
              
            in
            
# 231 "Parsing/InnerParser.mly"
                             ( { edesc = Attr(o,n); etype = None } )
# 5075 "Parsing/Parser.ml"
             in
            _menhir_goto_expressionSansBracket _menhir_env _menhir_stack _menhir_s _v
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (o : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5083 "Parsing/Parser.ml"
            ))), _) = _menhir_stack in
            let _10 = () in
            let _2 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5090 "Parsing/Parser.ml"
            ) = let n =
              let _1 = _10 in
              
# 255 "Parsing/InnerParser.mly"
         ( "this" )
# 5096 "Parsing/Parser.ml"
              
            in
            
# 207 "Parsing/InnerParser.mly"
                             ( { edesc = Attr(o,n); etype = None } )
# 5102 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run225 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5121 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225

and _menhir_run227 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5188 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227

and _menhir_run229 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5255 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229

and _menhir_run231 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5322 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState231

and _menhir_run233 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5389 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233

and _menhir_run235 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5456 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235

and _menhir_run237 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5523 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237

and _menhir_run239 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5590 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState239

and _menhir_run241 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5657 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState241

and _menhir_run243 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5724 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState243

and _menhir_run245 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5791 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245

and _menhir_run247 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 5858 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247

and _menhir_reduce198 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Type.ref_type list) = 
# 142 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 5927 "Parsing/Parser.ml"
     in
    _menhir_goto_loption_throws_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103

and _menhir_goto_list_blockStatement_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.statement list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState423 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (AST.statement list))) = _menhir_stack in
        let _v : (unit) = 
# 128 "Parsing/InnerParser.mly"
                                     ( )
# 5955 "Parsing/Parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CASE ->
            _menhir_run419 _menhir_env (Obj.magic _menhir_stack) MenhirState422
        | DEFAULT ->
            _menhir_run417 _menhir_env (Obj.magic _menhir_stack) MenhirState422
        | RBRACE ->
            _menhir_reduce190 _menhir_env (Obj.magic _menhir_stack) MenhirState422
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState422)
    | MenhirState524 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (AST.statement))), _, (xs : (AST.statement list))) = _menhir_stack in
        let _v : (AST.statement list) = 
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 5979 "Parsing/Parser.ml"
         in
        _menhir_goto_list_blockStatement_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (x : (AST.statement list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (AST.statement list) = 
# 79 "Parsing/OuterParser.mly"
                                   ( x )
# 5997 "Parsing/Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (bsl : (AST.statement list)) = _v in
            let _v : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6005 "Parsing/Parser.ml"
            ) = 
# 73 "Parsing/InnerParser.mly"
                                ( bsl )
# 6009 "Parsing/Parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState390 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CATCH ->
                    _menhir_run393 _menhir_env (Obj.magic _menhir_stack) MenhirState392
                | FINALLY ->
                    _menhir_reduce168 _menhir_env (Obj.magic _menhir_stack) MenhirState392
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState392)
            | MenhirState396 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CATCH ->
                    _menhir_run393 _menhir_env (Obj.magic _menhir_stack) MenhirState397
                | ASSERT | BOOLEAN | BREAK | BYTE | CASE | CHAR | CHAR_LIT _ | CLASS | DEFAULT | DO | DOUBLE | ELSE | FALSE | FINAL | FLOAT | FLOAT_LIT _ | FOR | IDENTIFIER _ | IF | INT | INTERFACE | INT_LIT _ | LBRACE | LONG | LPAREN | NEW | NULL | OP_BNOT | OP_DEC | OP_INC | OP_NOT | OP_SUB | RBRACE | RETURN | SEMI | SHORT | STRING _ | SUPER | SWITCH | SYNCHRONIZED | THIS | THROW | TRUE | TRY | VOID | WHILE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s), _, (p0 : (AST.argument))), _, (b0 : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6038 "Parsing/Parser.ml"
                    ))) = _menhir_stack in
                    let _40 = () in
                    let _20 = () in
                    let _10 = () in
                    let _v : ((AST.argument * AST.statement list) list) = let x =
                      let b = b0 in
                      let _4 = _40 in
                      let p = p0 in
                      let _2 = _20 in
                      let _1 = _10 in
                      
# 141 "Parsing/InnerParser.mly"
                                                  ( p,b )
# 6052 "Parsing/Parser.ml"
                      
                    in
                    
# 209 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 6058 "Parsing/Parser.ml"
                     in
                    _menhir_goto_nonempty_list_catch_ _menhir_env _menhir_stack _menhir_s _v
                | FINALLY ->
                    _menhir_reduce168 _menhir_env (Obj.magic _menhir_stack) MenhirState397
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState397)
            | MenhirState402 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s), _, (b1 : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6073 "Parsing/Parser.ml"
                ))), _, (c : ((AST.argument * AST.statement list) list))), _, (b2 : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6077 "Parsing/Parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : (AST.statement) = 
# 103 "Parsing/InnerParser.mly"
                                           (
  Try (b1,c,b2)
    )
# 6086 "Parsing/Parser.ml"
                 in
                _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
            | MenhirState410 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s), _, (_3 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 6095 "Parsing/Parser.ml"
                ))), _), _, (_5 : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6099 "Parsing/Parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (AST.statement) = 
# 109 "Parsing/InnerParser.mly"
                                                ( Nop )
# 6107 "Parsing/Parser.ml"
                 in
                _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
            | MenhirState124 | MenhirState389 | MenhirState423 | MenhirState524 | MenhirState450 | MenhirState521 | MenhirState452 | MenhirState470 | MenhirState483 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (b : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6116 "Parsing/Parser.ml"
                ))) = _menhir_stack in
                let _v : (AST.statement) = 
# 79 "Parsing/InnerParser.mly"
            (
  Block b
    )
# 6123 "Parsing/Parser.ml"
                 in
                _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
            | MenhirState122 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((_menhir_stack, _menhir_s), (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 6132 "Parsing/Parser.ml"
                ))), _, (pl : (AST.argument list))), _, (el : (Type.ref_type list))), _, (mb : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6136 "Parsing/Parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ]) = 
# 139 "Parsing/OuterParser.mly"
                                                                                   (
        `Meth { mmodifiers = [] ; mreturntype = Type.Void ; mname = id ; margstype=pl ; mthrows =el ; mbody=mb }
    )
# 6147 "Parsing/Parser.ml"
                 in
                _menhir_goto_memberDecl _menhir_env _menhir_stack _menhir_s _v
            | MenhirState536 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 6156 "Parsing/Parser.ml"
                ))), _, (pl : (AST.argument list))), _, (el : (Type.ref_type list))), _, (mb : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6160 "Parsing/Parser.ml"
                ))) = _menhir_stack in
                let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ]) = 
# 151 "Parsing/OuterParser.mly"
                                                                              (
        `Const { cmodifiers = [] ; cname = id ; cargstype=pl ; cthrows =el ; cbody=mb }
    )
# 6170 "Parsing/Parser.ml"
                 in
                _menhir_goto_memberDecl _menhir_env _menhir_stack _menhir_s _v
            | MenhirState543 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((_menhir_stack, _menhir_s, (r : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 6179 "Parsing/Parser.ml"
                ))), _, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 6183 "Parsing/Parser.ml"
                ))), _, (pl : (AST.argument list))), _, (el : (Type.ref_type list))), _, (mb : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6187 "Parsing/Parser.ml"
                ))) = _menhir_stack in
                let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ]) = 
# 142 "Parsing/OuterParser.mly"
                                                                                      (
        `Meth { mmodifiers = [] ; mreturntype = r ; mname = id ; margstype=pl ; mthrows =el ; mbody=mb }
    )
# 6197 "Parsing/Parser.ml"
                 in
                _menhir_goto_memberDecl _menhir_env _menhir_stack _menhir_s _v
            | MenhirState552 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (s : (bool))), _, (b : (
# 64 "Parsing/InnerParser.mly"
      (AST.statement list)
# 6206 "Parsing/Parser.ml"
                ))) = _menhir_stack in
                let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ]) = 
# 123 "Parsing/OuterParser.mly"
                                  ( `Initializer({ static = s ; block = b }) )
# 6215 "Parsing/Parser.ml"
                 in
                _menhir_goto_classContent _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_blockStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState483 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | BYTE ->
                    _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | CHAR ->
                    _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | CHAR_LIT _v ->
                    _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                | DOUBLE ->
                    _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | FALSE ->
                    _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | FLOAT ->
                    _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | FLOAT_LIT _v ->
                    _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                | IDENTIFIER _v ->
                    _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                | INT ->
                    _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | INT_LIT _v ->
                    _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                | LONG ->
                    _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | LPAREN ->
                    _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | NEW ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | NULL ->
                    _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | OP_BNOT ->
                    _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | OP_DEC ->
                    _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | OP_INC ->
                    _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | OP_NOT ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | OP_SUB ->
                    _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | SHORT ->
                    _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | STRING _v ->
                    _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                | SUPER ->
                    _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | THIS ->
                    _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | TRUE ->
                    _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | VOID ->
                    _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState513)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState470 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), (i : ((Type.t option * string * AST.expression option) list))), _, (e : (AST.expression option))), _, (xs0 : (AST.expression list))), _, (b : (AST.statement))) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (AST.statement) = let u =
          let xs = xs0 in
          
# 220 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 6330 "Parsing/Parser.ml"
          
        in
        
# 88 "Parsing/InnerParser.mly"
                                                                                                            (
  For (i,e,u,b)
    )
# 6338 "Parsing/Parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState452 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 6347 "Parsing/Parser.ml"
        ))), _, (_3 : (AST.statement))) = _menhir_stack in
        let _2 = () in
        let _v : (AST.statement) = 
# 112 "Parsing/InnerParser.mly"
                                    ( Nop )
# 6353 "Parsing/Parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState450 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ASSERT ->
                _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | BOOLEAN ->
                _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | BREAK ->
                _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | BYTE ->
                _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | CHAR ->
                _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState521 _v
            | CLASS ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | DO ->
                _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | DOUBLE ->
                _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | FINAL ->
                _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | FLOAT ->
                _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState521 _v
            | FOR ->
                _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | IDENTIFIER _v ->
                _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState521 _v
            | IF ->
                _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | INT ->
                _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | INTERFACE ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState521 _v
            | LBRACE ->
                _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | LONG ->
                _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | RETURN ->
                _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | SEMI ->
                _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | SHORT ->
                _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState521 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | SWITCH ->
                _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | SYNCHRONIZED ->
                _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | THROW ->
                _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | TRY ->
                _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | WHILE ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState521
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState521)
        | ASSERT | BOOLEAN | BREAK | BYTE | CASE | CHAR | CHAR_LIT _ | CLASS | DEFAULT | DO | DOUBLE | FALSE | FINAL | FLOAT | FLOAT_LIT _ | FOR | IDENTIFIER _ | IF | INT | INTERFACE | INT_LIT _ | LBRACE | LONG | LPAREN | NEW | NULL | OP_BNOT | OP_DEC | OP_INC | OP_NOT | OP_SUB | RBRACE | RETURN | SEMI | SHORT | STRING _ | SUPER | SWITCH | SYNCHRONIZED | THIS | THROW | TRUE | TRY | VOID | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 6459 "Parsing/Parser.ml"
            ))), _), _, (b : (AST.statement))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (AST.statement) = 
# 91 "Parsing/InnerParser.mly"
                                                   (
  If (e,b,None)
    )
# 6469 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState521 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 6484 "Parsing/Parser.ml"
        ))), _), _, (b1 : (AST.statement))), _, (b2 : (AST.statement))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (AST.statement) = 
# 94 "Parsing/InnerParser.mly"
                                                                           (
  If (e,b1,Some b2)
    )
# 6495 "Parsing/Parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState124 | MenhirState524 | MenhirState423 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSERT ->
            _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | BOOLEAN ->
            _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | BREAK ->
            _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | BYTE ->
            _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | CHAR ->
            _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | CHAR_LIT _v ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState524 _v
        | CLASS ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | DO ->
            _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | DOUBLE ->
            _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | FALSE ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | FINAL ->
            _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | FLOAT ->
            _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | FLOAT_LIT _v ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState524 _v
        | FOR ->
            _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | IDENTIFIER _v ->
            _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState524 _v
        | IF ->
            _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | INT ->
            _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | INTERFACE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | INT_LIT _v ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState524 _v
        | LBRACE ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LONG ->
            _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | LPAREN ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | NEW ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | NULL ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | OP_BNOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | OP_DEC ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | OP_INC ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | OP_NOT ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | OP_SUB ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | RETURN ->
            _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | SEMI ->
            _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | SHORT ->
            _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | STRING _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState524 _v
        | SUPER ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | SWITCH ->
            _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | SYNCHRONIZED ->
            _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | THIS ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | THROW ->
            _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | TRUE ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | TRY ->
            _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | VOID ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | WHILE ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | CASE | DEFAULT | RBRACE ->
            _menhir_reduce166 _menhir_env (Obj.magic _menhir_stack) MenhirState524
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState524)
    | MenhirState389 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 6599 "Parsing/Parser.ml"
        ))), _), _, (b : (AST.statement))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (AST.statement) = 
# 85 "Parsing/InnerParser.mly"
                                                      (
  While (e,b)
    )
# 6609 "Parsing/Parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce232 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.expression option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 6620 "Parsing/Parser.ml"
     in
    _menhir_goto_option_expression_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_forInit : _menhir_env -> 'ttv_tail -> ((Type.t option * string * AST.expression option) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | BYTE ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | CHAR ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | CHAR_LIT _v ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState466 _v
        | DOUBLE ->
            _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | FALSE ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | FLOAT ->
            _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | FLOAT_LIT _v ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState466 _v
        | IDENTIFIER _v ->
            _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState466 _v
        | INT ->
            _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | INT_LIT _v ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState466 _v
        | LONG ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | LPAREN ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | NEW ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | NULL ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | OP_BNOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | OP_DEC ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | OP_INC ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | OP_NOT ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | OP_SUB ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | SHORT ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | STRING _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState466 _v
        | SUPER ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | THIS ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | TRUE ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | VOID ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | SEMI ->
            _menhir_reduce232 _menhir_env (Obj.magic _menhir_stack) MenhirState466
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState466)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_option_variableModifier_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState456
    | BYTE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState456
    | CHAR ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState456
    | DOUBLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState456
    | FLOAT ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState456
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState456 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run428 _menhir_env (Obj.magic _menhir_stack) MenhirState457
        | DOT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState457
        | IDENTIFIER _ | LBRACKET ->
            _menhir_reduce262 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | SEMI ->
            _menhir_reduce236 _menhir_env (Obj.magic _menhir_stack) MenhirState457
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState457)
    | INT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState456
    | LONG ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState456
    | SHORT ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState456
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState456

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | IDENTIFIER _ | VARARG ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | IDENTIFIER _ | VARARG ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | IDENTIFIER _ | VARARG ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | IDENTIFIER _ | VARARG ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | IDENTIFIER _ | VARARG ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | IDENTIFIER _ | VARARG ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | IDENTIFIER _ | VARARG ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | IDENTIFIER _ | VARARG ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93

and _menhir_goto_option_IDENTIFIER_ : _menhir_env -> 'ttv_tail -> (string option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), (_2 : (string option))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (AST.statement) = 
# 115 "Parsing/InnerParser.mly"
                            ( Nop )
# 6885 "Parsing/Parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_list_interfaceContent_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (x : (unit list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit list) = 
# 79 "Parsing/OuterParser.mly"
                                   ( x )
# 6914 "Parsing/Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (cl : (unit list)) = _v in
            let (((_menhir_stack, _menhir_s), (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 6922 "Parsing/Parser.ml"
            ))), (ext : (Type.ref_type list option))) = _menhir_stack in
            let _1 = () in
            let _v : (string * AST.type_info) = 
# 98 "Parsing/OuterParser.mly"
                                                                                                                                     (
	id , Inter
    )
# 6930 "Parsing/Parser.ml"
             in
            _menhir_goto_classDeclaration _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState566 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (unit))), _, (xs : (unit list))) = _menhir_stack in
        let _v : (unit list) = 
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 6946 "Parsing/Parser.ml"
         in
        _menhir_goto_list_interfaceContent_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_modifier_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.modifier list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (AST.modifier))), _, (xs : (AST.modifier list))) = _menhir_stack in
        let _v : (AST.modifier list) = 
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 6963 "Parsing/Parser.ml"
         in
        _menhir_goto_list_modifier_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState566 | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | BYTE ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | CHAR ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | CLASS ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | DOUBLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | FLOAT ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | IDENTIFIER _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | INT ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | INTERFACE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LONG ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | SHORT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | VOID ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState64 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
    | MenhirState550 | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | BYTE ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | CHAR ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | CLASS ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | DOUBLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | FLOAT ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | IDENTIFIER _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState118 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState534
            | LPAREN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState534
            | IDENTIFIER _ | LBRACKET ->
                _menhir_reduce262 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState534)
        | INT ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | INTERFACE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | LONG ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | SHORT ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | VOID ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState118 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState120
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118)
    | _ ->
        _menhir_fail ()

and _menhir_reduce211 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 172 "Parsing/OuterParser.mly"
                 ( Static    )
# 7103 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_modifier : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.modifier) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | FINAL ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NATIVE ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | PRIVATE ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | PROTECTED ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | PUBLIC ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | STATIC ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | STRICTFP ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | SYNCHRONIZED ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | TRANSIENT ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | VOLATILE ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | BOOLEAN | BYTE | CHAR | CLASS | DOUBLE | FLOAT | IDENTIFIER _ | INT | INTERFACE | LONG | SHORT | VOID ->
        _menhir_reduce186 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_reduce47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (bool) = 
# 133 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( false )
# 7148 "Parsing/Parser.ml"
     in
    _menhir_goto_boption_STATIC_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce170 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ] list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 7161 "Parsing/Parser.ml"
     in
    _menhir_goto_list_classContent_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT | BOOLEAN | BYTE | CHAR | CLASS | DOUBLE | FINAL | FLOAT | IDENTIFIER _ | INT | INTERFACE | LONG | NATIVE | PRIVATE | PROTECTED | PUBLIC | SHORT | STATIC | STRICTFP | SYNCHRONIZED | TRANSIENT | VOID | VOLATILE ->
        _menhir_reduce211 _menhir_env (Obj.magic _menhir_stack)
    | LBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (bool) = 
# 135 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( true )
# 7180 "Parsing/Parser.ml"
         in
        _menhir_goto_boption_STATIC_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_option_preceded_ASSIGN_variableInitializer__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState427 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState431 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState431)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 7215 "Parsing/Parser.ml"
            ))), _, (_20 : ((unit * unit) list))), _, (init0 : (AST.expression option))) = _menhir_stack in
            let _v : ((string * AST.expression option) list) = let x =
              let init = init0 in
              let _2 = _20 in
              let id = id0 in
              
# 151 "Parsing/InnerParser.mly"
                                                                                                  ( id, init )
# 7224 "Parsing/Parser.ml"
              
            in
            
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 7230 "Parsing/Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_variableDeclarator_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState460 | MenhirState457 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState459 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ASSIGN ->
                    _menhir_run428 _menhir_env (Obj.magic _menhir_stack) MenhirState460
                | COMMA | SEMI ->
                    _menhir_reduce236 _menhir_env (Obj.magic _menhir_stack) MenhirState460
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState460)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState459)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 7273 "Parsing/Parser.ml"
            ))), _, (init0 : (AST.expression option))) = _menhir_stack in
            let _v : ((string * AST.expression option) list) = let x =
              let init = init0 in
              let id = id0 in
              
# 154 "Parsing/InnerParser.mly"
                                                                    ( id, init )
# 7281 "Parsing/Parser.ml"
              
            in
            
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 7287 "Parsing/Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_variableDeclarator2_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run342 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState342 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState342 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState342 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState342 _v
    | LBRACE ->
        _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState342 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState342 in
        let _v : (AST.expression list) = 
# 161 "Parsing/InnerParser.mly"
               ( [] )
# 7365 "Parsing/Parser.ml"
         in
        _menhir_goto_variableInitializers _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState342

and _menhir_goto_expressionSansBracket : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193

and _menhir_run145 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
        | SUPER ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | THIS ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146)
    | LBRACKET | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _10 = () in
        let _v : (string list) = let x =
          let _1 = _10 in
          
# 255 "Parsing/InnerParser.mly"
         ( "this" )
# 7417 "Parsing/Parser.ml"
          
        in
        
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 7423 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_DOT_name_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run147 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | SUPER ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | THIS ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148)
    | LBRACKET | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _10 = () in
        let _v : (string list) = let x =
          let _1 = _10 in
          
# 256 "Parsing/InnerParser.mly"
          ( "super" )
# 7463 "Parsing/Parser.ml"
          
        in
        
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 7469 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_DOT_name_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run149 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "Parsing/OuterParser.mly"
       (string)
# 7482 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
        | SUPER ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | THIS ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150)
    | LBRACKET | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 7509 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _v : (string list) = let x =
          let id = id0 in
          
# 257 "Parsing/InnerParser.mly"
                  ( id )
# 7516 "Parsing/Parser.ml"
          
        in
        
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 7522 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_DOT_name_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run155 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | RBRACKET ->
        _menhir_reduce232 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155

and _menhir_reduce135 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 26 "Parsing/OuterParser.mly"
       (string)
# 7600 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 7606 "Parsing/Parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7611 "Parsing/Parser.ml"
    ) = let id =
      let id = id0 in
      
# 257 "Parsing/InnerParser.mly"
                  ( id )
# 7617 "Parsing/Parser.ml"
      
    in
    
# 220 "Parsing/InnerParser.mly"
            ( { edesc = Name(id); etype = None } )
# 7623 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce149 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 26 "Parsing/OuterParser.mly"
       (string)
# 7630 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id0 : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 7636 "Parsing/Parser.ml"
    ))) = _menhir_stack in
    let _v : (AST.expression) = let id =
      let id = id0 in
      
# 257 "Parsing/InnerParser.mly"
                  ( id )
# 7643 "Parsing/Parser.ml"
      
    in
    
# 230 "Parsing/InnerParser.mly"
            ( { edesc = Name(id); etype = None } )
# 7649 "Parsing/Parser.ml"
     in
    _menhir_goto_expressionSansBracket _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7656 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _), _, (l : ((unit * unit) list))), _), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7713 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7721 "Parsing/Parser.ml"
            ) = let t =
              let _1 = _10 in
              
# 116 "Parsing/OuterParser.mly"
            ( Type.Short  )
# 7727 "Parsing/Parser.ml"
              
            in
            
# 197 "Parsing/InnerParser.mly"
                                                                                          (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = Cast(t,e); etype = None }
    )
# 7738 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195)
    | MenhirState196 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7793 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7797 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7803 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 289 "Parsing/InnerParser.mly"
            ( Op_sub  )
# 7809 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 7815 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197)
    | MenhirState198 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState199
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7864 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7868 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 7874 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 290 "Parsing/InnerParser.mly"
            ( Op_mul  )
# 7880 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 7886 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199)
    | MenhirState468 | MenhirState377 | MenhirState304 | MenhirState218 | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState206 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState304)
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8040 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _v : (AST.expression list) = 
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 8045 "Parsing/Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206)
    | MenhirState207 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | COLON | COMMA | IDENTIFIER _ | OP_COR | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8130 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8134 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8140 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 278 "Parsing/InnerParser.mly"
            ( Op_xor  )
# 8146 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 8152 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208)
    | MenhirState209 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8211 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8215 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8221 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 287 "Parsing/InnerParser.mly"
            ( Op_shrr )
# 8227 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 8233 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210)
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8282 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8286 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8292 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 292 "Parsing/InnerParser.mly"
            ( Op_mod  )
# 8298 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 8304 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState212)
    | MenhirState225 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8353 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8357 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8363 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 270 "Parsing/InnerParser.mly"
             ( Ass_xor  )
# 8369 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8375 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState226)
    | MenhirState227 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState228
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8424 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8428 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8434 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 262 "Parsing/InnerParser.mly"
             ( Ass_sub  )
# 8440 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8446 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState228)
    | MenhirState229 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8495 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8499 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8505 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 268 "Parsing/InnerParser.mly"
             ( Ass_shrr )
# 8511 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8517 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState230)
    | MenhirState231 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8566 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8570 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8576 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 267 "Parsing/InnerParser.mly"
             ( Ass_shr  )
# 8582 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8588 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState232)
    | MenhirState233 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState234
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8637 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8641 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8647 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 266 "Parsing/InnerParser.mly"
             ( Ass_shl  )
# 8653 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8659 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState234)
    | MenhirState235 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState236
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8708 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8712 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8718 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 271 "Parsing/InnerParser.mly"
             ( Ass_or   )
# 8724 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8730 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState236)
    | MenhirState237 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState238
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8779 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8783 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8789 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 263 "Parsing/InnerParser.mly"
             ( Ass_mul  )
# 8795 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8801 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState238)
    | MenhirState239 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState240
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8850 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8854 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8860 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 265 "Parsing/InnerParser.mly"
             ( Ass_mod  )
# 8866 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8872 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState240)
    | MenhirState241 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8921 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8925 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8931 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 264 "Parsing/InnerParser.mly"
             ( Ass_div  )
# 8937 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 8943 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState242)
    | MenhirState243 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8992 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 8996 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9002 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 269 "Parsing/InnerParser.mly"
             ( Ass_and  )
# 9008 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 9014 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState244)
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9063 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9067 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9073 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 261 "Parsing/InnerParser.mly"
             ( Ass_add  )
# 9079 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 9085 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState246)
    | MenhirState247 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState248
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9134 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9138 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9144 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 260 "Parsing/InnerParser.mly"
             ( Assign   )
# 9150 "Parsing/Parser.ml"
              
            in
            
# 179 "Parsing/InnerParser.mly"
                                             ( { edesc = AssignExp(e1,op,e2); etype = None } )
# 9156 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState248)
    | MenhirState249 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState250
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9205 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9209 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9215 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 291 "Parsing/InnerParser.mly"
            ( Op_div  )
# 9221 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9227 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250)
    | MenhirState251 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState252
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9282 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9286 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9292 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 288 "Parsing/InnerParser.mly"
            ( Op_add  )
# 9298 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9304 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState252)
    | MenhirState253 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9363 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9367 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9373 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 286 "Parsing/InnerParser.mly"
            ( Op_shr  )
# 9379 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9385 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState254)
    | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9444 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9448 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9454 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 285 "Parsing/InnerParser.mly"
            ( Op_shl  )
# 9460 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9466 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState256)
    | MenhirState257 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | COLON | COMMA | IDENTIFIER _ | OP_AND | OP_CAND | OP_COR | OP_EQ | OP_NE | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9543 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9547 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9553 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 280 "Parsing/InnerParser.mly"
            ( Op_ne   )
# 9559 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9565 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState258)
    | MenhirState259 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9630 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9634 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9640 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 282 "Parsing/InnerParser.mly"
            ( Op_lt   )
# 9646 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9652 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState260)
    | MenhirState261 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9717 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9721 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9727 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 284 "Parsing/InnerParser.mly"
            ( Op_le   )
# 9733 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9739 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState262)
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState264
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9804 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9808 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9814 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 281 "Parsing/InnerParser.mly"
            ( Op_gt   )
# 9820 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9826 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState264)
    | MenhirState265 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState266
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9891 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9895 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 9901 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 283 "Parsing/InnerParser.mly"
            ( Op_ge   )
# 9907 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 9913 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState266)
    | MenhirState267 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState268 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302)
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState268
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState268)
    | MenhirState269 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | COLON | COMMA | IDENTIFIER _ | OP_COR | OP_OR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10146 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10150 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10156 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 276 "Parsing/InnerParser.mly"
            ( Op_or   )
# 10162 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 10168 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState270)
    | MenhirState271 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | COLON | COMMA | IDENTIFIER _ | OP_AND | OP_CAND | OP_COR | OP_EQ | OP_NE | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10245 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10249 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10255 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 279 "Parsing/InnerParser.mly"
            ( Op_eq   )
# 10261 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 10267 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState272)
    | MenhirState296 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | COLON | COMMA | IDENTIFIER _ | OP_AND | OP_CAND | OP_COR | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10348 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10352 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10358 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 275 "Parsing/InnerParser.mly"
            ( Op_cand )
# 10364 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 10370 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState297)
    | MenhirState298 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | COLON | COMMA | IDENTIFIER _ | OP_AND | OP_CAND | OP_COR | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10451 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10455 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10461 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 277 "Parsing/InnerParser.mly"
            ( Op_and  )
# 10467 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 10473 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState299)
    | MenhirState300 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState301
        | COLON | COMMA | IDENTIFIER _ | OP_COR | OP_OR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10560 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10564 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10570 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 274 "Parsing/InnerParser.mly"
            ( Op_cor  )
# 10576 "Parsing/Parser.ml"
              
            in
            
# 181 "Parsing/InnerParser.mly"
                                            ( { edesc = Op(e1,op,e2); etype = None } )
# 10582 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState301)
    | MenhirState302 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState303
        | COLON | COMMA | IDENTIFIER _ | OP_AND | OP_CAND | OP_COR | OP_EQ | OP_NE | OP_OR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10659 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10663 "Parsing/Parser.ml"
            ))), _), _, (e3 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10667 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10674 "Parsing/Parser.ml"
            ) = 
# 180 "Parsing/InnerParser.mly"
                                                            ( { edesc = CondOp(e1,e2,e3); etype = None } )
# 10678 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState303)
    | MenhirState308 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState309
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _), _, (l : ((unit * unit) list))), _), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10737 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10745 "Parsing/Parser.ml"
            ) = let t =
              let _1 = _10 in
              
# 118 "Parsing/OuterParser.mly"
            ( Type.Long   )
# 10751 "Parsing/Parser.ml"
              
            in
            
# 197 "Parsing/InnerParser.mly"
                                                                                          (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = Cast(t,e); etype = None }
    )
# 10762 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState309)
    | MenhirState312 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState313
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _), _, (l : ((unit * unit) list))), _), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10821 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10829 "Parsing/Parser.ml"
            ) = let t =
              let _1 = _10 in
              
# 117 "Parsing/OuterParser.mly"
            ( Type.Int    )
# 10835 "Parsing/Parser.ml"
              
            in
            
# 197 "Parsing/InnerParser.mly"
                                                                                          (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = Cast(t,e); etype = None }
    )
# 10846 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState313)
    | MenhirState316 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState317
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _), _, (l : ((unit * unit) list))), _), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10905 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10913 "Parsing/Parser.ml"
            ) = let t =
              let _1 = _10 in
              
# 119 "Parsing/OuterParser.mly"
            ( Type.Float  )
# 10919 "Parsing/Parser.ml"
              
            in
            
# 197 "Parsing/InnerParser.mly"
                                                                                          (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = Cast(t,e); etype = None }
    )
# 10930 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState317)
    | MenhirState320 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState321
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _), _, (l : ((unit * unit) list))), _), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10989 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 10997 "Parsing/Parser.ml"
            ) = let t =
              let _1 = _10 in
              
# 120 "Parsing/OuterParser.mly"
            ( Type.Double )
# 11003 "Parsing/Parser.ml"
              
            in
            
# 197 "Parsing/InnerParser.mly"
                                                                                          (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = Cast(t,e); etype = None }
    )
# 11014 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState321)
    | MenhirState324 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _), _, (l : ((unit * unit) list))), _), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11073 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11081 "Parsing/Parser.ml"
            ) = let t =
              let _1 = _10 in
              
# 114 "Parsing/OuterParser.mly"
            ( Type.Char   )
# 11087 "Parsing/Parser.ml"
              
            in
            
# 197 "Parsing/InnerParser.mly"
                                                                                          (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = Cast(t,e); etype = None }
    )
# 11098 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState325)
    | MenhirState328 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState329
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _), _, (l : ((unit * unit) list))), _), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11157 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11165 "Parsing/Parser.ml"
            ) = let t =
              let _1 = _10 in
              
# 115 "Parsing/OuterParser.mly"
            ( Type.Byte   )
# 11171 "Parsing/Parser.ml"
              
            in
            
# 197 "Parsing/InnerParser.mly"
                                                                                          (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = Cast(t,e); etype = None }
    )
# 11182 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState329)
    | MenhirState332 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState333
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), _), _, (l : ((unit * unit) list))), _), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11241 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _10 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11249 "Parsing/Parser.ml"
            ) = let t =
              let _1 = _10 in
              
# 113 "Parsing/OuterParser.mly"
            ( Type.Boolean )
# 11255 "Parsing/Parser.ml"
              
            in
            
# 197 "Parsing/InnerParser.mly"
                                                                                          (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = Cast(t,e); etype = None }
    )
# 11266 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState333)
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState334
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState334 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | LBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11416 "Parsing/Parser.ml"
                ))), _) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (AST.expression) = 
# 229 "Parsing/InnerParser.mly"
                               ( e )
# 11423 "Parsing/Parser.ml"
                 in
                _menhir_goto_expressionSansBracket _menhir_env _menhir_stack _menhir_s _v
            | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11431 "Parsing/Parser.ml"
                ))), _) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11438 "Parsing/Parser.ml"
                ) = 
# 173 "Parsing/InnerParser.mly"
                               ( e )
# 11442 "Parsing/Parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState335)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState334)
    | MenhirState335 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState336
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11505 "Parsing/Parser.ml"
            ))), _), _, (e2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11509 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            (match try
              Some (
# 183 "Parsing/InnerParser.mly"
                                                         (
      match e1.edesc with
      | Op _  | Cast _ | Call _ -> (match e2.edesc with
     | Pre(Op_neg,e) -> { edesc = Op(e1,Op_sub,e); etype = None }
     | _ -> print_endline("CAST( "^(string_of_expression e1)^" ) "^(string_of_expression e2)) ; (raise _eRR))
      | New _ | NewArray _ | If _ | Val _ | AssignExp _ | Post _ | Pre _ | CondOp _ | ArrayInit _
      | ClassOf _ | Instanceof _ | VoidClass ->
         print_endline("CAST( "^(string_of_expression e1)^" ) "^(string_of_expression e2)) ; (raise _eRR)
      | Attr(e,s) -> { edesc = Cast(Ref(Type.mk_type (listOfNames_form_exp e) s),e2); etype = None }
      | Array({ edesc = Name n },tabs) -> { edesc = Cast(Type.mk_array (List.length tabs) (Ref(Type.mk_type [] n)),e2); etype = None }
      | Array({ edesc = Attr(e,s) },tabs) -> { edesc = Cast(Type.mk_array (List.length tabs) (Ref(Type.mk_type (listOfNames_form_exp e) s)),e2); etype = None }
      | Name n -> { edesc = Cast(Ref(Type.mk_type [] n),e2); etype = None }
      | Type t -> { edesc = Cast(t,e2); etype = None }
      | _ -> print_endline("CAST( "^(string_of_expression e1)^" ) "^(string_of_expression e2)) ; (raise _eRR))
# 11530 "Parsing/Parser.ml"
               : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11534 "Parsing/Parser.ml"
              ))
            with
            | Error ->
                None with
            | Some _v ->
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
            | None ->
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState336)
    | MenhirState466 | MenhirState436 | MenhirState155 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | RBRACKET | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11632 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _v : (AST.expression option) = 
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 11637 "Parsing/Parser.ml"
             in
            _menhir_goto_option_expression_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState340)
    | MenhirState428 | MenhirState342 | MenhirState346 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState349
        | COMMA | RBRACE | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11728 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 65 "Parsing/InnerParser.mly"
      (AST.expression)
# 11733 "Parsing/Parser.ml"
            ) = 
# 157 "Parsing/InnerParser.mly"
                   ( e )
# 11737 "Parsing/Parser.ml"
             in
            _menhir_goto_variableInitializer _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState349)
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11762 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11768 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 248 "Parsing/InnerParser.mly"
            ( Op_bnot )
# 11774 "Parsing/Parser.ml"
              
            in
            
# 174 "Parsing/InnerParser.mly"
                              ( { edesc = Pre(op,e); etype = None } )
# 11780 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState383)
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState384
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState384
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState384
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState384
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11805 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11811 "Parsing/Parser.ml"
            ) = 
# 177 "Parsing/InnerParser.mly"
                                     ( { edesc = Pre(Op_decr,e); etype = None } )
# 11815 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState384)
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState385
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState385
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState385
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState385
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11840 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11846 "Parsing/Parser.ml"
            ) = 
# 176 "Parsing/InnerParser.mly"
                                     ( { edesc = Pre(Op_incr,e); etype = None } )
# 11850 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState385)
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState386
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState386
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState386
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState386
        | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11875 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _10 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11881 "Parsing/Parser.ml"
            ) = let op =
              let _1 = _10 in
              
# 247 "Parsing/InnerParser.mly"
           ( Op_not )
# 11887 "Parsing/Parser.ml"
              
            in
            
# 174 "Parsing/InnerParser.mly"
                              ( { edesc = Pre(op,e); etype = None } )
# 11893 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState386)
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | COLON | COMMA | IDENTIFIER _ | INSTANCEOF | OP_AND | OP_CAND | OP_COND | OP_COR | OP_EQ | OP_GE | OP_GT | OP_LE | OP_LT | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11952 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 11958 "Parsing/Parser.ml"
            ) = 
# 175 "Parsing/InnerParser.mly"
                                     ( { edesc = Pre(Op_neg,e); etype = None } )
# 11962 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState387)
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState388
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState388 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ASSERT ->
                _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | BOOLEAN ->
                _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | BREAK ->
                _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | BYTE ->
                _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | CHAR ->
                _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
            | CLASS ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | DO ->
                _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | DOUBLE ->
                _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | FINAL ->
                _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | FLOAT ->
                _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
            | FOR ->
                _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | IDENTIFIER _v ->
                _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
            | IF ->
                _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | INT ->
                _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | INTERFACE ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
            | LBRACE ->
                _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | LONG ->
                _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | RETURN ->
                _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | SEMI ->
                _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | SHORT ->
                _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | SWITCH ->
                _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | SYNCHRONIZED ->
                _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | THROW ->
                _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | TRY ->
                _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | WHILE ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState389
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState389)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState388)
    | MenhirState404 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState405
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState405 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 12234 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (AST.statement) = 
# 100 "Parsing/InnerParser.mly"
                            (
  Throw (e)
    )
# 12243 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState405)
    | MenhirState408 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState409
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState409 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState410
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState409)
    | MenhirState413 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState414
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState414 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CASE ->
                    _menhir_run419 _menhir_env (Obj.magic _menhir_stack) MenhirState416
                | DEFAULT ->
                    _menhir_run417 _menhir_env (Obj.magic _menhir_stack) MenhirState416
                | RBRACE ->
                    _menhir_reduce190 _menhir_env (Obj.magic _menhir_stack) MenhirState416
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState416)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState414)
    | MenhirState419 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState420 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 12494 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) = 
# 130 "Parsing/InnerParser.mly"
                          ( )
# 12501 "Parsing/Parser.ml"
             in
            _menhir_goto_switchLabel _menhir_env _menhir_stack _menhir_s _v
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState420
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState420)
    | MenhirState448 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState449
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState449 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ASSERT ->
                _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | BOOLEAN ->
                _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | BREAK ->
                _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | BYTE ->
                _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | CHAR ->
                _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState450 _v
            | CLASS ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | DO ->
                _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | DOUBLE ->
                _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | FINAL ->
                _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | FLOAT ->
                _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState450 _v
            | FOR ->
                _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | IDENTIFIER _v ->
                _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState450 _v
            | IF ->
                _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | INT ->
                _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | INTERFACE ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState450 _v
            | LBRACE ->
                _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | LONG ->
                _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | RETURN ->
                _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | SEMI ->
                _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | SHORT ->
                _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState450 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | SWITCH ->
                _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | SYNCHRONIZED ->
                _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | THROW ->
                _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | TRY ->
                _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | WHILE ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState450
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState450)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState449)
    | MenhirState500 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState501 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState503 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState503
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState503)
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState501
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState501 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 12886 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (AST.statement) = 
# 114 "Parsing/InnerParser.mly"
                           ( Nop )
# 12893 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState501)
    | MenhirState503 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState504
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState504 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 12987 "Parsing/Parser.ml"
            ))), _), _, (_4 : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 12991 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (AST.statement) = 
# 113 "Parsing/InnerParser.mly"
                                            ( Nop )
# 12999 "Parsing/Parser.ml"
             in
            _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState504)
    | MenhirState124 | MenhirState389 | MenhirState524 | MenhirState423 | MenhirState521 | MenhirState450 | MenhirState452 | MenhirState470 | MenhirState483 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState508 _v
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState508
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 13092 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _v : ([ `Decl of AST.statement | `Exp of AST.expression ]) = 
# 134 "Parsing/InnerParser.mly"
                 ( `Exp e )
# 13097 "Parsing/Parser.ml"
             in
            _menhir_goto_expression0 _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState508)
    | MenhirState513 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_ADD ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_AND ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_DIV ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_MOD ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_MUL ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_OR ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_SHL ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_SHR ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_SHRR ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_SUB ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | ASS_XOR ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | DOT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | INSTANCEOF ->
            _menhir_run273 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_ADD ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_AND ->
            _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_CAND ->
            _menhir_run296 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_COND ->
            _menhir_run267 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_COR ->
            _menhir_run300 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_DEC ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_DIV ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_EQ ->
            _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_GE ->
            _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_GT ->
            _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_INC ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_LE ->
            _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_LT ->
            _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_MOD ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_MUL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_NE ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_OR ->
            _menhir_run269 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_SHL ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_SHR ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_SHRR ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_SUB ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | OP_XOR ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState514
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState514 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s), _, (b : (AST.statement))), _, (e : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 13197 "Parsing/Parser.ml"
                ))), _) = _menhir_stack in
                let _7 = () in
                let _6 = () in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : (AST.statement) = 
# 111 "Parsing/InnerParser.mly"
                                                              ( Nop )
# 13207 "Parsing/Parser.ml"
                 in
                _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState514)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_formalParameter__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.argument list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs0 : (AST.argument list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (AST.argument list) = let l =
          let xs = xs0 in
          
# 220 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 13242 "Parsing/Parser.ml"
          
        in
        
# 80 "Parsing/OuterParser.mly"
                                                                ( l )
# 13248 "Parsing/Parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState66 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | THROWS ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | SEMI ->
                _menhir_reduce198 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
        | MenhirState120 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | THROWS ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | LBRACE | SEMI ->
                _menhir_reduce198 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
        | MenhirState534 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | THROWS ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | LBRACE ->
                _menhir_reduce198 _menhir_env (Obj.magic _menhir_stack) MenhirState535
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState535)
        | MenhirState541 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | THROWS ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState542
            | LBRACE | SEMI ->
                _menhir_reduce198 _menhir_env (Obj.magic _menhir_stack) MenhirState542
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState542)
        | MenhirState558 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | THROWS ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState559
            | SEMI ->
                _menhir_reduce198 _menhir_env (Obj.magic _menhir_stack) MenhirState559
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState559)
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_boption_FINAL_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (bool) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | BYTE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | CHAR ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | DOUBLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | FLOAT ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | INT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LONG ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | SHORT ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FINAL ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState67 in
        let _v : (AST.argument list) = 
# 142 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 13370 "Parsing/Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_formalParameter__ _menhir_env _menhir_stack _menhir_s _v
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENTIFIER _ | INT | LONG | SHORT ->
        _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_goto_boption_VARARG_ : _menhir_env -> 'ttv_tail -> (bool) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | COMMA | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_classContent : _menhir_env -> 'ttv_tail -> _menhir_state -> ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ]) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | FINAL ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | NATIVE ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | PRIVATE ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | PROTECTED ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | PUBLIC ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | STATIC ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | STRICTFP ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | SYNCHRONIZED ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | TRANSIENT ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | VOLATILE ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | BOOLEAN | BYTE | CHAR | CLASS | DOUBLE | FLOAT | IDENTIFIER _ | INT | INTERFACE | LONG | SHORT | VOID ->
        _menhir_reduce186 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | RBRACE ->
        _menhir_reduce170 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | LBRACE ->
        _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState550
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState550

and _menhir_reduce166 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.statement list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 13457 "Parsing/Parser.ml"
     in
    _menhir_goto_list_blockStatement_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run125 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | BYTE ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | CHAR ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | CHAR_LIT _v ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | DOUBLE ->
            _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | FALSE ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | FLOAT ->
            _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | FLOAT_LIT _v ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | IDENTIFIER _v ->
            _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | INT ->
            _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | INT_LIT _v ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | LONG ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | LPAREN ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | NEW ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | NULL ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | OP_BNOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | OP_DEC ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | OP_INC ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | OP_NOT ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | OP_SUB ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | SHORT ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | STRING _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | SUPER ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | THIS ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | TRUE ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | VOID ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run390 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState390
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState390

and _menhir_run404 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState404
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState404

and _menhir_run407 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | BYTE ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | CHAR ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | CHAR_LIT _v ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState408 _v
        | DOUBLE ->
            _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | FALSE ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | FLOAT ->
            _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | FLOAT_LIT _v ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState408 _v
        | IDENTIFIER _v ->
            _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState408 _v
        | INT ->
            _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | INT_LIT _v ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState408 _v
        | LONG ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | LPAREN ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | NEW ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | NULL ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | OP_BNOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | OP_DEC ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | OP_INC ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | OP_NOT ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | OP_SUB ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | SHORT ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | STRING _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState408 _v
        | SUPER ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | THIS ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | TRUE ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | VOID ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState408
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState408)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run412 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | BYTE ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | CHAR ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | CHAR_LIT _v ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState413 _v
        | DOUBLE ->
            _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | FALSE ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | FLOAT ->
            _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | FLOAT_LIT _v ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState413 _v
        | IDENTIFIER _v ->
            _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState413 _v
        | INT ->
            _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | INT_LIT _v ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState413 _v
        | LONG ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | LPAREN ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | NEW ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | NULL ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | OP_BNOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | OP_DEC ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | OP_INC ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | OP_NOT ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | OP_SUB ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | SHORT ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | STRING _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState413 _v
        | SUPER ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | THIS ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | TRUE ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | VOID ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState413
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState413)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run424 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState424
    | DOT | IDENTIFIER _ ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState424
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState424

and _menhir_run435 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.statement) = 
# 82 "Parsing/InnerParser.mly"
         (
  Nop
      )
# 13784 "Parsing/Parser.ml"
     in
    _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run436 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState436 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState436 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState436 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState436 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState436 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | SEMI ->
        _menhir_reduce232 _menhir_env (Obj.magic _menhir_stack) MenhirState436
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState436

and _menhir_run439 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState439
    | DOT | IDENTIFIER _ ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState439
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState439

and _menhir_run443 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState443
    | DOT | IDENTIFIER _ ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState443
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState443

and _menhir_run447 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | BYTE ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | CHAR ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | CHAR_LIT _v ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState448 _v
        | DOUBLE ->
            _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | FALSE ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | FLOAT ->
            _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | FLOAT_LIT _v ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState448 _v
        | IDENTIFIER _v ->
            _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState448 _v
        | INT ->
            _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | INT_LIT _v ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState448 _v
        | LONG ->
            _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | LPAREN ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | NEW ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | NULL ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | OP_BNOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | OP_DEC ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | OP_INC ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | OP_NOT ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | OP_SUB ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | SHORT ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | STRING _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState448 _v
        | SUPER ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | THIS ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | TRUE ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | VOID ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState448
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState448)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run451 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "Parsing/OuterParser.mly"
       (string)
# 13960 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSERT ->
            _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | BOOLEAN ->
            _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | BREAK ->
            _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | BYTE ->
            _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | CHAR ->
            _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | CHAR_LIT _v ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState452 _v
        | CLASS ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | DO ->
            _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | DOUBLE ->
            _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | FALSE ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | FINAL ->
            _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | FLOAT ->
            _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | FLOAT_LIT _v ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState452 _v
        | FOR ->
            _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | IDENTIFIER _v ->
            _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState452 _v
        | IF ->
            _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | INT ->
            _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | INTERFACE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | INT_LIT _v ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState452 _v
        | LBRACE ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | LONG ->
            _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | LPAREN ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | NEW ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | NULL ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | OP_BNOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | OP_DEC ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | OP_INC ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | OP_NOT ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | OP_SUB ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | RETURN ->
            _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | SEMI ->
            _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | SHORT ->
            _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | STRING _v ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState452 _v
        | SUPER ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | SWITCH ->
            _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | SYNCHRONIZED ->
            _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | THIS ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | THROW ->
            _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | TRUE ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | TRY ->
            _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | VOID ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | WHILE ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState452
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState452)
    | LBRACKET ->
        _menhir_reduce149 _menhir_env (Obj.magic _menhir_stack)
    | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | SEMI ->
        _menhir_reduce135 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run453 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FINAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _10 = () in
            let _v : (unit option) = let x =
              let _1 = _10 in
              
# 147 "Parsing/InnerParser.mly"
                                ( )
# 14092 "Parsing/Parser.ml"
              
            in
            
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 14098 "Parsing/Parser.ml"
             in
            _menhir_goto_option_variableModifier_ _menhir_env _menhir_stack _v
        | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENTIFIER _ | INT | LONG | SHORT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (unit option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 14106 "Parsing/Parser.ml"
             in
            _menhir_goto_option_variableModifier_ _menhir_env _menhir_stack _v
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : ((Type.t option * string * AST.expression option) list) = 
# 144 "Parsing/InnerParser.mly"
    ( [] )
# 14114 "Parsing/Parser.ml"
             in
            _menhir_goto_forInit _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run471 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState471
    | DOT | IDENTIFIER _ ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState471
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState471

and _menhir_run475 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState475
    | BYTE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState475
    | CHAR ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState475
    | DOUBLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState475
    | FLOAT ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState475
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState475 _v
    | INT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState475
    | LONG ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState475
    | SHORT ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState475
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState475

and _menhir_run479 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState479
    | DOT | IDENTIFIER _ ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState479
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState479

and _menhir_run483 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | BOOLEAN ->
        _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | BREAK ->
        _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | BYTE ->
        _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | CHAR ->
        _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState483 _v
    | CLASS ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | DO ->
        _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | DOUBLE ->
        _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | FINAL ->
        _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | FLOAT ->
        _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState483 _v
    | FOR ->
        _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | IDENTIFIER _v ->
        _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState483 _v
    | IF ->
        _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | INT ->
        _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | INTERFACE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState483 _v
    | LBRACE ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | LONG ->
        _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | RETURN ->
        _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | SEMI ->
        _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | SHORT ->
        _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState483 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | SWITCH ->
        _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | SYNCHRONIZED ->
        _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | THROW ->
        _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | TRY ->
        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | WHILE ->
        _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState483
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState483

and _menhir_run484 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState484
    | DOT | IDENTIFIER _ ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState484
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState484

and _menhir_run488 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState488
    | DOT | IDENTIFIER _ ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState488
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState488

and _menhir_run492 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 14327 "Parsing/Parser.ml"
        )) = _v in
        let _v : (string option) = 
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 14332 "Parsing/Parser.ml"
         in
        _menhir_goto_option_IDENTIFIER_ _menhir_env _menhir_stack _v
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (string option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 14340 "Parsing/Parser.ml"
         in
        _menhir_goto_option_IDENTIFIER_ _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run496 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState496
    | DOT | IDENTIFIER _ ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState496
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState496

and _menhir_run500 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState500 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState500 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState500 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState500 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState500 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState500
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState500

and _menhir_reduce184 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 14433 "Parsing/Parser.ml"
     in
    _menhir_goto_list_interfaceContent_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce186 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.modifier list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 14442 "Parsing/Parser.ml"
     in
    _menhir_goto_list_modifier_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 175 "Parsing/OuterParser.mly"
                 ( Volatile )
# 14454 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 174 "Parsing/OuterParser.mly"
                 ( Transient )
# 14466 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 176 "Parsing/OuterParser.mly"
                 ( Synchronized  )
# 14478 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 178 "Parsing/OuterParser.mly"
                 ( Strictfp  )
# 14490 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce211 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 168 "Parsing/OuterParser.mly"
                 ( Public    )
# 14508 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 169 "Parsing/OuterParser.mly"
                 ( Protected )
# 14520 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 170 "Parsing/OuterParser.mly"
                 ( Private   )
# 14532 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 177 "Parsing/OuterParser.mly"
                 ( Native  )
# 14544 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 173 "Parsing/OuterParser.mly"
                 ( Final     )
# 14556 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (AST.modifier) = 
# 171 "Parsing/OuterParser.mly"
                 ( Abstract  )
# 14568 "Parsing/Parser.ml"
     in
    _menhir_goto_modifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EXTENDS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | LBRACE ->
                _menhir_reduce192 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
        | LBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Type.ref_type list option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 14602 "Parsing/Parser.ml"
             in
            _menhir_goto_option_preceded_EXTENDS_separated_list_COMMA_classOrInterfaceType___ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run108 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EXTENDS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)
        | IMPLEMENTS | LBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Type.ref_type option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 14646 "Parsing/Parser.ml"
             in
            _menhir_goto_option_preceded_EXTENDS_classOrInterfaceType__ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run116 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | FINAL ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | NATIVE ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | PRIVATE ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | PROTECTED ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | PUBLIC ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | STATIC ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | STRICTFP ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | SYNCHRONIZED ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | TRANSIENT ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | VOLATILE ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | BOOLEAN | BYTE | CHAR | CLASS | DOUBLE | FLOAT | IDENTIFIER _ | INT | INTERFACE | LONG | SHORT | VOID ->
        _menhir_reduce186 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | RBRACE ->
        _menhir_reduce170 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | LBRACE ->
        _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116

and _menhir_reduce236 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.expression option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 14706 "Parsing/Parser.ml"
     in
    _menhir_goto_option_preceded_ASSIGN_variableInitializer__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run428 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState428 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState428 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState428 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState428 _v
    | LBRACE ->
        _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState428 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState428
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState428

and _menhir_run426 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "Parsing/OuterParser.mly"
       (string)
# 14778 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState426
    | ASSIGN | COMMA | SEMI ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState426
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState426

and _menhir_run191 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * ((unit * unit) list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 14811 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 113 "Parsing/OuterParser.mly"
            ( Type.Boolean )
# 14817 "Parsing/Parser.ml"
          
        in
        
# 221 "Parsing/InnerParser.mly"
                                                              (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = ClassOf(t); etype = None }
    )
# 14828 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run187 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * ((unit * unit) list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 14855 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 115 "Parsing/OuterParser.mly"
            ( Type.Byte   )
# 14861 "Parsing/Parser.ml"
          
        in
        
# 221 "Parsing/InnerParser.mly"
                                                              (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = ClassOf(t); etype = None }
    )
# 14872 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run183 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * ((unit * unit) list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 14899 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 114 "Parsing/OuterParser.mly"
            ( Type.Char   )
# 14905 "Parsing/Parser.ml"
          
        in
        
# 221 "Parsing/InnerParser.mly"
                                                              (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = ClassOf(t); etype = None }
    )
# 14916 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run178 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * ((unit * unit) list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 14943 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 120 "Parsing/OuterParser.mly"
            ( Type.Double )
# 14949 "Parsing/Parser.ml"
          
        in
        
# 221 "Parsing/InnerParser.mly"
                                                              (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = ClassOf(t); etype = None }
    )
# 14960 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run173 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * ((unit * unit) list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 14987 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 119 "Parsing/OuterParser.mly"
            ( Type.Float  )
# 14993 "Parsing/Parser.ml"
          
        in
        
# 221 "Parsing/InnerParser.mly"
                                                              (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = ClassOf(t); etype = None }
    )
# 15004 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run167 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * ((unit * unit) list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15031 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 117 "Parsing/OuterParser.mly"
            ( Type.Int    )
# 15037 "Parsing/Parser.ml"
          
        in
        
# 221 "Parsing/InnerParser.mly"
                                                              (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = ClassOf(t); etype = None }
    )
# 15048 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run162 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * ((unit * unit) list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15075 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 118 "Parsing/OuterParser.mly"
            ( Type.Long   )
# 15081 "Parsing/Parser.ml"
          
        in
        
# 221 "Parsing/InnerParser.mly"
                                                              (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = ClassOf(t); etype = None }
    )
# 15092 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run127 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CLASS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15124 "Parsing/Parser.ml"
            ) = 
# 212 "Parsing/InnerParser.mly"
                    ( { edesc = VoidClass; etype = None } )
# 15128 "Parsing/Parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run130 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _10 = () in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15152 "Parsing/Parser.ml"
    ) = let l =
      let _1 = _10 in
      
# 299 "Parsing/InnerParser.mly"
         ( AST.Boolean true)
# 15158 "Parsing/Parser.ml"
      
    in
    
# 219 "Parsing/InnerParser.mly"
              ( { edesc = Val(l); etype = None } )
# 15164 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run131 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _10 = () in
        let _v : (AST.expression) = let id =
          let _1 = _10 in
          
# 255 "Parsing/InnerParser.mly"
         ( "this" )
# 15183 "Parsing/Parser.ml"
          
        in
        
# 230 "Parsing/InnerParser.mly"
            ( { edesc = Name(id); etype = None } )
# 15189 "Parsing/Parser.ml"
         in
        _menhir_goto_expressionSansBracket _menhir_env _menhir_stack _menhir_s _v
    | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15199 "Parsing/Parser.ml"
        ) = let id =
          let _1 = _10 in
          
# 255 "Parsing/InnerParser.mly"
         ( "this" )
# 15205 "Parsing/Parser.ml"
          
        in
        
# 220 "Parsing/InnerParser.mly"
            ( { edesc = Name(id); etype = None } )
# 15211 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run132 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _10 = () in
        let _v : (AST.expression) = let id =
          let _1 = _10 in
          
# 256 "Parsing/InnerParser.mly"
          ( "super" )
# 15236 "Parsing/Parser.ml"
          
        in
        
# 230 "Parsing/InnerParser.mly"
            ( { edesc = Name(id); etype = None } )
# 15242 "Parsing/Parser.ml"
         in
        _menhir_goto_expressionSansBracket _menhir_env _menhir_stack _menhir_s _v
    | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15252 "Parsing/Parser.ml"
        ) = let id =
          let _1 = _10 in
          
# 256 "Parsing/InnerParser.mly"
          ( "super" )
# 15258 "Parsing/Parser.ml"
          
        in
        
# 220 "Parsing/InnerParser.mly"
            ( { edesc = Name(id); etype = None } )
# 15264 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run133 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "Parsing/InnerParser.mly"
       (string)
# 15277 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (s0 : (
# 40 "Parsing/InnerParser.mly"
       (string)
# 15285 "Parsing/Parser.ml"
    )) = _v in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15290 "Parsing/Parser.ml"
    ) = let l =
      let s = s0 in
      
# 298 "Parsing/InnerParser.mly"
               ( String s )
# 15296 "Parsing/Parser.ml"
      
    in
    
# 219 "Parsing/InnerParser.mly"
              ( { edesc = Val(l); etype = None } )
# 15302 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run134 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | DOT ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134

and _menhir_run138 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState138
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138

and _menhir_run139 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139

and _menhir_run140 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140

and _menhir_run141 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141

and _menhir_run142 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | BYTE ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | CHAR ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | DOUBLE ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | FLOAT ->
        _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | INT ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | LONG ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | SHORT ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142

and _menhir_run143 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _10 = () in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15644 "Parsing/Parser.ml"
    ) = let l =
      let _1 = _10 in
      
# 301 "Parsing/InnerParser.mly"
         ( Null )
# 15650 "Parsing/Parser.ml"
      
    in
    
# 219 "Parsing/InnerParser.mly"
              ( { edesc = Val(l); etype = None } )
# 15656 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run144 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState144 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState373
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState373)
    | BYTE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState144 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState370
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState370)
    | CHAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState144 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState367
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState367)
    | DOUBLE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState144 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState364
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState364)
    | FLOAT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState144 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState361)
    | IDENTIFIER _v ->
        _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | INT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState144 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState358
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState358)
    | LONG ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState144 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState355
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState355)
    | SHORT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState144 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154)
    | SUPER ->
        _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | THIS ->
        _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144

and _menhir_run156 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState156 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState330
        | DOT | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState330
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState330)
    | BYTE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState156 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState326
        | DOT | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState326
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState326)
    | CHAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState156 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState322
        | DOT | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState322
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState322)
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
    | DOUBLE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState156 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState318
        | DOT | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState318
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState318)
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | FLOAT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState156 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState314
        | DOT | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState314
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState314)
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
    | IDENTIFIER _v ->
        _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
    | INT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState156 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState310
        | DOT | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState310
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState310)
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
    | LONG ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState156 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState306
        | DOT | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState306
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState306)
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | SHORT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState156 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState157
        | DOT | RPAREN ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState157
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157)
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState156
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156

and _menhir_run160 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | DOT ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState160
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160

and _menhir_run164 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "Parsing/InnerParser.mly"
       (string)
# 15966 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i0 : (
# 38 "Parsing/InnerParser.mly"
       (string)
# 15974 "Parsing/Parser.ml"
    )) = _v in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 15979 "Parsing/Parser.ml"
    ) = let l =
      let i = i0 in
      
# 295 "Parsing/InnerParser.mly"
                ( AST.Int i )
# 15985 "Parsing/Parser.ml"
      
    in
    
# 219 "Parsing/InnerParser.mly"
              ( { edesc = Val(l); etype = None } )
# 15991 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run165 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState165
    | DOT ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState165
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165

and _menhir_run169 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "Parsing/OuterParser.mly"
       (string)
# 16013 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_reduce149 _menhir_env (Obj.magic _menhir_stack)
    | ASSIGN | ASS_ADD | ASS_AND | ASS_DIV | ASS_MOD | ASS_MUL | ASS_OR | ASS_SHL | ASS_SHR | ASS_SHRR | ASS_SUB | ASS_XOR | COLON | COMMA | DOT | IDENTIFIER _ | INSTANCEOF | LPAREN | OP_ADD | OP_AND | OP_CAND | OP_COND | OP_COR | OP_DEC | OP_DIV | OP_EQ | OP_GE | OP_GT | OP_INC | OP_LE | OP_LT | OP_MOD | OP_MUL | OP_NE | OP_OR | OP_SHL | OP_SHR | OP_SHRR | OP_SUB | OP_XOR | RBRACE | RBRACKET | RPAREN | SEMI ->
        _menhir_reduce135 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run170 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "Parsing/InnerParser.mly"
       (string)
# 16034 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (f0 : (
# 39 "Parsing/InnerParser.mly"
       (string)
# 16042 "Parsing/Parser.ml"
    )) = _v in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 16047 "Parsing/Parser.ml"
    ) = let l =
      let f = f0 in
      
# 296 "Parsing/InnerParser.mly"
                  ( AST.Float f )
# 16053 "Parsing/Parser.ml"
      
    in
    
# 219 "Parsing/InnerParser.mly"
              ( { edesc = Val(l); etype = None } )
# 16059 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run171 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | DOT ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171

and _menhir_run175 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _10 = () in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 16086 "Parsing/Parser.ml"
    ) = let l =
      let _1 = _10 in
      
# 300 "Parsing/InnerParser.mly"
          ( AST.Boolean false )
# 16092 "Parsing/Parser.ml"
      
    in
    
# 219 "Parsing/InnerParser.mly"
              ( { edesc = Val(l); etype = None } )
# 16098 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run176 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | DOT ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176

and _menhir_run180 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "Parsing/InnerParser.mly"
       (char option)
# 16120 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (c0 : (
# 41 "Parsing/InnerParser.mly"
       (char option)
# 16128 "Parsing/Parser.ml"
    )) = _v in
    let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 16133 "Parsing/Parser.ml"
    ) = let l =
      let c = c0 in
      
# 297 "Parsing/InnerParser.mly"
                 ( AST.Char c )
# 16139 "Parsing/Parser.ml"
      
    in
    
# 219 "Parsing/InnerParser.mly"
              ( { edesc = Val(l); etype = None } )
# 16145 "Parsing/Parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run181 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | DOT ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181

and _menhir_run185 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | DOT ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185

and _menhir_run189 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | DOT ->
        _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189

and _menhir_run136 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * ((unit * unit) list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))), _) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _10 = () in
        let _v : (
# 66 "Parsing/InnerParser.mly"
      (AST.expression)
# 16211 "Parsing/Parser.ml"
        ) = let t =
          let _1 = _10 in
          
# 116 "Parsing/OuterParser.mly"
            ( Type.Short  )
# 16217 "Parsing/Parser.ml"
          
        in
        
# 221 "Parsing/InnerParser.mly"
                                                              (
      let t = match List.length l with
  | 0 -> Primitive t
  | n -> Array(Primitive t,n) in
      { edesc = ClassOf(t); etype = None }
    )
# 16228 "Parsing/Parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_COMMA_formalParameter_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.argument list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (AST.argument list)) = _v in
        let _v : (AST.argument list) = 
# 144 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 16248 "Parsing/Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_formalParameter__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (AST.argument list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (AST.argument))) = _menhir_stack in
        let _2 = () in
        let _v : (AST.argument list) = 
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16260 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_formalParameter_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (bool) = 
# 133 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( false )
# 16271 "Parsing/Parser.ml"
     in
    _menhir_goto_boption_FINAL_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (bool) = 
# 135 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( true )
# 16283 "Parsing/Parser.ml"
     in
    _menhir_goto_boption_FINAL_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_aType : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 16290 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | VARARG ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _1 = () in
            let _v : (bool) = 
# 135 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( true )
# 16308 "Parsing/Parser.ml"
             in
            _menhir_goto_boption_VARARG_ _menhir_env _menhir_stack _v
        | IDENTIFIER _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (bool) = 
# 133 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( false )
# 16316 "Parsing/Parser.ml"
             in
            _menhir_goto_boption_VARARG_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState456 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState463 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState463)
    | MenhirState475 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState476 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState476)
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState540 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACKET ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState541
            | LPAREN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState541
            | ASSIGN | COMMA | SEMI ->
                _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState541
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState541)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState540)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState557 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACKET ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState558
            | LPAREN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState558
            | ASSIGN | COMMA | SEMI ->
                _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState558
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState558)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState557)
    | _ ->
        _menhir_fail ()

and _menhir_goto_memberDecl : _menhir_env -> 'ttv_tail -> _menhir_state -> ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ]) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (decl : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ])) = _v in
    let (_menhir_stack, _menhir_s, (l : (AST.modifier list))) = _menhir_stack in
    let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Initializer of AST.initial
  | `Meth of AST.astmethod ]) = 
# 124 "Parsing/OuterParser.mly"
                                    (
	match decl with
	| `AttList al -> `AttList (List.map (fun d -> { d with amodifiers = l }) al)
	| `Meth m -> `Meth { m with mmodifiers = l }
	| `Const c -> `Const { c with cmodifiers = l }
	| `Class c -> `Class { c with modifiers = l }
    )
# 16427 "Parsing/Parser.ml"
     in
    _menhir_goto_classContent _menhir_env _menhir_stack _menhir_s _v

and _menhir_run124 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run500 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | BOOLEAN ->
        _menhir_run496 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | BREAK ->
        _menhir_run492 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | BYTE ->
        _menhir_run488 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | CHAR ->
        _menhir_run484 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | CHAR_LIT _v ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | CLASS ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | DO ->
        _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | DOUBLE ->
        _menhir_run479 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | FALSE ->
        _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | FINAL ->
        _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | FLOAT ->
        _menhir_run471 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | FLOAT_LIT _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | FOR ->
        _menhir_run453 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | IDENTIFIER _v ->
        _menhir_run451 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | IF ->
        _menhir_run447 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | INT ->
        _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | INTERFACE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | INT_LIT _v ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | LBRACE ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | LONG ->
        _menhir_run439 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | LPAREN ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | NEW ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | NULL ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | OP_BNOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | OP_DEC ->
        _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | OP_INC ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | OP_NOT ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | OP_SUB ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | RETURN ->
        _menhir_run436 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | SEMI ->
        _menhir_run435 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | SHORT ->
        _menhir_run424 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | STRING _v ->
        _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | SUPER ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | SWITCH ->
        _menhir_run412 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | SYNCHRONIZED ->
        _menhir_run407 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | THIS ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | THROW ->
        _menhir_run404 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | TRUE ->
        _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | TRY ->
        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | VOID ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | WHILE ->
        _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | RBRACE ->
        _menhir_reduce166 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124

and _menhir_goto_interfaceMemberDecl : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (decl : (unit)) = _v in
    let (_menhir_stack, _menhir_s, (l : (AST.modifier list))) = _menhir_stack in
    let _v : (unit) = 
# 133 "Parsing/OuterParser.mly"
                                             ( )
# 16537 "Parsing/Parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | FINAL ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | NATIVE ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | PRIVATE ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | PROTECTED ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | PUBLIC ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | STATIC ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | STRICTFP ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | SYNCHRONIZED ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | TRANSIENT ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | VOLATILE ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | BOOLEAN | BYTE | CHAR | CLASS | DOUBLE | FLOAT | IDENTIFIER _ | INT | INTERFACE | LONG | SHORT | VOID ->
        _menhir_reduce186 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | RBRACE ->
        _menhir_reduce184 _menhir_env (Obj.magic _menhir_stack) MenhirState566
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState566

and _menhir_goto_option_preceded_EXTENDS_separated_list_COMMA_classOrInterfaceType___ : _menhir_env -> 'ttv_tail -> (Type.ref_type list option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABSTRACT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | FINAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NATIVE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PRIVATE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PROTECTED ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PUBLIC ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | STATIC ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | STRICTFP ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | SYNCHRONIZED ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | TRANSIENT ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | VOLATILE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | BOOLEAN | BYTE | CHAR | CLASS | DOUBLE | FLOAT | IDENTIFIER _ | INT | INTERFACE | LONG | SHORT | VOID ->
            _menhir_reduce186 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | RBRACE ->
            _menhir_reduce184 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_list_classModifier_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.modifier list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (AST.modifier list))) = _menhir_stack in
        let _10 = () in
        let _v : (AST.modifier list) = let x =
          let _1 = _10 in
          
# 74 "Parsing/OuterParser.mly"
               ( Abstract  )
# 16638 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16644 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classModifier_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (AST.modifier list))) = _menhir_stack in
        let _10 = () in
        let _v : (AST.modifier list) = let x =
          let _1 = _10 in
          
# 76 "Parsing/OuterParser.mly"
               ( Final     )
# 16657 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16663 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classModifier_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (AST.modifier list))) = _menhir_stack in
        let _10 = () in
        let _v : (AST.modifier list) = let x =
          let _1 = _10 in
          
# 73 "Parsing/OuterParser.mly"
               ( Private   )
# 16676 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16682 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classModifier_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (AST.modifier list))) = _menhir_stack in
        let _10 = () in
        let _v : (AST.modifier list) = let x =
          let _1 = _10 in
          
# 72 "Parsing/OuterParser.mly"
               ( Protected )
# 16695 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16701 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classModifier_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (AST.modifier list))) = _menhir_stack in
        let _10 = () in
        let _v : (AST.modifier list) = let x =
          let _1 = _10 in
          
# 71 "Parsing/OuterParser.mly"
               ( Public    )
# 16714 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16720 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classModifier_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (AST.modifier list))) = _menhir_stack in
        let _10 = () in
        let _v : (AST.modifier list) = let x =
          let _1 = _10 in
          
# 75 "Parsing/OuterParser.mly"
               ( Static    )
# 16733 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16739 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classModifier_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : (AST.modifier list))) = _menhir_stack in
        let _10 = () in
        let _v : (AST.modifier list) = let x =
          let _1 = _10 in
          
# 77 "Parsing/OuterParser.mly"
               ( Strictfp  )
# 16752 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16758 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classModifier_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState570 | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CLASS ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | INTERFACE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_classOrInterfaceDeclaration_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.asttype list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (cl : (AST.asttype list)) = _v in
        let ((_menhir_stack, (p : (AST.qualified_name option))), _, (_2 : (unit list))) = _menhir_stack in
        let _v : (AST.t) = 
# 49 "Parsing/OuterParser.mly"
         ( { package = p ; type_list = cl } )
# 16788 "Parsing/Parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, (p : (AST.t))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 37 "Parsing/OuterParser.mly"
      (AST.t)
# 16803 "Parsing/Parser.ml"
            ) = 
# 45 "Parsing/OuterParser.mly"
                                 ( p )
# 16807 "Parsing/Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 37 "Parsing/OuterParser.mly"
      (AST.t)
# 16814 "Parsing/Parser.ml"
            )) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | MenhirState570 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (AST.asttype list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (AST.asttype))) = _menhir_stack in
        let _v : (AST.asttype list) = 
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16830 "Parsing/Parser.ml"
         in
        _menhir_goto_list_classOrInterfaceDeclaration_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_restName : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list * bool) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (rest : (string list * bool)) = _v in
        let (_menhir_stack, _menhir_s, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 16846 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (string list * bool) = 
# 61 "Parsing/OuterParser.mly"
                                        ( let (list,star) = rest in id::list, star)
# 16852 "Parsing/Parser.ml"
         in
        _menhir_goto_restName _menhir_env _menhir_stack _menhir_s _v
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (rest : (string list * bool)) = _v in
        let (_menhir_stack, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 16862 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (string list * bool) = 
# 57 "Parsing/OuterParser.mly"
                                        ( let (list,star) = rest in id::list, star)
# 16868 "Parsing/Parser.ml"
         in
        _menhir_goto_importName _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_preceded_IMPLEMENTS_separated_list_COMMA_classOrInterfaceType___ : _menhir_env -> 'ttv_tail -> (Type.ref_type list option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115

and _menhir_reduce192 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Type.ref_type list) = 
# 142 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 16893 "Parsing/Parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_classOrInterfaceType__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_pair_LBRACKET_RBRACKET__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((unit * unit) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : ((unit * unit) list))) = _menhir_stack in
        let y0 = () in
        let x0 = () in
        let _v : ((unit * unit) list) = let x =
          let y = y0 in
          let x = x0 in
          
# 155 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( (x, y) )
# 16913 "Parsing/Parser.ml"
          
        in
        
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 16919 "Parsing/Parser.ml"
         in
        _menhir_goto_list_pair_LBRACKET_RBRACKET__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _10 = () in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 16930 "Parsing/Parser.ml"
        ) = let p =
          let _1 = _10 in
          
# 116 "Parsing/OuterParser.mly"
            ( Type.Short  )
# 16936 "Parsing/Parser.ml"
          
        in
        
# 108 "Parsing/OuterParser.mly"
                                                        (
	if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p
    )
# 16944 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _10 = () in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 16955 "Parsing/Parser.ml"
        ) = let p =
          let _1 = _10 in
          
# 118 "Parsing/OuterParser.mly"
            ( Type.Long   )
# 16961 "Parsing/Parser.ml"
          
        in
        
# 108 "Parsing/OuterParser.mly"
                                                        (
	if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p
    )
# 16969 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _10 = () in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 16980 "Parsing/Parser.ml"
        ) = let p =
          let _1 = _10 in
          
# 117 "Parsing/OuterParser.mly"
            ( Type.Int    )
# 16986 "Parsing/Parser.ml"
          
        in
        
# 108 "Parsing/OuterParser.mly"
                                                        (
	if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p
    )
# 16994 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _10 = () in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 17005 "Parsing/Parser.ml"
        ) = let p =
          let _1 = _10 in
          
# 119 "Parsing/OuterParser.mly"
            ( Type.Float  )
# 17011 "Parsing/Parser.ml"
          
        in
        
# 108 "Parsing/OuterParser.mly"
                                                        (
	if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p
    )
# 17019 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _10 = () in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 17030 "Parsing/Parser.ml"
        ) = let p =
          let _1 = _10 in
          
# 120 "Parsing/OuterParser.mly"
            ( Type.Double )
# 17036 "Parsing/Parser.ml"
          
        in
        
# 108 "Parsing/OuterParser.mly"
                                                        (
	if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p
    )
# 17044 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _10 = () in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 17055 "Parsing/Parser.ml"
        ) = let p =
          let _1 = _10 in
          
# 114 "Parsing/OuterParser.mly"
            ( Type.Char   )
# 17061 "Parsing/Parser.ml"
          
        in
        
# 108 "Parsing/OuterParser.mly"
                                                        (
	if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p
    )
# 17069 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _10 = () in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 17080 "Parsing/Parser.ml"
        ) = let p =
          let _1 = _10 in
          
# 115 "Parsing/OuterParser.mly"
            ( Type.Byte   )
# 17086 "Parsing/Parser.ml"
          
        in
        
# 108 "Parsing/OuterParser.mly"
                                                        (
	if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p
    )
# 17094 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _10 = () in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 17105 "Parsing/Parser.ml"
        ) = let p =
          let _1 = _10 in
          
# 113 "Parsing/OuterParser.mly"
            ( Type.Boolean )
# 17111 "Parsing/Parser.ml"
          
        in
        
# 108 "Parsing/OuterParser.mly"
                                                        (
	if List.length l > 0 then Array(Primitive p,List.length l) else Primitive p
    )
# 17119 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (t : (Type.ref_type))), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _v : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 17129 "Parsing/Parser.ml"
        ) = 
# 105 "Parsing/OuterParser.mly"
                                                               (
	if List.length l > 0 then Array(Ref t,List.length l) else Ref t
    )
# 17135 "Parsing/Parser.ml"
         in
        _menhir_goto_aType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (f : (bool))), _, (t : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 17144 "Parsing/Parser.ml"
        ))), (va : (bool))), (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 17148 "Parsing/Parser.ml"
        ))), _, (l : ((unit * unit) list))) = _menhir_stack in
        let _v : (AST.argument) = 
# 182 "Parsing/OuterParser.mly"
                                                                                              (
	 { final = f ; vararg = va ; ptype = Type.mk_array (List.length l) t ; pident = id ; }
    )
# 17155 "Parsing/Parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState73 | MenhirState67 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FINAL ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENTIFIER _ | INT | LONG | SHORT ->
                    _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (AST.argument))) = _menhir_stack in
                let _v : (AST.argument list) = 
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 17183 "Parsing/Parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_formalParameter_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState394 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState396
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState396)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135)
    | MenhirState157 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState158 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158)
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run162 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161)
    | MenhirState165 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166)
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172)
    | MenhirState176 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177)
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState182)
    | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186)
    | MenhirState189 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190)
    | MenhirState306 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run162 _menhir_env (Obj.magic _menhir_stack) MenhirState307
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState307 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState308
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState307)
    | MenhirState310 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState311
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState311 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState312
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState311)
    | MenhirState314 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState315
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState315 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState315)
    | MenhirState318 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState319
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState319 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState320
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState319)
    | MenhirState322 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack) MenhirState323
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState323 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState323)
    | MenhirState326 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState327
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState327 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState327)
    | MenhirState330 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState331
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState331 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | BYTE ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | CHAR ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | CHAR_LIT _v ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
            | DOUBLE ->
                _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | FALSE ->
                _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | FLOAT ->
                _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | FLOAT_LIT _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
            | IDENTIFIER _v ->
                _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
            | INT ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | INT_LIT _v ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
            | LONG ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | LPAREN ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | NEW ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | NULL ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | OP_BNOT ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | OP_DEC ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | OP_INC ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | OP_NOT ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | OP_SUB ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | SHORT ->
                _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | STRING _v ->
                _menhir_run133 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
            | SUPER ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | THIS ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | TRUE ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | VOID ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState331)
    | MenhirState424 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState425
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState425 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState425)
    | MenhirState558 | MenhirState541 | MenhirState426 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            _menhir_run428 _menhir_env (Obj.magic _menhir_stack) MenhirState427
        | COMMA | SEMI ->
            _menhir_reduce236 _menhir_env (Obj.magic _menhir_stack) MenhirState427
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState427)
    | MenhirState439 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run162 _menhir_env (Obj.magic _menhir_stack) MenhirState440
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState440)
    | MenhirState443 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState444
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState444 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState444)
    | MenhirState471 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState472
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState472 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState472)
    | MenhirState479 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState480
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState480)
    | MenhirState484 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack) MenhirState485
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState485 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState485)
    | MenhirState488 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState489
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState489 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState489)
    | MenhirState496 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState497
        | IDENTIFIER _v ->
            _menhir_run426 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState497)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_throws_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Type.ref_type list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18032 "Parsing/Parser.ml"
            ))), _, (pl : (AST.argument list))), _, (el : (Type.ref_type list))) = _menhir_stack in
            let _5 = () in
            let _1 = () in
            let _v : (unit) = 
# 161 "Parsing/OuterParser.mly"
                                                                               ( )
# 18039 "Parsing/Parser.ml"
             in
            _menhir_goto_interfaceMemberDecl _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState122 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18063 "Parsing/Parser.ml"
            ))), _, (pl : (AST.argument list))), _, (el : (Type.ref_type list))) = _menhir_stack in
            let _5 = () in
            let _1 = () in
            let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ]) = 
# 145 "Parsing/OuterParser.mly"
                                                                               (
        `Meth { mmodifiers = [] ; mreturntype = Type.Void ; mname = id ; margstype=pl ; mthrows =el ; mbody=[] }
    )
# 18075 "Parsing/Parser.ml"
             in
            _menhir_goto_memberDecl _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122)
    | MenhirState535 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState536
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState536)
    | MenhirState542 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState543
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState543 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (r : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 18108 "Parsing/Parser.ml"
            ))), _, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18112 "Parsing/Parser.ml"
            ))), _, (pl : (AST.argument list))), _, (el : (Type.ref_type list))) = _menhir_stack in
            let _5 = () in
            let _v : ([ `AttList of AST.astattribute list
  | `Class of AST.asttype
  | `Const of AST.astconst
  | `Meth of AST.astmethod ]) = 
# 148 "Parsing/OuterParser.mly"
                                                                                  (
        `Meth { mmodifiers = [] ; mreturntype = r ; mname = id ; margstype=pl ; mthrows =el ; mbody=[] }
    )
# 18123 "Parsing/Parser.ml"
             in
            _menhir_goto_memberDecl _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState543)
    | MenhirState559 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (r : (
# 38 "Parsing/OuterParser.mly"
      (Type.t)
# 18142 "Parsing/Parser.ml"
            ))), _, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18146 "Parsing/Parser.ml"
            ))), _, (pl : (AST.argument list))), _, (el : (Type.ref_type list))) = _menhir_stack in
            let _5 = () in
            let _v : (unit) = 
# 162 "Parsing/OuterParser.mly"
                                                                                  ( )
# 18152 "Parsing/Parser.ml"
             in
            _menhir_goto_interfaceMemberDecl _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_classOrInterfaceType__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Type.ref_type list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs00 : (Type.ref_type list)) = _v in
        let _10 = () in
        let _v : (Type.ref_type list option) = let x =
          let xs0 = xs00 in
          let _1 = _10 in
          let x =
            let xs = xs0 in
            
# 220 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 18180 "Parsing/Parser.ml"
            
          in
          
# 171 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 18186 "Parsing/Parser.ml"
          
        in
        
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 18192 "Parsing/Parser.ml"
         in
        _menhir_goto_option_preceded_EXTENDS_separated_list_COMMA_classOrInterfaceType___ _menhir_env _menhir_stack _v
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs00 : (Type.ref_type list)) = _v in
        let _10 = () in
        let _v : (Type.ref_type list option) = let x =
          let xs0 = xs00 in
          let _1 = _10 in
          let x =
            let xs = xs0 in
            
# 220 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 18208 "Parsing/Parser.ml"
            
          in
          
# 171 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 18214 "Parsing/Parser.ml"
          
        in
        
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 18220 "Parsing/Parser.ml"
         in
        _menhir_goto_option_preceded_IMPLEMENTS_separated_list_COMMA_classOrInterfaceType___ _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce172 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.modifier list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 18231 "Parsing/Parser.ml"
     in
    _menhir_goto_list_classModifier_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce180 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (AST.asttype list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 18240 "Parsing/Parser.ml"
     in
    _menhir_goto_list_classOrInterfaceDeclaration_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FINAL ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | PRIVATE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | PROTECTED ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | PUBLIC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | STATIC ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | STRICTFP ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | CLASS | INTERFACE ->
        _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | FINAL ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | PRIVATE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | PROTECTED ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | PUBLIC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | STATIC ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | STRICTFP ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | CLASS | INTERFACE ->
        _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | FINAL ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | PRIVATE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | PROTECTED ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | PUBLIC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | STATIC ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | STRICTFP ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | CLASS | INTERFACE ->
        _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FINAL ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | PRIVATE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | PROTECTED ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | PUBLIC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STATIC ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STRICTFP ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | CLASS | INTERFACE ->
        _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | FINAL ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | PRIVATE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | PROTECTED ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | PUBLIC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | STATIC ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | STRICTFP ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | CLASS | INTERFACE ->
        _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FINAL ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | PRIVATE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | PROTECTED ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | PUBLIC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | STATIC ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | STRICTFP ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | CLASS | INTERFACE ->
        _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | FINAL ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | PRIVATE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | PROTECTED ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | PUBLIC ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | STATIC ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | STRICTFP ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | CLASS | INTERFACE ->
        _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_goto_importName : _menhir_env -> 'ttv_tail -> (string list * bool) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), (_2 : (unit option))), (_3 : (string list * bool))) = _menhir_stack in
        let _4 = () in
        let _1 = () in
        let _v : (unit) = 
# 53 "Parsing/OuterParser.mly"
                                                  ()
# 18450 "Parsing/Parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IMPORT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState572
        | ABSTRACT | CLASS | EOF | FINAL | INTERFACE | PRIVATE | PROTECTED | PUBLIC | STATIC | STRICTFP ->
            _menhir_reduce182 _menhir_env (Obj.magic _menhir_stack) MenhirState572
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState572)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (string list * bool) = 
# 60 "Parsing/OuterParser.mly"
           ( [], true )
# 18480 "Parsing/Parser.ml"
     in
    _menhir_goto_restName _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18487 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | OP_MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18512 "Parsing/Parser.ml"
        ))) = _menhir_stack in
        let _v : (string list * bool) = 
# 59 "Parsing/OuterParser.mly"
                    ( [id], false )
# 18517 "Parsing/Parser.ml"
         in
        _menhir_goto_restName _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_option_preceded_EXTENDS_classOrInterfaceType__ : _menhir_env -> 'ttv_tail -> (Type.ref_type option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IMPLEMENTS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | LBRACE ->
            _menhir_reduce192 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
    | LBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (Type.ref_type list option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 18557 "Parsing/Parser.ml"
         in
        _menhir_goto_option_preceded_IMPLEMENTS_separated_list_COMMA_classOrInterfaceType___ _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce188 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((unit * unit) list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 18572 "Parsing/Parser.ml"
     in
    _menhir_goto_list_pair_LBRACKET_RBRACKET__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | ASSIGN | COMMA | DOT | IDENTIFIER _ | RPAREN | SEMI | VARARG ->
            _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_COMMA_classOrInterfaceType_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Type.ref_type list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState113 | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Type.ref_type list)) = _v in
        let _v : (Type.ref_type list) = 
# 144 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 18612 "Parsing/Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_classOrInterfaceType__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Type.ref_type list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Type.ref_type))) = _menhir_stack in
        let _2 = () in
        let _v : (Type.ref_type list) = 
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 18624 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_classOrInterfaceType_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (el : (Type.ref_type list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Type.ref_type list) = 
# 165 "Parsing/OuterParser.mly"
                                                                      ( el )
# 18636 "Parsing/Parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Type.ref_type list)) = _v in
        let _v : (Type.ref_type list) = 
# 144 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 18644 "Parsing/Parser.ml"
         in
        _menhir_goto_loption_throws_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_importDeclaration_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABSTRACT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FINAL ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PRIVATE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PROTECTED ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PUBLIC ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | STATIC ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | STRICTFP ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EOF ->
            _menhir_reduce180 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | CLASS | INTERFACE ->
            _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
    | MenhirState572 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (unit))), _, (xs : (unit list))) = _menhir_stack in
        let _v : (unit list) = 
# 201 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 18688 "Parsing/Parser.ml"
         in
        _menhir_goto_list_importDeclaration_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_STATIC_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | OP_MUL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, (id : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18725 "Parsing/Parser.ml"
            ))) = _menhir_stack in
            let _v : (string list * bool) = 
# 56 "Parsing/OuterParser.mly"
                    ( [id], false )
# 18730 "Parsing/Parser.ml"
             in
            _menhir_goto_importName _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_DOT_IDENTIFIER_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (AST.qualified_name) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (x : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18755 "Parsing/Parser.ml"
        ))), _), _, (xs : (AST.qualified_name))) = _menhir_stack in
        let _2 = () in
        let _v : (AST.qualified_name) = 
# 231 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 18761 "Parsing/Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_DOT_IDENTIFIER_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (n : (AST.qualified_name))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (AST.qualified_name) = 
# 51 "Parsing/OuterParser.mly"
                                                                              ( n )
# 18779 "Parsing/Parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (x : (AST.qualified_name)) = _v in
            let _v : (AST.qualified_name option) = 
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 18787 "Parsing/Parser.ml"
             in
            _menhir_goto_option_packageDeclaration_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState64 | MenhirState118 | MenhirState475 | MenhirState456 | MenhirState113 | MenhirState110 | MenhirState103 | MenhirState75 | MenhirState47 | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (l : (AST.qualified_name))) = _menhir_stack in
        let _v : (Type.ref_type) = 
# 102 "Parsing/OuterParser.mly"
                                                                 ( Type.extract_type l )
# 18803 "Parsing/Parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState113 | MenhirState103 | MenhirState47 | MenhirState42 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENTIFIER _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
            | LBRACE | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (Type.ref_type))) = _menhir_stack in
                let _v : (Type.ref_type list) = 
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 18829 "Parsing/Parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_classOrInterfaceType_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState64 | MenhirState118 | MenhirState475 | MenhirState456 | MenhirState75 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACKET ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | IDENTIFIER _ | VARARG ->
                _menhir_reduce188 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
        | MenhirState110 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (x0 : (Type.ref_type))) = _menhir_stack in
            let _10 = () in
            let _v : (Type.ref_type option) = let x =
              let x = x0 in
              let _1 = _10 in
              
# 171 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( x )
# 18862 "Parsing/Parser.ml"
              
            in
            
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 18868 "Parsing/Parser.ml"
             in
            _menhir_goto_option_preceded_EXTENDS_classOrInterfaceType__ _menhir_env _menhir_stack _v
        | _ ->
            _menhir_fail ())
    | _ ->
        _menhir_fail ()

and _menhir_reduce182 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) = 
# 199 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 18881 "Parsing/Parser.ml"
     in
    _menhir_goto_list_importDeclaration_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | STATIC ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = () in
        let _v : (unit option) = 
# 116 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 18899 "Parsing/Parser.ml"
         in
        _menhir_goto_option_STATIC_ _menhir_env _menhir_stack _v
    | IDENTIFIER _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (unit option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 18907 "Parsing/Parser.ml"
         in
        _menhir_goto_option_STATIC_ _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce262 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18920 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18926 "Parsing/Parser.ml"
    ))) = _menhir_stack in
    let _v : (AST.qualified_name) = 
# 229 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 18931 "Parsing/Parser.ml"
     in
    _menhir_goto_separated_nonempty_list_DOT_IDENTIFIER_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 26 "Parsing/OuterParser.mly"
       (string)
# 18938 "Parsing/Parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_goto_option_packageDeclaration_ : _menhir_env -> 'ttv_tail -> (AST.qualified_name option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IMPORT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | ABSTRACT | CLASS | EOF | FINAL | INTERFACE | PRIVATE | PROTECTED | PUBLIC | STATIC | STRICTFP ->
        _menhir_reduce182 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState572 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState570 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState566 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState559 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState558 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState557 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState552 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState550 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState543 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState542 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState541 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState540 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState536 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState535 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState534 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState524 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState521 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState514 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState513 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState508 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState504 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState503 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState501 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState500 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState497 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState496 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState489 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState488 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState485 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState484 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState483 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState480 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState479 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState476 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState475 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState472 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState471 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState470 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState468 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState466 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState463 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState460 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState459 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState457 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState456 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState452 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState450 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState449 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState448 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState444 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState443 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState440 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState439 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState436 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState431 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState428 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState427 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState426 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState425 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState424 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState423 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState422 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState420 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState419 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState416 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState414 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState413 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState410 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState409 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState408 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState405 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState404 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState402 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState397 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState396 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState394 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState392 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState390 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState389 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState388 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState387 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState386 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState385 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState384 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState383 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState381 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState379 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState377 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState376 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState374 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState373 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState371 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState370 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState368 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState367 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState365 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState364 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState362 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState361 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState359 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState358 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState356 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState355 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState349 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState347 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState346 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState345 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState342 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState341 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState340 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState338 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState336 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState335 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState334 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState333 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState332 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState331 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState330 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState329 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState328 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState327 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState326 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState325 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState324 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState323 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState322 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState321 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState320 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState319 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState318 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState317 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState316 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState315 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState314 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState313 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState312 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState311 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState310 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState309 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState308 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState307 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState306 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState304 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState303 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState302 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState301 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState300 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState299 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState298 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState297 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState296 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState293 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState291 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState289 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState287 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState285 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState283 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState281 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState276 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState274 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState272 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState271 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState270 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState269 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState268 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState267 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState266 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState265 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState264 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState262 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState261 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState260 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState259 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState258 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState257 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState256 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState254 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState253 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState252 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState251 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState250 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState249 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState248 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState247 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState246 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState244 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState243 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState242 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState241 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState240 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState239 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState238 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState237 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState236 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState235 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState234 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState233 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState232 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState231 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState230 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState229 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState228 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState227 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState226 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState225 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState220 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState218 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState216 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState212 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState210 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState209 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState207 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState206 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState199 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState198 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState197 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState196 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState195 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState193 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState189 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState176 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState172 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState166 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState165 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState158 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState157 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState155 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState150 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState148 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "Parsing/OuterParser.mly"
       (string)
# 20173 "Parsing/Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | COMMA | IDENTIFIER _ | IMPLEMENTS | LBRACE | LBRACKET | SEMI | VARARG ->
        _menhir_reduce262 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and compilationUnit : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 37 "Parsing/OuterParser.mly"
      (AST.t)
# 20204 "Parsing/Parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PACKAGE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1)
    | ABSTRACT | CLASS | EOF | FINAL | IMPORT | INTERFACE | PRIVATE | PROTECTED | PUBLIC | STATIC | STRICTFP ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (AST.qualified_name option) = 
# 114 "/home/robin/.opam/system/lib/menhir/standard.mly"
    ( None )
# 20234 "Parsing/Parser.ml"
         in
        _menhir_goto_option_packageDeclaration_ _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)

# 233 "/home/robin/.opam/system/lib/menhir/standard.mly"
  

# 20246 "Parsing/Parser.ml"
