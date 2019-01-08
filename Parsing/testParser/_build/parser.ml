
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | XOREQUAL
    | XOR
    | WHILE
    | VOLATILE
    | VOID
    | USHIFTEQUAL
    | USHIFT
    | TRY
    | TRANSIENT
    | TIMESEQUAL
    | TIMES
    | TILDE
    | THROWS
    | THROW
    | THIS
    | SYNCHRONIZED
    | SWITCH
    | SUPER
    | SUPEQUAL
    | SUP
    | STRINGLIT of (
# 7 "parser.mly"
       (string)
# 31 "parser.ml"
  )
    | STRICTFP
    | STATIC
    | SHORT
    | SEMICOLON
    | RSHIFTEQUAL
    | RSHIFT
    | RPAREN
    | RETURN
    | RBRACK
    | RBRACE
    | PUBLIC
    | PROTECTED
    | PRIVATE
    | POINT
    | PLUSEQUAL
    | PLUS
    | PACKAGE
    | OREQUAL
    | OR
    | NULL
    | NEW
    | NATIVE
    | MODEQUAL
    | MOD
    | MINUSEQUAL
    | MINUS
    | LSHIFTEQUAL
    | LSHIFT
    | LPAREN
    | LONG
    | LBRACK
    | LBRACE
    | ISNOTEQUAL
    | ISEQUAL
    | INTERFACE
    | INTEGERLIT of (
# 6 "parser.mly"
       (int)
# 71 "parser.ml"
  )
    | INT
    | INSTANCEOF
    | INFEQUAL
    | INF
    | INCR
    | IMPORT
    | IMPLEMENTS
    | IF
    | IDENT of (
# 42 "parser.mly"
       (string)
# 84 "parser.ml"
  )
    | FOR
    | FLOATLIT of (
# 5 "parser.mly"
       (float)
# 90 "parser.ml"
  )
    | FLOAT
    | FINALLY
    | FINAL
    | EXTENDS
    | EXCL
    | EQUAL
    | EOF
    | ENUM
    | ELSE
    | DOUBLE
    | DO
    | DIVEQUAL
    | DIV
    | DEFAULT
    | DECR
    | CONTINUE
    | CONDOR
    | CONDAND
    | COND
    | COMMENT of (
# 44 "parser.mly"
       (string)
# 114 "parser.ml"
  )
    | COMMA
    | COLON
    | CLASS
    | CHAR
    | CATCH
    | CASE
    | BYTE
    | BREAK
    | BOOLEANLIT of (
# 4 "parser.mly"
       (bool)
# 127 "parser.ml"
  )
    | BOOLEAN
    | ASSERT
    | AROBAS
    | ANDEQUAL
    | AND
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
  | MenhirState695
  | MenhirState690
  | MenhirState683
  | MenhirState679
  | MenhirState678
  | MenhirState674
  | MenhirState672
  | MenhirState671
  | MenhirState667
  | MenhirState665
  | MenhirState662
  | MenhirState661
  | MenhirState659
  | MenhirState654
  | MenhirState652
  | MenhirState649
  | MenhirState648
  | MenhirState646
  | MenhirState635
  | MenhirState622
  | MenhirState619
  | MenhirState618
  | MenhirState614
  | MenhirState607
  | MenhirState605
  | MenhirState602
  | MenhirState597
  | MenhirState595
  | MenhirState586
  | MenhirState585
  | MenhirState577
  | MenhirState573
  | MenhirState566
  | MenhirState563
  | MenhirState560
  | MenhirState559
  | MenhirState556
  | MenhirState553
  | MenhirState552
  | MenhirState551
  | MenhirState548
  | MenhirState545
  | MenhirState544
  | MenhirState541
  | MenhirState529
  | MenhirState520
  | MenhirState516
  | MenhirState513
  | MenhirState512
  | MenhirState509
  | MenhirState506
  | MenhirState505
  | MenhirState504
  | MenhirState499
  | MenhirState497
  | MenhirState495
  | MenhirState493
  | MenhirState491
  | MenhirState482
  | MenhirState477
  | MenhirState476
  | MenhirState475
  | MenhirState473
  | MenhirState471
  | MenhirState470
  | MenhirState468
  | MenhirState465
  | MenhirState464
  | MenhirState461
  | MenhirState457
  | MenhirState434
  | MenhirState412
  | MenhirState409
  | MenhirState405
  | MenhirState401
  | MenhirState400
  | MenhirState399
  | MenhirState398
  | MenhirState397
  | MenhirState395
  | MenhirState394
  | MenhirState393
  | MenhirState392
  | MenhirState391
  | MenhirState389
  | MenhirState387
  | MenhirState385
  | MenhirState383
  | MenhirState381
  | MenhirState379
  | MenhirState373
  | MenhirState371
  | MenhirState369
  | MenhirState366
  | MenhirState363
  | MenhirState361
  | MenhirState357
  | MenhirState353
  | MenhirState350
  | MenhirState347
  | MenhirState346
  | MenhirState345
  | MenhirState342
  | MenhirState341
  | MenhirState340
  | MenhirState339
  | MenhirState337
  | MenhirState335
  | MenhirState333
  | MenhirState322
  | MenhirState314
  | MenhirState306
  | MenhirState304
  | MenhirState302
  | MenhirState295
  | MenhirState292
  | MenhirState290
  | MenhirState289
  | MenhirState287
  | MenhirState283
  | MenhirState282
  | MenhirState280
  | MenhirState279
  | MenhirState273
  | MenhirState270
  | MenhirState255
  | MenhirState254
  | MenhirState246
  | MenhirState242
  | MenhirState240
  | MenhirState239
  | MenhirState237
  | MenhirState235
  | MenhirState233
  | MenhirState232
  | MenhirState230
  | MenhirState227
  | MenhirState225
  | MenhirState223
  | MenhirState222
  | MenhirState220
  | MenhirState218
  | MenhirState217
  | MenhirState215
  | MenhirState213
  | MenhirState210
  | MenhirState207
  | MenhirState206
  | MenhirState202
  | MenhirState201
  | MenhirState190
  | MenhirState188
  | MenhirState185
  | MenhirState183
  | MenhirState180
  | MenhirState177
  | MenhirState175
  | MenhirState173
  | MenhirState171
  | MenhirState168
  | MenhirState166
  | MenhirState164
  | MenhirState162
  | MenhirState159
  | MenhirState151
  | MenhirState146
  | MenhirState144
  | MenhirState142
  | MenhirState140
  | MenhirState134
  | MenhirState129
  | MenhirState126
  | MenhirState111
  | MenhirState108
  | MenhirState98
  | MenhirState96
  | MenhirState94
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState87
  | MenhirState84
  | MenhirState78
  | MenhirState74
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState64
  | MenhirState61
  | MenhirState50
  | MenhirState49
  | MenhirState42
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState24
  | MenhirState23
  | MenhirState21
  | MenhirState17
  | MenhirState14
  | MenhirState10
  | MenhirState7
  | MenhirState0

let rec _menhir_reduce283 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 919 "parser.mly"
                ()
# 365 "parser.ml"
     in
    _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_dimExprs : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState661 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run662 _menhir_env (Obj.magic _menhir_stack) MenhirState667
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | MOD | OR | PLUS | POINT | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack) MenhirState667
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState667)
    | MenhirState671 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run662 _menhir_env (Obj.magic _menhir_stack) MenhirState674
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | MOD | OR | PLUS | POINT | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack) MenhirState674
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState674)
    | _ ->
        _menhir_fail ()

and _menhir_goto_assertStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 680 "parser.mly"
                   ()
# 410 "parser.ml"
     in
    _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_argumentList : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState246)
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 932 "parser.mly"
                 ()
# 486 "parser.ml"
         in
        _menhir_goto_argumentList_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_arrayAccess : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 | MenhirState14 | MenhirState21 | MenhirState68 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState87 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState201 | MenhirState129 | MenhirState190 | MenhirState183 | MenhirState185 | MenhirState180 | MenhirState140 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce283 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState335 | MenhirState614 | MenhirState337 | MenhirState339 | MenhirState366 | MenhirState607 | MenhirState371 | MenhirState602 | MenhirState577 | MenhirState379 | MenhirState381 | MenhirState573 | MenhirState383 | MenhirState385 | MenhirState387 | MenhirState389 | MenhirState566 | MenhirState391 | MenhirState551 | MenhirState559 | MenhirState563 | MenhirState560 | MenhirState552 | MenhirState556 | MenhirState553 | MenhirState392 | MenhirState544 | MenhirState548 | MenhirState545 | MenhirState393 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState520 | MenhirState397 | MenhirState504 | MenhirState512 | MenhirState516 | MenhirState513 | MenhirState505 | MenhirState509 | MenhirState506 | MenhirState497 | MenhirState499 | MenhirState491 | MenhirState493 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState464 | MenhirState468 | MenhirState465 | MenhirState399 | MenhirState461 | MenhirState457 | MenhirState400 | MenhirState434 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState134 | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LBRACK | LSHIFT | MINUS | MOD | OR | PLUS | POINT | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            _menhir_reduce283 _menhir_env (Obj.magic _menhir_stack)
        | ANDEQUAL | DIVEQUAL | LSHIFTEQUAL | MINUSEQUAL | MODEQUAL | OREQUAL | PLUSEQUAL | RSHIFTEQUAL | TIMESEQUAL | USHIFTEQUAL | XOREQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1100 "parser.mly"
               ()
# 516 "parser.ml"
             in
            _menhir_goto_leftHandSide _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_assignmentExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState134 | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 1088 "parser.mly"
                         ()
# 538 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState134 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (unit) = 
# 975 "parser.mly"
                                           ()
# 557 "parser.ml"
                 in
                _menhir_goto_arrayAccess _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState188 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | DECR ->
                    _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | EXCL ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | LPAREN ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | MINUS ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | PLUS ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | TILDE ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState190
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState67 | MenhirState94 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState111 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 935 "parser.mly"
               ()
# 643 "parser.ml"
             in
            _menhir_goto_argumentList _menhir_env _menhir_stack _menhir_s _v
        | MenhirState69 | MenhirState202 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 915 "parser.mly"
                             ()
# 661 "parser.ml"
                 in
                _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState246 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (unit) = 
# 936 "parser.mly"
                                         ()
# 685 "parser.ml"
                 in
                _menhir_goto_argumentList _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState337 ->
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
                    _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState339 _v
                | BREAK ->
                    _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | CONTINUE ->
                    _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | DO ->
                    _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState339 _v
                | FOR ->
                    _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState339 _v
                | IF ->
                    _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState339 _v
                | LBRACE ->
                    _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | RETURN ->
                    _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | SEMICOLON ->
                    _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState339 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | SWITCH ->
                    _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | SYNCHRONIZED ->
                    _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | THROW ->
                    _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | TRY ->
                    _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | WHILE ->
                    _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState339
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState339)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState357 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 880 "parser.mly"
                               ()
# 797 "parser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (unit)) = _v in
                let _v : (unit) = 
# 687 "parser.mly"
                  ()
# 805 "parser.ml"
                 in
                _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState361 ->
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
                    _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState363
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState363)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState366 ->
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
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | RBRACE ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_s = MenhirState369 in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _2 = () in
                        let _1 = () in
                        let _v : (unit) = 
# 741 "parser.mly"
                                                          ()
# 861 "parser.ml"
                         in
                        _menhir_goto_switchBlock _menhir_env _menhir_stack _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState369)
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
        | MenhirState373 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 876 "parser.mly"
                               ()
# 895 "parser.ml"
                 in
                _menhir_goto_returnStatement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState379 ->
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
                    _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState381 _v
                | BREAK ->
                    _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | CONTINUE ->
                    _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | DO ->
                    _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState381 _v
                | FOR ->
                    _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState381 _v
                | IF ->
                    _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState381 _v
                | LBRACE ->
                    _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | RETURN ->
                    _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | SEMICOLON ->
                    _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState381 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | SWITCH ->
                    _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | SYNCHRONIZED ->
                    _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | THROW ->
                    _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | TRY ->
                    _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | WHILE ->
                    _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState381
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState381)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState383 ->
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
                    _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState385 _v
                | BREAK ->
                    _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | CONTINUE ->
                    _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | DO ->
                    _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState385 _v
                | FOR ->
                    _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState385 _v
                | IF ->
                    _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState385 _v
                | LBRACE ->
                    _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | RETURN ->
                    _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | SEMICOLON ->
                    _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState385 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | SWITCH ->
                    _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | SYNCHRONIZED ->
                    _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | THROW ->
                    _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | TRY ->
                    _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | WHILE ->
                    _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState385
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState385)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState387 ->
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
                    _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
                | BREAK ->
                    _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | CONTINUE ->
                    _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | DO ->
                    _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
                | FOR ->
                    _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
                | IF ->
                    _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
                | LBRACE ->
                    _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | RETURN ->
                    _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | SEMICOLON ->
                    _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | SWITCH ->
                    _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | SYNCHRONIZED ->
                    _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | THROW ->
                    _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | TRY ->
                    _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | WHILE ->
                    _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState389
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState389)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState409 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | DECR ->
                    _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | EXCL ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | LPAREN ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | MINUS ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | PLUS ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | TILDE ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState412
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState412)
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 733 "parser.mly"
                                ()
# 1242 "parser.ml"
                 in
                _menhir_goto_assertStatement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState412 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_4 : (unit))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 734 "parser.mly"
                                                 ()
# 1267 "parser.ml"
                 in
                _menhir_goto_assertStatement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState398 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState464 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ASSERT ->
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState465 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState465 _v
                    | FOR ->
                        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState465 _v
                    | IF ->
                        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState465 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState465 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | WHILE ->
                        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState465
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState465)
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState464
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState464)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState475 | MenhirState476 | MenhirState482 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 640 "parser.mly"
               ()
# 1422 "parser.ml"
             in
            _menhir_goto_variableInitializer _menhir_env _menhir_stack _menhir_s _v
        | MenhirState491 ->
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
                    _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
                | BREAK ->
                    _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | CONTINUE ->
                    _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | DO ->
                    _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
                | FOR ->
                    _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
                | IF ->
                    _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
                | LBRACE ->
                    _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | RETURN ->
                    _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | SEMICOLON ->
                    _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState493 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | SWITCH ->
                    _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | SYNCHRONIZED ->
                    _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | THROW ->
                    _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | TRY ->
                    _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | WHILE ->
                    _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState493
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState493)
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
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ASSERT ->
                    _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState499 _v
                | BREAK ->
                    _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | CONTINUE ->
                    _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | DO ->
                    _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState499 _v
                | FOR ->
                    _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState499 _v
                | IF ->
                    _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState499 _v
                | LBRACE ->
                    _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | RETURN ->
                    _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | SEMICOLON ->
                    _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState499 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | SWITCH ->
                    _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | SYNCHRONIZED ->
                    _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | THROW ->
                    _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | TRY ->
                    _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | WHILE ->
                    _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState499
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState499)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState504 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState512 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState512 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState512 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState512 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState512 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ASSERT ->
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                    | FOR ->
                        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                    | IF ->
                        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState513 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | WHILE ->
                        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState513
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState513)
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState512 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState512
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState512)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState520 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_5 : (unit))) = _menhir_stack in
                let _6 = () in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 773 "parser.mly"
                                               ()
# 1757 "parser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (unit)) = _v in
                let _v : (unit) = 
# 682 "parser.mly"
               ()
# 1765 "parser.ml"
                 in
                _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState392 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState544 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState544 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState544 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState544 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState544 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ASSERT ->
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState545 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState545 _v
                    | FOR ->
                        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState545 _v
                    | IF ->
                        _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState545 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState545 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | WHILE ->
                        _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState545
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState545)
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState544 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState544
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState544)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState551 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState559 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState559 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState559 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState559 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState559 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ASSERT ->
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState560 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState560 _v
                    | FOR ->
                        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState560 _v
                    | IF ->
                        _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState560 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState560 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | WHILE ->
                        _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState560
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState560)
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState559 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState559
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState559)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState577 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1092 "parser.mly"
               ()
# 2059 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 757 "parser.mly"
                                 ()
# 2076 "parser.ml"
                 in
                _menhir_goto_switchLabel _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState84 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : (unit) = 
# 976 "parser.mly"
                                              ()
# 2100 "parser.ml"
                 in
                _menhir_goto_arrayAccess _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState662 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 950 "parser.mly"
                             ()
# 2124 "parser.ml"
                 in
                (match _menhir_s with
                | MenhirState674 | MenhirState667 ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_2 : (unit)) = _v in
                    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                    let _v : (unit) = 
# 947 "parser.mly"
                     ()
# 2135 "parser.ml"
                     in
                    _menhir_goto_dimExprs _menhir_env _menhir_stack _menhir_s _v
                | MenhirState671 | MenhirState661 ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_1 : (unit)) = _v in
                    let _v : (unit) = 
# 946 "parser.mly"
            ()
# 2145 "parser.ml"
                     in
                    _menhir_goto_dimExprs _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    _menhir_fail ())
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), (_2 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 1095 "parser.mly"
                                                        ()
# 2166 "parser.ml"
         in
        (match _menhir_s with
        | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState134 | MenhirState188 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 1084 "parser.mly"
              ()
# 2176 "parser.ml"
             in
            _menhir_goto_assignmentExpression _menhir_env _menhir_stack _menhir_s _v
        | MenhirState335 | MenhirState614 | MenhirState339 | MenhirState607 | MenhirState371 | MenhirState602 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState391 | MenhirState559 | MenhirState563 | MenhirState560 | MenhirState552 | MenhirState556 | MenhirState553 | MenhirState544 | MenhirState548 | MenhirState545 | MenhirState393 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState397 | MenhirState512 | MenhirState516 | MenhirState513 | MenhirState505 | MenhirState509 | MenhirState506 | MenhirState499 | MenhirState493 | MenhirState464 | MenhirState468 | MenhirState465 | MenhirState399 | MenhirState461 | MenhirState457 | MenhirState400 | MenhirState434 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 713 "parser.mly"
              ()
# 2186 "parser.ml"
             in
            _menhir_goto_statementExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | _ ->
        _menhir_fail ()

and _menhir_goto_conditionalExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_5 : (unit)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : (unit) = 
# 1079 "parser.mly"
                                                                       ()
# 2207 "parser.ml"
         in
        _menhir_goto_conditionalExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState134 | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 1083 "parser.mly"
                         ()
# 2217 "parser.ml"
         in
        _menhir_goto_assignmentExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 606 "parser.mly"
                         ()
# 2227 "parser.ml"
         in
        _menhir_goto_elementValue _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run98 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_run146 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState146
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146

and _menhir_goto_conditionalOrExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COND ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188)
    | CONDOR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183)
    | COLON | COMMA | LBRACE | RBRACE | RBRACK | RPAREN | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 1078 "parser.mly"
                           ()
# 2544 "parser.ml"
         in
        _menhir_goto_conditionalExpression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run185 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185

and _menhir_goto_shiftExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState94 | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LSHIFT ->
            _menhir_run146 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | USHIFT ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1040 "parser.mly"
                    ()
# 2635 "parser.ml"
             in
            _menhir_goto_relationalExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LSHIFT ->
            _menhir_run146 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | USHIFT ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1044 "parser.mly"
                                                  ()
# 2662 "parser.ml"
             in
            _menhir_goto_relationalExpression _menhir_env _menhir_stack _menhir_s _v
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
        | LSHIFT ->
            _menhir_run146 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | USHIFT ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1042 "parser.mly"
                                             ()
# 2689 "parser.ml"
             in
            _menhir_goto_relationalExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState173 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LSHIFT ->
            _menhir_run146 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | USHIFT ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1043 "parser.mly"
                                                  ()
# 2716 "parser.ml"
             in
            _menhir_goto_relationalExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LSHIFT ->
            _menhir_run146 _menhir_env (Obj.magic _menhir_stack)
        | RSHIFT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | USHIFT ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1041 "parser.mly"
                                             ()
# 2743 "parser.ml"
             in
            _menhir_goto_relationalExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run162 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162

and _menhir_run168 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState168
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168

and _menhir_goto_conditionalAndExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONDAND ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | COND | CONDOR | LBRACE | RBRACE | RBRACK | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1074 "parser.mly"
                                                            ()
# 2893 "parser.ml"
             in
            _menhir_goto_conditionalOrExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState134 | MenhirState188 | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONDAND ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | COND | CONDOR | LBRACE | RBRACE | RBRACK | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1073 "parser.mly"
                             ()
# 2915 "parser.ml"
             in
            _menhir_goto_conditionalOrExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run129 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129

and _menhir_goto_additiveExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run168 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run162 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | OR | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1034 "parser.mly"
                                              ()
# 3007 "parser.ml"
             in
            _menhir_goto_shiftExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState94 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState96 | MenhirState111 | MenhirState215 | MenhirState225 | MenhirState235 | MenhirState242 | MenhirState246 | MenhirState202 | MenhirState126 | MenhirState129 | MenhirState134 | MenhirState188 | MenhirState190 | MenhirState183 | MenhirState185 | MenhirState140 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run168 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run162 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | OR | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1034 "parser.mly"
                                              ()
# 3031 "parser.ml"
             in
            _menhir_goto_shiftExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run168 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run162 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | OR | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1035 "parser.mly"
                                              ()
# 3056 "parser.ml"
             in
            _menhir_goto_shiftExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run168 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run162 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | OR | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1036 "parser.mly"
                                              ()
# 3081 "parser.ml"
             in
            _menhir_goto_shiftExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run108 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108

and _menhir_run164 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164

and _menhir_run166 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState166
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166

and _menhir_goto_inclusiveOrExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState190 | MenhirState188 | MenhirState183 | MenhirState134 | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | OR ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | COND | CONDAND | CONDOR | LBRACE | RBRACE | RBRACK | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1068 "parser.mly"
                          ()
# 3290 "parser.ml"
             in
            _menhir_goto_conditionalAndExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | OR ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | COND | CONDAND | CONDOR | LBRACE | RBRACE | RBRACK | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1069 "parser.mly"
                                                           ()
# 3313 "parser.ml"
             in
            _menhir_goto_conditionalAndExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run140 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140

and _menhir_goto_variableInitializers : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState482 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState482 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState482 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState482 _v
        | LBRACE ->
            _menhir_run476 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState482 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState482
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState482)
    | LBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 633 "parser.mly"
                         ()
# 3459 "parser.ml"
         in
        _menhir_goto_variableInitializers_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_forStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 674 "parser.mly"
                ()
# 3477 "parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_multiplicativeExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState87 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState96 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run166 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | OR | PLUS | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1027 "parser.mly"
                             ()
# 3502 "parser.ml"
             in
            _menhir_goto_additiveExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run166 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | OR | PLUS | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1028 "parser.mly"
                                                     ()
# 3529 "parser.ml"
             in
            _menhir_goto_additiveExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState168 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run166 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | OR | PLUS | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1029 "parser.mly"
                                                      ()
# 3556 "parser.ml"
             in
            _menhir_goto_additiveExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exclusiveOrExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 | MenhirState690 | MenhirState683 | MenhirState678 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState188 | MenhirState190 | MenhirState185 | MenhirState183 | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | XOR ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | COND | CONDAND | CONDOR | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1063 "parser.mly"
                          ()
# 3585 "parser.ml"
             in
            _menhir_goto_inclusiveOrExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | XOR ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | COND | CONDAND | CONDOR | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1064 "parser.mly"
                                                   ()
# 3608 "parser.ml"
             in
            _menhir_goto_inclusiveOrExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run180 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180

and _menhir_goto_variableInitializer : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState482 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 637 "parser.mly"
                                                   ()
# 3692 "parser.ml"
         in
        _menhir_goto_variableInitializers _menhir_env _menhir_stack _menhir_s _v
    | MenhirState476 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 636 "parser.mly"
                        ()
# 3702 "parser.ml"
         in
        _menhir_goto_variableInitializers _menhir_env _menhir_stack _menhir_s _v
    | MenhirState475 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 276 "parser.mly"
                                                  ()
# 3714 "parser.ml"
         in
        _menhir_goto_variableDeclarator _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce280 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 916 "parser.mly"
                                    ()
# 3726 "parser.ml"
     in
    _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_switchBlockStatementGroups : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState605 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (_2 : (unit))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 742 "parser.mly"
                                                          ()
# 3748 "parser.ml"
         in
        _menhir_goto_switchBlock _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState605

and _menhir_goto_enhancedForStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 778 "parser.mly"
                        ()
# 3764 "parser.ml"
     in
    _menhir_goto_forStatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_basicForStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 777 "parser.mly"
                     ()
# 3776 "parser.ml"
     in
    _menhir_goto_forStatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run473 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState473 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState473

and _menhir_goto_formalParameterList : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 299 "parser.mly"
                       ()
# 3800 "parser.ml"
     in
    _menhir_goto_formalParameterList_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_classBodyDeclarations : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run266 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | AROBAS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | FINAL ->
        _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | NATIVE ->
        _menhir_run264 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | PRIVATE ->
        _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | PROTECTED ->
        _menhir_run262 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | PUBLIC ->
        _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | STATIC ->
        _menhir_run260 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | STRICTFP ->
        _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | SYNCHRONIZED ->
        _menhir_run258 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | TRANSIENT ->
        _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | VOLATILE ->
        _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | INF | VOID ->
        _menhir_reduce244 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INT | LONG | SHORT ->
        _menhir_reduce165 _menhir_env (Obj.magic _menhir_stack) MenhirState635
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 229 "parser.mly"
                         ()
# 3845 "parser.ml"
         in
        _menhir_goto_classBodyDeclarations_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState635

and _menhir_goto_forInit : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState397 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState504 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState504 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState504 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState504 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState504 in
                let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState505 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState505 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState505 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState505 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState505 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ASSERT ->
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState506 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState506 _v
                    | FOR ->
                        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState506 _v
                    | IF ->
                        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState506 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState506 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | WHILE ->
                        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState506
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState506)
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState505 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState505
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState505)
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState504 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState504
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState504)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState391 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState551 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState551 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState551 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState551 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState551 in
                let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState552 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState552 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState552 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState552 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState552 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ASSERT ->
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState553 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState553 _v
                    | FOR ->
                        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState553 _v
                    | IF ->
                        _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState553 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState553 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | WHILE ->
                        _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState553
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState553)
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState552 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState552
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState552)
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState551 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState551
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState551)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run457 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState457 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState457 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState457 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState457 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | LPAREN ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState457 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState457
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState457

and _menhir_goto_castExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 1011 "parser.mly"
                   ()
# 4318 "parser.ml"
     in
    _menhir_goto_unaryExpressionNotPlusMinus _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_unaryExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1005 "parser.mly"
                         ()
# 4334 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 996 "parser.mly"
                           ()
# 4342 "parser.ml"
         in
        _menhir_goto_unaryExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState175 | MenhirState173 | MenhirState168 | MenhirState162 | MenhirState146 | MenhirState144 | MenhirState142 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState87 | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 1020 "parser.mly"
                    ()
# 4352 "parser.ml"
         in
        _menhir_goto_multiplicativeExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 1021 "parser.mly"
                                                   ()
# 4364 "parser.ml"
         in
        _menhir_goto_multiplicativeExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState164 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 1023 "parser.mly"
                                                 ()
# 4376 "parser.ml"
         in
        _menhir_goto_multiplicativeExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState166 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 1022 "parser.mly"
                                                 ()
# 4388 "parser.ml"
         in
        _menhir_goto_multiplicativeExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1010 "parser.mly"
                         ()
# 4400 "parser.ml"
         in
        _menhir_goto_unaryExpressionNotPlusMinus _menhir_env _menhir_stack _menhir_s _v
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1002 "parser.mly"
                         ()
# 4412 "parser.ml"
         in
        (match _menhir_s with
        | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState96 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 995 "parser.mly"
                           ()
# 4422 "parser.ml"
             in
            _menhir_goto_unaryExpression _menhir_env _menhir_stack _menhir_s _v
        | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState397 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState461 | MenhirState399 | MenhirState457 | MenhirState434 | MenhirState400 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 714 "parser.mly"
                          ()
# 4432 "parser.ml"
             in
            _menhir_goto_statementExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | MenhirState652 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_5 : (unit)) = _v in
        let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _4 = () in
        let _1 = () in
        let _v : (unit) = 
# 1015 "parser.mly"
                                                         ()
# 4447 "parser.ml"
         in
        _menhir_goto_castExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 998 "parser.mly"
                          ()
# 4459 "parser.ml"
         in
        _menhir_goto_unaryExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 997 "parser.mly"
                         ()
# 4471 "parser.ml"
         in
        _menhir_goto_unaryExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1009 "parser.mly"
                          ()
# 4483 "parser.ml"
         in
        _menhir_goto_unaryExpressionNotPlusMinus _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce268 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 982 "parser.mly"
                           ()
# 4495 "parser.ml"
     in
    _menhir_goto_postfixExpression _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce269 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 983 "parser.mly"
                           ()
# 4505 "parser.ml"
     in
    _menhir_goto_postfixExpression _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_arrayCreationExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 907 "parser.mly"
                            ()
# 4517 "parser.ml"
     in
    _menhir_goto_primary _menhir_env _menhir_stack _menhir_s _v

and _menhir_run655 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : (unit) = 
# 958 "parser.mly"
                       ()
# 4537 "parser.ml"
         in
        _menhir_goto_dims _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_andExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | COND | CONDAND | CONDOR | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1060 "parser.mly"
                                            ()
# 4565 "parser.ml"
             in
            _menhir_goto_exclusiveOrExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState94 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState111 | MenhirState215 | MenhirState225 | MenhirState235 | MenhirState242 | MenhirState246 | MenhirState202 | MenhirState126 | MenhirState129 | MenhirState134 | MenhirState188 | MenhirState190 | MenhirState183 | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | COND | CONDAND | CONDOR | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1059 "parser.mly"
                  ()
# 4587 "parser.ml"
             in
            _menhir_goto_exclusiveOrExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run142 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142

and _menhir_run177 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177

and _menhir_goto_resultType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState290 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState290

and _menhir_run38 : _menhir_env -> ('ttv_tail * _menhir_state * (unit)) * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let ((_menhir_stack, _menhir_s, (_1 : (unit))), _) = _menhir_stack in
    let _3 = () in
    let _2 = () in
    let _v : (unit) = 
# 131 "parser.mly"
                       ()
# 4743 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 114 "parser.mly"
             ()
# 4751 "parser.ml"
     in
    _menhir_goto_referenceType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run79 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : (unit) = 
# 911 "parser.mly"
                     ()
# 4771 "parser.ml"
         in
        _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_option_COMMA_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState477 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit option))) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : (unit) = 
# 629 "parser.mly"
                                                  ()
# 4815 "parser.ml"
             in
            (match _menhir_s with
            | MenhirState475 | MenhirState476 | MenhirState482 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (unit)) = _v in
                let _v : (unit) = 
# 641 "parser.mly"
                     ()
# 4825 "parser.ml"
                 in
                _menhir_goto_variableInitializer _menhir_env _menhir_stack _menhir_s _v
            | MenhirState665 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_4 : (unit)) = _v in
                let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
                let _1 = () in
                let _v : (unit) = 
# 942 "parser.mly"
                                            ()
# 4837 "parser.ml"
                 in
                _menhir_goto_arrayCreationExpression _menhir_env _menhir_stack _menhir_s _v
            | MenhirState672 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_4 : (unit)) = _v in
                let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
                let _1 = () in
                let _v : (unit) = 
# 943 "parser.mly"
                                                    ()
# 4849 "parser.ml"
                 in
                _menhir_goto_arrayCreationExpression _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState679 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit option))) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : (unit) = 
# 611 "parser.mly"
                                          ()
# 4875 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 608 "parser.mly"
                                ()
# 4883 "parser.ml"
             in
            _menhir_goto_elementValue _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_classInstanceCreationExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState201 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState129 | MenhirState134 | MenhirState188 | MenhirState190 | MenhirState183 | MenhirState185 | MenhirState180 | MenhirState140 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce280 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState391 | MenhirState559 | MenhirState563 | MenhirState560 | MenhirState552 | MenhirState556 | MenhirState553 | MenhirState544 | MenhirState548 | MenhirState545 | MenhirState393 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState397 | MenhirState512 | MenhirState516 | MenhirState513 | MenhirState505 | MenhirState509 | MenhirState506 | MenhirState499 | MenhirState493 | MenhirState464 | MenhirState468 | MenhirState465 | MenhirState399 | MenhirState461 | MenhirState457 | MenhirState400 | MenhirState434 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 719 "parser.mly"
                                   ()
# 4913 "parser.ml"
             in
            _menhir_goto_statementExpression _menhir_env _menhir_stack _menhir_s _v
        | DECR | INCR | LBRACK | POINT ->
            _menhir_reduce280 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_blockStatements : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState607 | MenhirState371 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABSTRACT ->
            _menhir_run584 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | AROBAS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | ASSERT ->
            _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState602 _v
        | BREAK ->
            _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | CONTINUE ->
            _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | DO ->
            _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | FINAL ->
            _menhir_run574 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState602 _v
        | FOR ->
            _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState602 _v
        | IF ->
            _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState602 _v
        | LBRACE ->
            _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | PRIVATE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | PROTECTED ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | PUBLIC ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | RETURN ->
            _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | SEMICOLON ->
            _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | STATIC ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | STRICTFP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState602 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | SWITCH ->
            _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | SYNCHRONIZED ->
            _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | THROW ->
            _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | TRY ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | WHILE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 751 "parser.mly"
                                ()
# 5026 "parser.ml"
             in
            (match _menhir_s with
            | MenhirState605 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_2 : (unit)) = _v in
                let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                let _v : (unit) = 
# 748 "parser.mly"
                                                        ()
# 5037 "parser.ml"
                 in
                _menhir_goto_switchBlockStatementGroups _menhir_env _menhir_stack _menhir_s _v
            | MenhirState369 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (unit)) = _v in
                let _v : (unit) = 
# 747 "parser.mly"
                              ()
# 5047 "parser.ml"
                 in
                _menhir_goto_switchBlockStatementGroups _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | CLASS ->
            _menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) MenhirState602
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState602)
    | MenhirState335 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABSTRACT ->
            _menhir_run584 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | AROBAS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | ASSERT ->
            _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState614 _v
        | BREAK ->
            _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | CONTINUE ->
            _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | DO ->
            _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | FINAL ->
            _menhir_run574 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState614 _v
        | FOR ->
            _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState614 _v
        | IF ->
            _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState614 _v
        | LBRACE ->
            _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | PRIVATE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | PROTECTED ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | PUBLIC ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | RETURN ->
            _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | SEMICOLON ->
            _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | STATIC ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | STRICTFP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState614 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | SWITCH ->
            _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | SYNCHRONIZED ->
            _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | THROW ->
            _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | TRY ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | WHILE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | CLASS ->
            _menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) MenhirState614
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 649 "parser.mly"
                    ()
# 5155 "parser.ml"
             in
            _menhir_goto_blockStatements_opt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState614)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typeParameters_opt : _menhir_env -> 'ttv_tail -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState287
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState287
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState287
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState287
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState287
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState287 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState287
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState287
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState287
    | VOID ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState287 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 292 "parser.mly"
        ()
# 5199 "parser.ml"
         in
        _menhir_goto_resultType _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState287

and _menhir_goto_fieldModifiers : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FINAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState622 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce159 _menhir_env (Obj.magic _menhir_stack)
    | PRIVATE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState622 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce158 _menhir_env (Obj.magic _menhir_stack)
    | PROTECTED ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState622 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce157 _menhir_env (Obj.magic _menhir_stack)
    | PUBLIC ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState622 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce155 _menhir_env (Obj.magic _menhir_stack)
    | STATIC ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState622 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce156 _menhir_env (Obj.magic _menhir_stack)
    | STRICTFP ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState622 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce160 _menhir_env (Obj.magic _menhir_stack)
    | TRANSIENT ->
        _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState622
    | VOLATILE ->
        _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState622
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INT | LONG | SHORT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 254 "parser.mly"
                   ()
# 5260 "parser.ml"
         in
        _menhir_goto_fieldModifiers_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState622

and _menhir_goto_forStatementNoShortIf : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 695 "parser.mly"
                         ()
# 5276 "parser.ml"
     in
    _menhir_goto_statementNoShortIf _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState394 | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _), _), _), _, (_6 : (unit))) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 791 "parser.mly"
                                                   ()
# 5296 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 781 "parser.mly"
                      ()
# 5304 "parser.ml"
         in
        _menhir_goto_basicForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState529 | MenhirState434 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 703 "parser.mly"
                              ()
# 5315 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 670 "parser.mly"
                    ()
# 5323 "parser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState541 | MenhirState461 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _), _), _, (_5 : (unit))), _, (_7 : (unit))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 800 "parser.mly"
                                                              ()
# 5338 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 784 "parser.mly"
                      ()
# 5346 "parser.ml"
         in
        _menhir_goto_basicForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState545 | MenhirState465 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _), _, (_4 : (unit))), _), _, (_7 : (unit))) = _menhir_stack in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 797 "parser.mly"
                                                               ()
# 5361 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 783 "parser.mly"
                      ()
# 5369 "parser.ml"
         in
        _menhir_goto_basicForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState548 | MenhirState468 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _), _, (_4 : (unit))), _, (_6 : (unit))), _, (_8 : (unit))) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 809 "parser.mly"
                                                                         ()
# 5384 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 787 "parser.mly"
                      ()
# 5392 "parser.ml"
         in
        _menhir_goto_basicForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState493 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_4 : (unit))), _, (_5 : (unit))), _, (_7 : (unit))), _, (_9 : (unit))) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 861 "parser.mly"
                                                                                   ()
# 5406 "parser.ml"
         in
        _menhir_goto_enhancedForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState499 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_4 : (unit))), _, (_6 : (unit))), _, (_8 : (unit))) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 860 "parser.mly"
                                                                   ()
# 5420 "parser.ml"
         in
        _menhir_goto_enhancedForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState553 | MenhirState506 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _), _), _, (_7 : (unit))) = _menhir_stack in
        let _6 = () in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 794 "parser.mly"
                                                           ()
# 5435 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 782 "parser.mly"
                      ()
# 5443 "parser.ml"
         in
        _menhir_goto_basicForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState556 | MenhirState509 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _), _, (_6 : (unit))), _, (_8 : (unit))) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 806 "parser.mly"
                                                                      ()
# 5458 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 786 "parser.mly"
                      ()
# 5466 "parser.ml"
         in
        _menhir_goto_basicForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState560 | MenhirState513 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))), _), _, (_8 : (unit))) = _menhir_stack in
        let _7 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 803 "parser.mly"
                                                                       ()
# 5481 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 785 "parser.mly"
                      ()
# 5489 "parser.ml"
         in
        _menhir_goto_basicForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState563 | MenhirState516 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))), _, (_7 : (unit))), _, (_9 : (unit))) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 812 "parser.mly"
                                                                                 ()
# 5504 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 788 "parser.mly"
                      ()
# 5512 "parser.ml"
         in
        _menhir_goto_basicForStatement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState395 ->
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
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState520 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | DECR ->
                    _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | EXCL ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState520 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState520 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState520 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | LPAREN ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | MINUS ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | PLUS ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState520 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | TILDE ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState520
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState520)
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
    | MenhirState573 | MenhirState566 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))), _, (_7 : (unit))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 726 "parser.mly"
                                                                 ()
# 5607 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 672 "parser.mly"
                       ()
# 5615 "parser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState381 | MenhirState389 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 723 "parser.mly"
                                         ()
# 5628 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 671 "parser.mly"
                   ()
# 5636 "parser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState339 | MenhirState385 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 766 "parser.mly"
                                            ()
# 5649 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 673 "parser.mly"
                  ()
# 5657 "parser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState614 | MenhirState335 | MenhirState607 | MenhirState602 | MenhirState371 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 658 "parser.mly"
             ()
# 5667 "parser.ml"
         in
        _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_variableDeclarators : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState586 | MenhirState471 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run473 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 665 "parser.mly"
                                               ()
# 5690 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState391 | MenhirState397 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                let _v : (unit) = 
# 850 "parser.mly"
                            ()
# 5701 "parser.ml"
                 in
                _menhir_goto_forInit _menhir_env _menhir_stack _menhir_s _v
            | MenhirState614 | MenhirState335 | MenhirState607 | MenhirState602 | MenhirState371 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | SEMICOLON ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                    let _2 = () in
                    let _v : (unit) = 
# 662 "parser.mly"
                                      ()
# 5718 "parser.ml"
                     in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_1 : (unit)) = _v in
                    let _v : (unit) = 
# 656 "parser.mly"
                                     ()
# 5726 "parser.ml"
                     in
                    _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState619 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run473 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _4 = () in
            let _v : (unit) = 
# 250 "parser.mly"
                                                          ()
# 5759 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 242 "parser.mly"
                    ()
# 5767 "parser.ml"
             in
            _menhir_goto_classMemberDeclaration _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_variableInitializers_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        _menhir_run478 _menhir_env (Obj.magic _menhir_stack) MenhirState477
    | LBRACE ->
        _menhir_reduce260 _menhir_env (Obj.magic _menhir_stack) MenhirState477
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState477

and _menhir_goto_formalParameters : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FINAL ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState314
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState314)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce214 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 322 "parser.mly"
                   ()
# 5826 "parser.ml"
     in
    match _menhir_s with
    | MenhirState302 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 303 "parser.mly"
                       ()
# 5836 "parser.ml"
         in
        _menhir_goto_formalParameterList _menhir_env _menhir_stack _menhir_s _v
    | MenhirState314 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 304 "parser.mly"
                                              ()
# 5848 "parser.ml"
         in
        _menhir_goto_formalParameterList _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_classMemberDeclaration : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 236 "parser.mly"
                          ()
# 5862 "parser.ml"
     in
    match _menhir_s with
    | MenhirState635 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 233 "parser.mly"
                                              ()
# 5873 "parser.ml"
         in
        _menhir_goto_classBodyDeclarations _menhir_env _menhir_stack _menhir_s _v
    | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 232 "parser.mly"
                        ()
# 5883 "parser.ml"
         in
        _menhir_goto_classBodyDeclarations _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_statementExpressionList : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState559 | MenhirState552 | MenhirState544 | MenhirState393 | MenhirState512 | MenhirState505 | MenhirState464 | MenhirState399 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run457 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 853 "parser.mly"
                            ()
# 5906 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState399 ->
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
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState461 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState461 _v
                    | FOR ->
                        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState461 _v
                    | IF ->
                        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState461 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState461 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | WHILE ->
                        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState461
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState461)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState464 ->
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
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
                    | FOR ->
                        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
                    | IF ->
                        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState468
                    | WHILE ->
                        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState468
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
            | MenhirState505 ->
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
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
                    | FOR ->
                        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
                    | IF ->
                        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState509 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | WHILE ->
                        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState509
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState509)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState512 ->
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
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState516 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState516 _v
                    | FOR ->
                        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState516 _v
                    | IF ->
                        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState516 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState516 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | WHILE ->
                        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState516
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState516)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState393 ->
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
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState541 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState541 _v
                    | FOR ->
                        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState541 _v
                    | IF ->
                        _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState541 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState541 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | WHILE ->
                        _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState541
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState541)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState544 ->
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
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState548 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState548 _v
                    | FOR ->
                        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState548 _v
                    | IF ->
                        _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState548 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState548 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | WHILE ->
                        _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState548
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState548)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState552 ->
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
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState556 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState556 _v
                    | FOR ->
                        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState556 _v
                    | IF ->
                        _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState556 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState556 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | WHILE ->
                        _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState556
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState556)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState559 ->
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
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState563 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState563 _v
                    | FOR ->
                        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState563 _v
                    | IF ->
                        _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState563 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState563 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | WHILE ->
                        _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState563
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState563)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState391 | MenhirState397 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run457 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 849 "parser.mly"
                            ()
# 6635 "parser.ml"
             in
            _menhir_goto_forInit _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_unaryExpressionNotPlusMinus : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState652 | MenhirState69 | MenhirState71 | MenhirState73 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState175 | MenhirState173 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState144 | MenhirState142 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState87 | MenhirState84 | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 999 "parser.mly"
                                ()
# 6657 "parser.ml"
         in
        _menhir_goto_unaryExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState646 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_4 : (unit)) = _v in
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 1016 "parser.mly"
                                                            ()
# 6670 "parser.ml"
         in
        _menhir_goto_castExpression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run102 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _2 = () in
    let _v : (unit) = 
# 987 "parser.mly"
                          ()
# 6685 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState96 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce268 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState397 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState461 | MenhirState399 | MenhirState457 | MenhirState434 | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 716 "parser.mly"
                           ()
# 6703 "parser.ml"
             in
            _menhir_goto_statementExpression _menhir_env _menhir_stack _menhir_s _v
        | DECR | INCR ->
            _menhir_reduce268 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run103 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _2 = () in
    let _v : (unit) = 
# 991 "parser.mly"
                           ()
# 6726 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState96 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce269 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState397 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState461 | MenhirState399 | MenhirState457 | MenhirState434 | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 715 "parser.mly"
                           ()
# 6744 "parser.ml"
             in
            _menhir_goto_statementExpression _menhir_env _menhir_stack _menhir_s _v
        | DECR | INCR ->
            _menhir_reduce269 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce287 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 112 "parser.mly"
                        ()
# 6764 "parser.ml"
     in
    _menhir_goto_referenceType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_goto_dims_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState648 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState652 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState652 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState652 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState652 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState652 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState652
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState652)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState667 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit))), _, (_4 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 940 "parser.mly"
                                        ()
# 6863 "parser.ml"
         in
        _menhir_goto_arrayCreationExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState674 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit))), _, (_4 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 941 "parser.mly"
                                               ()
# 6874 "parser.ml"
         in
        _menhir_goto_arrayCreationExpression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_dims : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState674 | MenhirState667 | MenhirState648 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run655 _menhir_env (Obj.magic _menhir_stack) MenhirState654
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | MOD | OR | PLUS | POINT | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 954 "parser.mly"
         ()
# 6897 "parser.ml"
             in
            _menhir_goto_dims_opt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState654)
    | MenhirState661 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run476 _menhir_env (Obj.magic _menhir_stack) MenhirState665
        | LBRACK ->
            _menhir_run655 _menhir_env (Obj.magic _menhir_stack) MenhirState665
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState665)
    | MenhirState671 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run476 _menhir_env (Obj.magic _menhir_stack) MenhirState672
        | LBRACK ->
            _menhir_run655 _menhir_env (Obj.magic _menhir_stack) MenhirState672
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState672)
    | _ ->
        _menhir_fail ()

and _menhir_goto_equalityExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 | MenhirState690 | MenhirState683 | MenhirState678 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState337 | MenhirState366 | MenhirState577 | MenhirState379 | MenhirState383 | MenhirState387 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState129 | MenhirState188 | MenhirState190 | MenhirState185 | MenhirState183 | MenhirState134 | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ISEQUAL ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | ISNOTEQUAL ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1055 "parser.mly"
                       ()
# 6952 "parser.ml"
             in
            _menhir_goto_andExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState180 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ISEQUAL ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | ISNOTEQUAL ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1056 "parser.mly"
                                         ()
# 6977 "parser.ml"
             in
            _menhir_goto_andExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run96 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_run144 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144

and _menhir_run171 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171

and _menhir_run173 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState173

and _menhir_run175 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175

and _menhir_goto_actualTypeArgumentList : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 138 "parser.mly"
                          ()
# 7265 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 135 "parser.mly"
                 ()
# 7273 "parser.ml"
     in
    _menhir_goto_typeArguments_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ttype : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 | MenhirState90 | MenhirState92 | MenhirState210 | MenhirState207 | MenhirState171 | MenhirState24 | MenhirState61 | MenhirState34 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState652 | MenhirState646 | MenhirState69 | MenhirState71 | MenhirState73 | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState577 | MenhirState573 | MenhirState381 | MenhirState385 | MenhirState566 | MenhirState389 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState551 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState392 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState520 | MenhirState395 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState504 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState499 | MenhirState497 | MenhirState493 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState398 | MenhirState461 | MenhirState457 | MenhirState399 | MenhirState434 | MenhirState400 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState201 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState175 | MenhirState173 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState144 | MenhirState142 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState87 | MenhirState84 | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | POINT ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState280 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AND ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _v
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState282)
            | RBRACE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState280)
    | MenhirState282 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState283 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (unit))), _), _, (_4 : (unit))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : (unit) = 
# 179 "parser.mly"
                                 ()
# 7375 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACK ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_4 : (unit))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : (unit) = 
# 176 "parser.mly"
                                          ()
# 7393 "parser.ml"
                 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                (match _menhir_s with
                | MenhirState270 ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    assert (not _menhir_env._menhir_error);
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | LBRACE ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | COMMA ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | IDENT _v ->
                                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _v
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState273)
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
                | MenhirState273 ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    assert (not _menhir_env._menhir_error);
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | RBRACE ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | SUP ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let ((_menhir_stack, _, (_2 : (unit))), _, (_5 : (unit))) = _menhir_stack in
                            let _7 = () in
                            let _6 = () in
                            let _4 = () in
                            let _3 = () in
                            let _1 = () in
                            let _v : (unit) = 
# 173 "parser.mly"
                                                           ()
# 7453 "parser.ml"
                             in
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let (_1 : (unit)) = _v in
                            let _v : (unit) = 
# 170 "parser.mly"
                  ()
# 7461 "parser.ml"
                             in
                            _menhir_goto_typeParameters_opt _menhir_env _menhir_stack _v
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
                | _ ->
                    _menhir_fail ())
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState283)
    | MenhirState287 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState289
        | IDENT _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 291 "parser.mly"
           ()
# 7501 "parser.ml"
             in
            _menhir_goto_resultType _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState289)
    | MenhirState304 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState306 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState306
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState306)
    | MenhirState346 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState347
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState347)
    | MenhirState470 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState471 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState471
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState471)
    | MenhirState391 | MenhirState397 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState495 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState495
        | POINT ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState495
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState495)
    | MenhirState585 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState586 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState586
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState586)
    | MenhirState618 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState619 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState619
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState619)
    | _ ->
        _menhir_fail ()

and _menhir_goto_elementValuePairs : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState695 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState695)
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 596 "parser.mly"
                      ()
# 7615 "parser.ml"
         in
        _menhir_goto_elementValuePairs_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_elementValues : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AROBAS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState683 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState683 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState683 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState683 _v
        | LBRACE ->
            _menhir_run678 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState683 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState683
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState683)
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 615 "parser.mly"
                 ()
# 7701 "parser.ml"
         in
        _menhir_goto_elementValues_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_methodModifiers : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run266 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | AROBAS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | FINAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState322 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce238 _menhir_env (Obj.magic _menhir_stack)
    | NATIVE ->
        _menhir_run264 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | PRIVATE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState322 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce235 _menhir_env (Obj.magic _menhir_stack)
    | PROTECTED ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState322 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce234 _menhir_env (Obj.magic _menhir_stack)
    | PUBLIC ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState322 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce233 _menhir_env (Obj.magic _menhir_stack)
    | STATIC ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState322 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce237 _menhir_env (Obj.magic _menhir_stack)
    | STRICTFP ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState322 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce241 _menhir_env (Obj.magic _menhir_stack)
    | SYNCHRONIZED ->
        _menhir_run258 _menhir_env (Obj.magic _menhir_stack) MenhirState322
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INF | INT | LONG | SHORT | VOID ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 327 "parser.mly"
                   ()
# 7768 "parser.ml"
         in
        _menhir_goto_methodModifiers_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState322

and _menhir_reduce260 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 7781 "parser.ml"
     in
    _menhir_goto_option_COMMA_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run478 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let x = () in
    let _v : (unit option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 7793 "parser.ml"
     in
    _menhir_goto_option_COMMA_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_classBody_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState254 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_10 : (unit)) = _v in
        let ((((((_menhir_stack, _menhir_s, (_1 : (unit))), _), _, (_4 : (unit))), _, (_5 : (unit))), _, (_6 : (unit))), _, (_8 : (unit))) = _menhir_stack in
        let _9 = () in
        let _7 = () in
        let _3 = () in
        let _2 = () in
        let _v : (unit) = 
# 928 "parser.mly"
                                                                                                                  ()
# 7812 "parser.ml"
         in
        _menhir_goto_classInstanceCreationExpression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState659 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_7 : (unit)) = _v in
        let (((((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit))), _), _, (_5 : (unit))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _1 = () in
        let _v : (unit) = 
# 927 "parser.mly"
                                                                                            ()
# 7826 "parser.ml"
         in
        _menhir_goto_classInstanceCreationExpression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_blockStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState614 | MenhirState602 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 653 "parser.mly"
                                  ()
# 7843 "parser.ml"
         in
        _menhir_goto_blockStatements _menhir_env _menhir_stack _menhir_s _v
    | MenhirState335 | MenhirState607 | MenhirState371 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 652 "parser.mly"
                  ()
# 7853 "parser.ml"
         in
        _menhir_goto_blockStatements _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_fieldModifiers_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState618
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState618
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState618
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState618
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState618
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState618 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState618
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState618
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState618
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState618

and _menhir_goto_methodModifiers_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState270)
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INT | LONG | SHORT | VOID ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (unit) = 
# 169 "parser.mly"
   ()
# 7912 "parser.ml"
         in
        _menhir_goto_typeParameters_opt _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_fieldModifier : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState622 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 258 "parser.mly"
                                ()
# 7933 "parser.ml"
         in
        _menhir_goto_fieldModifiers _menhir_env _menhir_stack _menhir_s _v
    | MenhirState635 | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 257 "parser.mly"
                 ()
# 7943 "parser.ml"
         in
        _menhir_goto_fieldModifiers _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce160 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 266 "parser.mly"
             ()
# 7956 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce241 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 343 "parser.mly"
            ()
# 7967 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce156 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 262 "parser.mly"
            ()
# 7978 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce237 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 339 "parser.mly"
          ()
# 7989 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce155 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 261 "parser.mly"
              ()
# 8000 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce233 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 335 "parser.mly"
          ()
# 8011 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce157 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 263 "parser.mly"
              ()
# 8022 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce234 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 336 "parser.mly"
              ()
# 8033 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce158 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 264 "parser.mly"
             ()
# 8044 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce235 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 337 "parser.mly"
            ()
# 8055 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce159 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 265 "parser.mly"
            ()
# 8066 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce238 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 340 "parser.mly"
          ()
# 8077 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_catches : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CATCH ->
        _menhir_run344 _menhir_env (Obj.magic _menhir_stack) MenhirState353
    | FINALLY ->
        _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState353
    | ABSTRACT | AROBAS | ASSERT | BOOLEAN | BOOLEANLIT _ | BREAK | BYTE | CHAR | CLASS | CONTINUE | DO | DOUBLE | ELSE | FINAL | FLOAT | FLOATLIT _ | FOR | IDENT _ | IF | INCR | INT | INTEGERLIT _ | LBRACE | LONG | LPAREN | NEW | NULL | PRIVATE | PROTECTED | PUBLIC | RBRACE | RETURN | SEMICOLON | SHORT | STATIC | STRICTFP | STRINGLIT _ | SUPER | SWITCH | SYNCHRONIZED | THIS | THROW | TRY | VOID | WHILE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 888 "parser.mly"
                      ()
# 8099 "parser.ml"
         in
        _menhir_goto_tryStatement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState353

and _menhir_goto_tryStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 688 "parser.mly"
                ()
# 8115 "parser.ml"
     in
    _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run342 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState342
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState342

and _menhir_run344 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState345
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState345)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_statementNoShortIf : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState394 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _), _), _), _, (_6 : (unit))) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 825 "parser.mly"
                                                              ()
# 8172 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 815 "parser.mly"
                           ()
# 8180 "parser.ml"
         in
        _menhir_goto_forStatementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState529 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 706 "parser.mly"
                                       ()
# 8191 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 692 "parser.mly"
                             ()
# 8199 "parser.ml"
         in
        _menhir_goto_statementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState541 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _), _), _, (_5 : (unit))), _, (_7 : (unit))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 834 "parser.mly"
                                                                       ()
# 8214 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 818 "parser.mly"
                          ()
# 8222 "parser.ml"
         in
        _menhir_goto_forStatementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState545 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _), _, (_4 : (unit))), _), _, (_7 : (unit))) = _menhir_stack in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 831 "parser.mly"
                                                                        ()
# 8237 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 817 "parser.mly"
                          ()
# 8245 "parser.ml"
         in
        _menhir_goto_forStatementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState548 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _), _, (_4 : (unit))), _, (_6 : (unit))), _, (_8 : (unit))) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 843 "parser.mly"
                                                                                  ()
# 8260 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 821 "parser.mly"
                          ()
# 8268 "parser.ml"
         in
        _menhir_goto_forStatementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState553 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _), _), _, (_7 : (unit))) = _menhir_stack in
        let _6 = () in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 828 "parser.mly"
                                                                     ()
# 8283 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 816 "parser.mly"
                          ()
# 8291 "parser.ml"
         in
        _menhir_goto_forStatementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState556 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _), _, (_6 : (unit))), _, (_8 : (unit))) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 840 "parser.mly"
                                                                               ()
# 8306 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 820 "parser.mly"
                          ()
# 8314 "parser.ml"
         in
        _menhir_goto_forStatementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState560 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))), _), _, (_8 : (unit))) = _menhir_stack in
        let _7 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 837 "parser.mly"
                                                                                 ()
# 8329 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 819 "parser.mly"
                          ()
# 8337 "parser.ml"
         in
        _menhir_goto_forStatementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState563 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))), _, (_7 : (unit))), _, (_9 : (unit))) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 846 "parser.mly"
                                                                                          ()
# 8352 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 822 "parser.mly"
                          ()
# 8360 "parser.ml"
         in
        _menhir_goto_forStatementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState389 ->
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
                _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState566 _v
            | BREAK ->
                _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | CONTINUE ->
                _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | DO ->
                _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState566 _v
            | FOR ->
                _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState566 _v
            | IF ->
                _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState566 _v
            | LBRACE ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | LPAREN ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | RETURN ->
                _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | SEMICOLON ->
                _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState566 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | SWITCH ->
                _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | SYNCHRONIZED ->
                _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | THROW ->
                _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | TRY ->
                _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | WHILE ->
                _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState566
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState566)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState566 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))), _, (_7 : (unit))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 729 "parser.mly"
                                                                          ()
# 8462 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 693 "parser.mly"
                                ()
# 8470 "parser.ml"
         in
        _menhir_goto_statementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState385 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 769 "parser.mly"
                                                     ()
# 8483 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 694 "parser.mly"
                           ()
# 8491 "parser.ml"
         in
        _menhir_goto_statementNoShortIf _menhir_env _menhir_stack _menhir_s _v
    | MenhirState381 ->
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
                _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState573 _v
            | BREAK ->
                _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | CONTINUE ->
                _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | DO ->
                _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState573 _v
            | FOR ->
                _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState573 _v
            | IF ->
                _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState573 _v
            | LBRACE ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | LPAREN ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | RETURN ->
                _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | SEMICOLON ->
                _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState573 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | SWITCH ->
                _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | SYNCHRONIZED ->
                _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | THROW ->
                _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | TRY ->
                _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | WHILE ->
                _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState573
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState573)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce307 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 669 "parser.mly"
                                        ()
# 8591 "parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_variableDeclarator : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState473 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 272 "parser.mly"
                                                ()
# 8607 "parser.ml"
         in
        _menhir_goto_variableDeclarators _menhir_env _menhir_stack _menhir_s _v
    | MenhirState619 | MenhirState586 | MenhirState471 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 271 "parser.mly"
                      ()
# 8617 "parser.ml"
         in
        _menhir_goto_variableDeclarators _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run476 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState476 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState476 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState476 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState476 _v
    | LBRACE ->
        _menhir_run476 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState476 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState476
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState476 in
        let _v : (unit) = 
# 632 "parser.mly"
    ()
# 8687 "parser.ml"
         in
        _menhir_goto_variableInitializers_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState476

and _menhir_reduce192 : _menhir_env -> (('ttv_tail * _menhir_state * (unit)) * _menhir_state * (unit)) * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 311 "parser.mly"
                                                ()
# 8701 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState314 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            _menhir_reduce214 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 308 "parser.mly"
                                          ()
# 8719 "parser.ml"
             in
            _menhir_goto_formalParameters _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState302 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            _menhir_reduce214 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 307 "parser.mly"
                    ()
# 8741 "parser.ml"
             in
            _menhir_goto_formalParameters _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState345 ->
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
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState350
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run308 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : (unit) = 
# 280 "parser.mly"
                                      ()
# 8790 "parser.ml"
         in
        _menhir_goto_variableDeclaratorId _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_methodBody : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (unit)) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 285 "parser.mly"
                           ()
# 8809 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 243 "parser.mly"
                     ()
# 8817 "parser.ml"
     in
    _menhir_goto_classMemberDeclaration _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_variableModifiers : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState314 | MenhirState302 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | FINAL ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState304 _v
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState304
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState304)
    | MenhirState345 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | FINAL ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState346 _v
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState346
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState346)
    | MenhirState391 | MenhirState397 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | FINAL ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState470 _v
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState470
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState470)
    | MenhirState614 | MenhirState335 | MenhirState607 | MenhirState602 | MenhirState371 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | FINAL ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState585 _v
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState585
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState585)
    | _ ->
        _menhir_fail ()

and _menhir_run90 : _menhir_env -> ('ttv_tail * _menhir_state * (unit)) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | EXTENDS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | SUPER ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_reduce82 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 221 "parser.mly"
   ()
# 8982 "parser.ml"
     in
    _menhir_goto_classBody_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_statementExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState560 | MenhirState556 | MenhirState553 | MenhirState548 | MenhirState545 | MenhirState541 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState516 | MenhirState513 | MenhirState509 | MenhirState506 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState465 | MenhirState461 | MenhirState434 | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 710 "parser.mly"
                                 ()
# 9004 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 679 "parser.mly"
                       ()
# 9012 "parser.ml"
             in
            _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState457 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 857 "parser.mly"
                                                     ()
# 9029 "parser.ml"
         in
        _menhir_goto_statementExpressionList _menhir_env _menhir_stack _menhir_s _v
    | MenhirState559 | MenhirState552 | MenhirState391 | MenhirState544 | MenhirState393 | MenhirState512 | MenhirState505 | MenhirState397 | MenhirState464 | MenhirState399 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 856 "parser.mly"
                        ()
# 9039 "parser.ml"
         in
        _menhir_goto_statementExpressionList _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce282 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 918 "parser.mly"
                     ()
# 9051 "parser.ml"
     in
    _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_postfixExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState96 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DECR ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DIV | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | MOD | OR | PLUS | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1008 "parser.mly"
                      ()
# 9074 "parser.ml"
             in
            _menhir_goto_unaryExpressionNotPlusMinus _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState397 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState461 | MenhirState399 | MenhirState457 | MenhirState434 | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DECR ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce102 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 117 "parser.mly"
             ()
# 9107 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState90 | MenhirState92 | MenhirState618 | MenhirState614 | MenhirState335 | MenhirState337 | MenhirState339 | MenhirState366 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState585 | MenhirState577 | MenhirState379 | MenhirState381 | MenhirState573 | MenhirState383 | MenhirState385 | MenhirState387 | MenhirState389 | MenhirState566 | MenhirState391 | MenhirState551 | MenhirState559 | MenhirState563 | MenhirState560 | MenhirState552 | MenhirState556 | MenhirState553 | MenhirState392 | MenhirState544 | MenhirState548 | MenhirState545 | MenhirState393 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState520 | MenhirState397 | MenhirState504 | MenhirState512 | MenhirState516 | MenhirState513 | MenhirState505 | MenhirState509 | MenhirState506 | MenhirState497 | MenhirState499 | MenhirState470 | MenhirState491 | MenhirState493 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState464 | MenhirState468 | MenhirState465 | MenhirState399 | MenhirState461 | MenhirState457 | MenhirState400 | MenhirState434 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState346 | MenhirState287 | MenhirState304 | MenhirState279 | MenhirState282 | MenhirState94 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState201 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState207 | MenhirState210 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState129 | MenhirState134 | MenhirState188 | MenhirState190 | MenhirState183 | MenhirState185 | MenhirState180 | MenhirState140 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState171 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 | MenhirState24 | MenhirState61 | MenhirState34 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POINT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | IDENT _ | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LBRACK | LPAREN | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            _menhir_reduce287 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState66 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | RPAREN ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
        | POINT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
    | MenhirState292 | MenhirState295 | MenhirState218 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POINT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220)
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run662 _menhir_env (Obj.magic _menhir_stack) MenhirState671
        | POINT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState671
        | COMMA | IDENT _ | LBRACE ->
            _menhir_reduce287 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState671)
    | _ ->
        _menhir_fail ()

and _menhir_goto_numericType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 92 "parser.mly"
               ()
# 9235 "parser.ml"
     in
    _menhir_goto_primitiveType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run662 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState662 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState662 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState662 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState662 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | RBRACK ->
        _menhir_run650 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState662 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState662
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState662

and _menhir_reduce118 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 953 "parser.mly"
    ()
# 9307 "parser.ml"
     in
    _menhir_goto_dims_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run650 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _2 = () in
    let _1 = () in
    let _v : (unit) = 
# 957 "parser.mly"
                  ()
# 9321 "parser.ml"
     in
    _menhir_goto_dims _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce361 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 87 "parser.mly"
                 ()
# 9331 "parser.ml"
     in
    _menhir_goto_ttype _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_exceptionTypeList : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState295)
    | LBRACE | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (_2 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 351 "parser.mly"
                            ()
# 9360 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 348 "parser.mly"
           ()
# 9368 "parser.ml"
         in
        _menhir_goto_throws_opt _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_referenceTypeList : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210)
    | SUP ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 417 "parser.mly"
                             ()
# 9422 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState239 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState240)
        | MenhirState206 | MenhirState222 | MenhirState232 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 414 "parser.mly"
                        ()
# 9444 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState206 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState213)
            | MenhirState222 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223)
            | MenhirState232 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233)
            | _ ->
                _menhir_fail ())
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_relationalExpression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INF ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack)
        | INFEQUAL ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack)
        | INSTANCEOF ->
            _menhir_run171 _menhir_env (Obj.magic _menhir_stack)
        | SUP ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack)
        | SUPEQUAL ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | ISEQUAL | ISNOTEQUAL | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1049 "parser.mly"
                         ()
# 9517 "parser.ml"
             in
            _menhir_goto_equalityExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INF ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack)
        | INFEQUAL ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack)
        | INSTANCEOF ->
            _menhir_run171 _menhir_env (Obj.magic _menhir_stack)
        | SUP ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack)
        | SUPEQUAL ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | ISEQUAL | ISNOTEQUAL | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1051 "parser.mly"
                                                       ()
# 9548 "parser.ml"
             in
            _menhir_goto_equalityExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INF ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack)
        | INFEQUAL ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack)
        | INSTANCEOF ->
            _menhir_run171 _menhir_env (Obj.magic _menhir_stack)
        | SUP ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack)
        | SUPEQUAL ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | ISEQUAL | ISNOTEQUAL | LBRACE | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1050 "parser.mly"
                                                    ()
# 9579 "parser.ml"
             in
            _menhir_goto_equalityExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_actualTypeArgument : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 | MenhirState90 | MenhirState92 | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | EXTENDS ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | SUPER ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
        | AND | COLON | COND | CONDAND | CONDOR | IDENT _ | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LBRACK | LPAREN | OR | POINT | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 142 "parser.mly"
                                               ()
# 9637 "parser.ml"
             in
            _menhir_goto_actualTypeArgumentList _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 142 "parser.mly"
                                               ()
# 9654 "parser.ml"
         in
        _menhir_goto_actualTypeArgumentList _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce362 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 88 "parser.mly"
                 ()
# 9666 "parser.ml"
     in
    _menhir_goto_ttype _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_wildcardBounds : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COND ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 149 "parser.mly"
                       ()
# 9686 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 146 "parser.mly"
            ()
# 9694 "parser.ml"
         in
        _menhir_goto_actualTypeArgument _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_elementValue : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState683 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 619 "parser.mly"
                                    ()
# 9716 "parser.ml"
         in
        _menhir_goto_elementValues _menhir_env _menhir_stack _menhir_s _v
    | MenhirState678 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 618 "parser.mly"
                ()
# 9726 "parser.ml"
         in
        _menhir_goto_elementValues _menhir_env _menhir_stack _menhir_s _v
    | MenhirState690 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 603 "parser.mly"
                                 ()
# 9737 "parser.ml"
         in
        (match _menhir_s with
        | MenhirState695 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (unit)) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 600 "parser.mly"
                                            ()
# 9749 "parser.ml"
             in
            _menhir_goto_elementValuePairs _menhir_env _menhir_stack _menhir_s _v
        | MenhirState10 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 599 "parser.mly"
                    ()
# 9759 "parser.ml"
             in
            _menhir_goto_elementValuePairs _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_4 : (unit))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (unit) = 
# 625 "parser.mly"
                                              ()
# 9780 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 589 "parser.mly"
                           ()
# 9788 "parser.ml"
             in
            _menhir_goto_annotation _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_methodModifier : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState322 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 331 "parser.mly"
                                  ()
# 9811 "parser.ml"
         in
        _menhir_goto_methodModifiers _menhir_env _menhir_stack _menhir_s _v
    | MenhirState635 | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 330 "parser.mly"
                  ()
# 9821 "parser.ml"
         in
        _menhir_goto_methodModifiers _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_elementValues_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        _menhir_run478 _menhir_env (Obj.magic _menhir_stack) MenhirState679
    | RBRACE ->
        _menhir_reduce260 _menhir_env (Obj.magic _menhir_stack) MenhirState679
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState679

and _menhir_goto_assignmentOperator : _menhir_env -> 'ttv_tail -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126

and _menhir_goto_classBodyDeclarations_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
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
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 225 "parser.mly"
                                           ( )
# 9922 "parser.ml"
         in
        (match _menhir_s with
        | MenhirState595 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (unit)) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), (_3 : (
# 42 "parser.mly"
       (string)
# 9932 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 166 "parser.mly"
                                            ()
# 9938 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 162 "parser.mly"
                          ()
# 9946 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState614 | MenhirState335 | MenhirState607 | MenhirState602 | MenhirState371 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                let _v : (unit) = 
# 657 "parser.mly"
                    ()
# 9957 "parser.ml"
                 in
                _menhir_goto_blockStatement _menhir_env _menhir_stack _menhir_s _v
            | MenhirState0 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                    let _2 = () in
                    let _v : (
# 48 "parser.mly"
      (unit)
# 9973 "parser.ml"
                    ) = 
# 52 "parser.mly"
                        ()
# 9977 "parser.ml"
                     in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_1 : (
# 48 "parser.mly"
      (unit)
# 9984 "parser.ml"
                    )) = _v in
                    Obj.magic _1
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | MenhirState659 | MenhirState254 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 222 "parser.mly"
             ()
# 10002 "parser.ml"
             in
            _menhir_goto_classBody_opt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce165 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 253 "parser.mly"
    ()
# 10019 "parser.ml"
     in
    _menhir_goto_fieldModifiers_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce244 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 326 "parser.mly"
   ()
# 10028 "parser.ml"
     in
    _menhir_goto_methodModifiers_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run256 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 268 "parser.mly"
              ()
# 10040 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run257 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 267 "parser.mly"
              ()
# 10052 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run258 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 341 "parser.mly"
                ()
# 10064 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run259 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT | AROBAS | INF | NATIVE | SYNCHRONIZED | VOID ->
        _menhir_reduce241 _menhir_env (Obj.magic _menhir_stack)
    | BOOLEAN | BYTE | CHAR | DOUBLE | FINAL | FLOAT | IDENT _ | INT | LONG | PRIVATE | PROTECTED | PUBLIC | SHORT | STATIC | STRICTFP | TRANSIENT | VOLATILE ->
        _menhir_reduce160 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run260 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT | AROBAS | INF | NATIVE | SYNCHRONIZED | VOID ->
        _menhir_reduce237 _menhir_env (Obj.magic _menhir_stack)
    | BOOLEAN | BYTE | CHAR | DOUBLE | FINAL | FLOAT | IDENT _ | INT | LONG | PRIVATE | PROTECTED | PUBLIC | SHORT | STATIC | STRICTFP | TRANSIENT | VOLATILE ->
        _menhir_reduce156 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run261 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT | AROBAS | INF | NATIVE | SYNCHRONIZED | VOID ->
        _menhir_reduce233 _menhir_env (Obj.magic _menhir_stack)
    | BOOLEAN | BYTE | CHAR | DOUBLE | FINAL | FLOAT | IDENT _ | INT | LONG | PRIVATE | PROTECTED | PUBLIC | SHORT | STATIC | STRICTFP | TRANSIENT | VOLATILE ->
        _menhir_reduce155 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run262 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT | AROBAS | INF | NATIVE | SYNCHRONIZED | VOID ->
        _menhir_reduce234 _menhir_env (Obj.magic _menhir_stack)
    | BOOLEAN | BYTE | CHAR | DOUBLE | FINAL | FLOAT | IDENT _ | INT | LONG | PRIVATE | PROTECTED | PUBLIC | SHORT | STATIC | STRICTFP | TRANSIENT | VOLATILE ->
        _menhir_reduce157 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run263 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT | AROBAS | INF | NATIVE | SYNCHRONIZED | VOID ->
        _menhir_reduce235 _menhir_env (Obj.magic _menhir_stack)
    | BOOLEAN | BYTE | CHAR | DOUBLE | FINAL | FLOAT | IDENT _ | INT | LONG | PRIVATE | PROTECTED | PUBLIC | SHORT | STATIC | STRICTFP | TRANSIENT | VOLATILE ->
        _menhir_reduce158 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run264 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 342 "parser.mly"
          ()
# 10161 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run265 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT | AROBAS | INF | NATIVE | SYNCHRONIZED | VOID ->
        _menhir_reduce238 _menhir_env (Obj.magic _menhir_stack)
    | BOOLEAN | BYTE | CHAR | DOUBLE | FINAL | FLOAT | IDENT _ | INT | LONG | PRIVATE | PROTECTED | PUBLIC | SHORT | STATIC | STRICTFP | TRANSIENT | VOLATILE ->
        _menhir_reduce159 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run266 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 338 "parser.mly"
            ()
# 10190 "parser.ml"
     in
    _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_switchBlock : _menhir_env -> 'ttv_tail -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_5 : (unit)) = _v in
    let ((_menhir_stack, _menhir_s), _, (_3 : (unit))) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : (unit) = 
# 738 "parser.mly"
                                               ()
# 10206 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 681 "parser.mly"
                   ()
# 10214 "parser.ml"
     in
    _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run575 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 759 "parser.mly"
                 ()
# 10234 "parser.ml"
         in
        _menhir_goto_switchLabel _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run577 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState577 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState577 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState577 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState577 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState577 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState577
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState577

and _menhir_goto_returnStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 685 "parser.mly"
                   ()
# 10313 "parser.ml"
     in
    _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_blockStatements_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
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
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 645 "parser.mly"
                                     ()
# 10334 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState340 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CATCH ->
                _menhir_run344 _menhir_env (Obj.magic _menhir_stack) MenhirState341
            | FINALLY ->
                _menhir_run342 _menhir_env (Obj.magic _menhir_stack) MenhirState341
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState341)
        | MenhirState342 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) = 
# 900 "parser.mly"
                  ()
# 10359 "parser.ml"
             in
            (match _menhir_s with
            | MenhirState341 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_3 : (unit)) = _v in
                let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
                let _1 = () in
                let _v : (unit) = 
# 889 "parser.mly"
                     ()
# 10371 "parser.ml"
                 in
                _menhir_goto_tryStatement _menhir_env _menhir_stack _menhir_s _v
            | MenhirState353 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_4 : (unit)) = _v in
                let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
                let _1 = () in
                let _v : (unit) = 
# 890 "parser.mly"
                             ()
# 10383 "parser.ml"
                 in
                _menhir_goto_tryStatement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | MenhirState350 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (unit) = 
# 897 "parser.mly"
                                              ()
# 10398 "parser.ml"
             in
            (match _menhir_s with
            | MenhirState353 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_2 : (unit)) = _v in
                let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                let _v : (unit) = 
# 894 "parser.mly"
                        ()
# 10409 "parser.ml"
                 in
                _menhir_goto_catches _menhir_env _menhir_stack _menhir_s _v
            | MenhirState341 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (unit)) = _v in
                let _v : (unit) = 
# 893 "parser.mly"
                ()
# 10419 "parser.ml"
                 in
                _menhir_goto_catches _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | MenhirState363 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_3 : (unit))), _, (_5 : (unit))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (unit) = 
# 884 "parser.mly"
                                                ()
# 10434 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 686 "parser.mly"
                         ()
# 10442 "parser.ml"
             in
            _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v
        | MenhirState335 | MenhirState614 | MenhirState339 | MenhirState607 | MenhirState371 | MenhirState602 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState560 | MenhirState556 | MenhirState553 | MenhirState548 | MenhirState545 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState516 | MenhirState513 | MenhirState509 | MenhirState506 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState465 | MenhirState461 | MenhirState400 | MenhirState434 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 677 "parser.mly"
         ()
# 10452 "parser.ml"
             in
            _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v
        | MenhirState333 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 363 "parser.mly"
         ()
# 10462 "parser.ml"
             in
            _menhir_goto_methodBody _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run574 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INT | LONG | SHORT ->
        _menhir_reduce396 _menhir_env (Obj.magic _menhir_stack)
    | ABSTRACT | AROBAS | CLASS | FINAL | PRIVATE | PROTECTED | PUBLIC | STATIC | STRICTFP ->
        _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_statementWithoutTrailingSubstatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState573 | MenhirState395 | MenhirState516 | MenhirState513 | MenhirState509 | MenhirState506 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState465 | MenhirState461 | MenhirState434 | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce307 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState381 | MenhirState385 | MenhirState566 | MenhirState389 | MenhirState563 | MenhirState560 | MenhirState556 | MenhirState553 | MenhirState548 | MenhirState545 | MenhirState541 | MenhirState529 | MenhirState394 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 691 "parser.mly"
                                        ()
# 10509 "parser.ml"
             in
            _menhir_goto_statementNoShortIf _menhir_env _menhir_stack _menhir_s _v
        | ABSTRACT | AROBAS | ASSERT | BOOLEAN | BOOLEANLIT _ | BREAK | BYTE | CHAR | CLASS | CONTINUE | DO | DOUBLE | FINAL | FLOAT | FLOATLIT _ | FOR | IDENT _ | IF | INCR | INT | INTEGERLIT _ | LBRACE | LONG | LPAREN | NEW | NULL | PRIVATE | PROTECTED | PUBLIC | RBRACE | RETURN | SEMICOLON | SHORT | STATIC | STRICTFP | STRINGLIT _ | SUPER | SWITCH | SYNCHRONIZED | THIS | THROW | TRY | VOID | WHILE ->
            _menhir_reduce307 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_variableDeclaratorId : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState306 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run308 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN ->
            _menhir_reduce192 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState347 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run308 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce192 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState619 | MenhirState586 | MenhirState471 | MenhirState473 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState475 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState475 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState475 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState475 _v
            | LBRACE ->
                _menhir_run476 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState475 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState475
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState475)
        | LBRACK ->
            _menhir_run308 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 275 "parser.mly"
                        ()
# 10631 "parser.ml"
             in
            _menhir_goto_variableDeclarator _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_throws_opt : _menhir_env -> 'ttv_tail -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_5 : (unit)) = _v in
    let ((((_menhir_stack, _menhir_s, (_1 : (unit))), (_2 : (unit))), _, (_3 : (unit))), _, (_4 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 288 "parser.mly"
                                                                                 ()
# 10652 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState333
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState333 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 364 "parser.mly"
             ()
# 10670 "parser.ml"
         in
        _menhir_goto_methodBody _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState333

and _menhir_reduce396 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 318 "parser.mly"
         ()
# 10685 "parser.ml"
     in
    match _menhir_s with
    | MenhirState585 | MenhirState470 | MenhirState346 | MenhirState304 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 315 "parser.mly"
                                      ()
# 10696 "parser.ml"
         in
        _menhir_goto_variableModifiers _menhir_env _menhir_stack _menhir_s _v
    | MenhirState614 | MenhirState335 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState391 | MenhirState397 | MenhirState345 | MenhirState314 | MenhirState302 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 314 "parser.mly"
                    ()
# 10706 "parser.ml"
         in
        _menhir_goto_variableModifiers _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_primary : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState577 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState551 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState392 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState520 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState504 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState397 | MenhirState499 | MenhirState497 | MenhirState493 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState398 | MenhirState461 | MenhirState399 | MenhirState457 | MenhirState434 | MenhirState400 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState96 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POINT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | NEW ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | MOD | OR | PLUS | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 980 "parser.mly"
           ()
# 10740 "parser.ml"
             in
            _menhir_goto_postfixExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState201 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POINT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
            | INF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | NEW ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_argumentList_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | LPAREN ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState215 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EXTENDS ->
                _menhir_run218 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState225 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState235 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState242 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((((((((((((((((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))), _, (_5 : (unit))), _, (_7 : (unit))), _, (_8 : (unit))), _, (_10 : (unit))), _, (_12 : (unit))), _, (_14 : (unit))), _, (_15 : (unit))), _, (_17 : (unit))), _, (_19 : (unit))), _, (_21 : (unit))), _, (_23 : (unit))), _, (_24 : (unit))), _, (_26 : (unit))), _, (_28 : (unit))), _, (_30 : (unit))), _, (_31 : (unit))), _, (_33 : (unit))) = _menhir_stack in
            let _34 = () in
            let _32 = () in
            let _29 = () in
            let _27 = () in
            let _25 = () in
            let _22 = () in
            let _20 = () in
            let _18 = () in
            let _16 = () in
            let _13 = () in
            let _11 = () in
            let _9 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : (unit) = 
# 971 "parser.mly"
                                                                                                                 ()
# 10934 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState577 | MenhirState551 | MenhirState392 | MenhirState520 | MenhirState504 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState201 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                _menhir_reduce282 _menhir_env (Obj.magic _menhir_stack)
            | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState397 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState461 | MenhirState399 | MenhirState457 | MenhirState434 | MenhirState400 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | COMMA | RPAREN | SEMICOLON ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                    let _v : (unit) = 
# 718 "parser.mly"
                    ()
# 10952 "parser.ml"
                     in
                    _menhir_goto_statementExpression _menhir_env _menhir_stack _menhir_s _v
                | DECR | INCR | LBRACK | POINT ->
                    _menhir_reduce282 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState94 ->
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
                _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACK | LSHIFT | MINUS | MOD | OR | PLUS | POINT | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
                _menhir_reduce82 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 ->
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
                _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState659
            | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACK | LSHIFT | MINUS | MOD | OR | PLUS | POINT | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
                _menhir_reduce82 _menhir_env (Obj.magic _menhir_stack) MenhirState659
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState659)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_literal : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 910 "parser.mly"
            ()
# 11030 "parser.ml"
     in
    _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce267 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 981 "parser.mly"
                  ()
# 11040 "parser.ml"
     in
    _menhir_goto_postfixExpression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run134 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState134
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134

and _menhir_goto_typeArguments_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 121 "parser.mly"
                                       ()
# 11115 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 | MenhirState14 | MenhirState21 | MenhirState23 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState90 | MenhirState92 | MenhirState618 | MenhirState614 | MenhirState335 | MenhirState337 | MenhirState339 | MenhirState366 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState585 | MenhirState577 | MenhirState379 | MenhirState381 | MenhirState573 | MenhirState383 | MenhirState385 | MenhirState387 | MenhirState389 | MenhirState566 | MenhirState391 | MenhirState551 | MenhirState559 | MenhirState563 | MenhirState560 | MenhirState552 | MenhirState556 | MenhirState553 | MenhirState392 | MenhirState544 | MenhirState548 | MenhirState545 | MenhirState393 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState520 | MenhirState397 | MenhirState504 | MenhirState512 | MenhirState516 | MenhirState513 | MenhirState505 | MenhirState509 | MenhirState506 | MenhirState497 | MenhirState499 | MenhirState470 | MenhirState491 | MenhirState493 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState464 | MenhirState468 | MenhirState465 | MenhirState399 | MenhirState461 | MenhirState457 | MenhirState400 | MenhirState434 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState346 | MenhirState287 | MenhirState304 | MenhirState279 | MenhirState282 | MenhirState94 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState201 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState207 | MenhirState210 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState129 | MenhirState134 | MenhirState188 | MenhirState190 | MenhirState183 | MenhirState185 | MenhirState180 | MenhirState140 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState171 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 | MenhirState64 | MenhirState24 | MenhirState61 | MenhirState34 | MenhirState35 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            _menhir_reduce102 _menhir_env (Obj.magic _menhir_stack)
        | MenhirState218 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            _menhir_reduce102 _menhir_env (Obj.magic _menhir_stack)
        | MenhirState292 | MenhirState295 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA | LBRACE | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                let _v : (unit) = 
# 358 "parser.mly"
             ()
# 11136 "parser.ml"
                 in
                _menhir_goto_exceptionType _menhir_env _menhir_stack _menhir_s _v
            | POINT ->
                _menhir_reduce102 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91)
    | MenhirState92 ->
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
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | RPAREN ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_floatingPointType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 97 "parser.mly"
                     ()
# 11254 "parser.ml"
     in
    _menhir_goto_numericType _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_integralType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 96 "parser.mly"
                ()
# 11266 "parser.ml"
     in
    _menhir_goto_numericType _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_primitiveType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState84 | MenhirState90 | MenhirState92 | MenhirState618 | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState585 | MenhirState577 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState551 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState392 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState520 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState504 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState397 | MenhirState499 | MenhirState497 | MenhirState470 | MenhirState493 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState398 | MenhirState461 | MenhirState399 | MenhirState457 | MenhirState434 | MenhirState400 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState346 | MenhirState337 | MenhirState287 | MenhirState304 | MenhirState279 | MenhirState282 | MenhirState94 | MenhirState96 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState207 | MenhirState210 | MenhirState201 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState171 | MenhirState144 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 | MenhirState87 | MenhirState74 | MenhirState24 | MenhirState61 | MenhirState34 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce361 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState648 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACK ->
                _menhir_run650 _menhir_env (Obj.magic _menhir_stack) MenhirState649
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState649)
        | LBRACE | POINT ->
            _menhir_reduce361 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack) MenhirState648
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState648)
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run662 _menhir_env (Obj.magic _menhir_stack) MenhirState661
        | LBRACE ->
            _menhir_reduce361 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState661)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exceptionType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState295 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 355 "parser.mly"
                                         ()
# 11331 "parser.ml"
         in
        _menhir_goto_exceptionTypeList _menhir_env _menhir_stack _menhir_s _v
    | MenhirState292 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 354 "parser.mly"
                 ()
# 11341 "parser.ml"
         in
        _menhir_goto_exceptionTypeList _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_referenceType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COND ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) = 
# 152 "parser.mly"
                         ()
# 11363 "parser.ml"
             in
            _menhir_goto_wildcardBounds _menhir_env _menhir_stack _menhir_s _v
        | LBRACE ->
            _menhir_reduce362 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState23 | MenhirState90 | MenhirState92 | MenhirState61 | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_reduce362 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | IDENT _ | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACK | LPAREN | OR | POINT | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 145 "parser.mly"
                 ()
# 11387 "parser.ml"
             in
            _menhir_goto_actualTypeArgument _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COND ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) = 
# 153 "parser.mly"
                       ()
# 11408 "parser.ml"
             in
            _menhir_goto_wildcardBounds _menhir_env _menhir_stack _menhir_s _v
        | LBRACE ->
            _menhir_reduce362 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState84 | MenhirState618 | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState585 | MenhirState577 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState551 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState392 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState395 | MenhirState520 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState504 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState397 | MenhirState499 | MenhirState497 | MenhirState470 | MenhirState493 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState398 | MenhirState461 | MenhirState399 | MenhirState457 | MenhirState434 | MenhirState400 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState346 | MenhirState337 | MenhirState287 | MenhirState304 | MenhirState279 | MenhirState282 | MenhirState94 | MenhirState96 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState201 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 | MenhirState87 | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce362 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_reduce362 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | OR | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1045 "parser.mly"
                                                  ()
# 11436 "parser.ml"
             in
            _menhir_goto_relationalExpression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState210 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_reduce362 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | SUP ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 421 "parser.mly"
                                         ()
# 11459 "parser.ml"
             in
            _menhir_goto_referenceTypeList _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState207 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_reduce362 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | SUP ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 420 "parser.mly"
                 ()
# 11481 "parser.ml"
             in
            _menhir_goto_referenceTypeList _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState646 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState646 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState646 _v
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState646 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState646 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState646
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState646)
        | LBRACE | POINT ->
            _menhir_reduce362 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run207 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState207

and _menhir_goto_annotation : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState255 | MenhirState635 | MenhirState322 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 334 "parser.mly"
               ()
# 11596 "parser.ml"
         in
        _menhir_goto_methodModifier _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState335 | MenhirState614 | MenhirState607 | MenhirState371 | MenhirState602 | MenhirState597 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 191 "parser.mly"
                ()
# 11606 "parser.ml"
         in
        _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 607 "parser.mly"
              ()
# 11616 "parser.ml"
         in
        _menhir_goto_elementValue _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_elementValuePairs_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
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
        let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_4 : (unit))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 592 "parser.mly"
                                                       ()
# 11640 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 587 "parser.mly"
                    ()
# 11648 "parser.ml"
         in
        _menhir_goto_annotation _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run678 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AROBAS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState678 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState678 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState678 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState678 _v
    | LBRACE ->
        _menhir_run678 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState678 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState678
    | COMMA | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState678 in
        let _v : (unit) = 
# 614 "parser.mly"
   ()
# 11724 "parser.ml"
         in
        _menhir_goto_elementValues_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState678

and _menhir_goto_leftHandSide : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ANDEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1107 "parser.mly"
            ()
# 11747 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | DIVEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1106 "parser.mly"
            ()
# 11758 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | LSHIFTEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1111 "parser.mly"
               ()
# 11769 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | MINUSEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1104 "parser.mly"
              ()
# 11780 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | MODEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1110 "parser.mly"
            ()
# 11791 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | OREQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1108 "parser.mly"
           ()
# 11802 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | PLUSEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1103 "parser.mly"
             ()
# 11813 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | RSHIFTEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1112 "parser.mly"
               ()
# 11824 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | TIMESEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1105 "parser.mly"
              ()
# 11835 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | USHIFTEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1113 "parser.mly"
               ()
# 11846 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | XOREQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 1109 "parser.mly"
            ()
# 11857 "parser.ml"
         in
        _menhir_goto_assignmentOperator _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce281 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 917 "parser.mly"
                ()
# 11873 "parser.ml"
     in
    _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v

and _menhir_run255 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run266 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | AROBAS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | FINAL ->
        _menhir_run265 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | NATIVE ->
        _menhir_run264 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | PRIVATE ->
        _menhir_run263 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | PROTECTED ->
        _menhir_run262 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | PUBLIC ->
        _menhir_run261 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | STATIC ->
        _menhir_run260 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | STRICTFP ->
        _menhir_run259 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | SYNCHRONIZED ->
        _menhir_run258 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | TRANSIENT ->
        _menhir_run257 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | VOLATILE ->
        _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | INF | VOID ->
        _menhir_reduce244 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INT | LONG | SHORT ->
        _menhir_reduce165 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState255 in
        let _v : (unit) = 
# 228 "parser.mly"
   ()
# 11917 "parser.ml"
         in
        _menhir_goto_classBodyDeclarations_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState255

and _menhir_run690 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AROBAS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState690 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState690 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState690 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState690 _v
    | LBRACE ->
        _menhir_run678 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState690 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState690
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState690

and _menhir_goto_switchLabel : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (unit)) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 754 "parser.mly"
                            ()
# 11998 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState369 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABSTRACT ->
            _menhir_run584 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | AROBAS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | ASSERT ->
            _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState371 _v
        | BREAK ->
            _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | CASE ->
            _menhir_run577 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | CONTINUE ->
            _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | DEFAULT ->
            _menhir_run575 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | DO ->
            _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | FINAL ->
            _menhir_run574 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState371 _v
        | FOR ->
            _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState371 _v
        | IF ->
            _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState371 _v
        | LBRACE ->
            _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | PRIVATE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | PROTECTED ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | PUBLIC ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState371 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (_2 : (unit))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) = 
# 743 "parser.mly"
                                                          ()
# 12078 "parser.ml"
             in
            _menhir_goto_switchBlock _menhir_env _menhir_stack _v
        | RETURN ->
            _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | SEMICOLON ->
            _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | STATIC ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | STRICTFP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState371 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | SWITCH ->
            _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | SYNCHRONIZED ->
            _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | THROW ->
            _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | TRY ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | WHILE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | CLASS ->
            _menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) MenhirState371
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState371)
    | MenhirState605 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABSTRACT ->
            _menhir_run584 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | AROBAS ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | ASSERT ->
            _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState607 _v
        | BREAK ->
            _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | CASE ->
            _menhir_run577 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | CONTINUE ->
            _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | DEFAULT ->
            _menhir_run575 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | DO ->
            _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | FINAL ->
            _menhir_run574 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState607 _v
        | FOR ->
            _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState607 _v
        | IF ->
            _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState607 _v
        | LBRACE ->
            _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | PRIVATE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | PROTECTED ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | PUBLIC ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState607 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : (unit) = 
# 744 "parser.mly"
                                                          ()
# 12191 "parser.ml"
             in
            _menhir_goto_switchBlock _menhir_env _menhir_stack _v
        | RETURN ->
            _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | SEMICOLON ->
            _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | STATIC ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | STRICTFP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState607 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | SWITCH ->
            _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | SYNCHRONIZED ->
            _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | THROW ->
            _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | TRY ->
            _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | WHILE ->
            _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | CLASS ->
            _menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) MenhirState607
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState607)
    | _ ->
        _menhir_fail ()

and _menhir_run382 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState383 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState383 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState383 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState383 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState383 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState383
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState383)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run386 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState387 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState387 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState387 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState387 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState387 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState387
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState387)
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
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState391 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | FINAL ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState391 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState391 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState391 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState391 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState392 in
                let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState393 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ASSERT ->
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _v
                    | FOR ->
                        _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _v
                    | IF ->
                        _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | WHILE ->
                        _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState394
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState394)
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState393 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState393
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState393)
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState392
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState392)
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState391 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState391
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState391)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run336 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState337)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run340 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState340
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState340

and _menhir_run357 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState357
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState357

and _menhir_run360 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState361
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState361)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run365 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState366 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState366 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState366 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState366 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState366 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState366
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState366)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run372 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 699 "parser.mly"
             ()
# 12928 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 678 "parser.mly"
                  ()
# 12936 "parser.ml"
     in
    _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run373 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState373 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState373 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState373 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState373 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState373 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 875 "parser.mly"
                     ()
# 12995 "parser.ml"
         in
        _menhir_goto_returnStatement _menhir_env _menhir_stack _menhir_s _v
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState373 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState373
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState373

and _menhir_run202 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState202

and _menhir_run335 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run584 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | AROBAS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | ASSERT ->
        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
    | BREAK ->
        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | CONTINUE ->
        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | DO ->
        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | FINAL ->
        _menhir_run574 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
    | FOR ->
        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
    | IF ->
        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
    | LBRACE ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | LPAREN ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | PRIVATE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | PROTECTED ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | PUBLIC ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | RETURN ->
        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | SEMICOLON ->
        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | STATIC ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | STRICTFP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | SWITCH ->
        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | SYNCHRONIZED ->
        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | THROW ->
        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | TRY ->
        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | WHILE ->
        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | CLASS ->
        _menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState335 in
        let _v : (unit) = 
# 648 "parser.mly"
    ()
# 13174 "parser.ml"
         in
        _menhir_goto_blockStatements_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState335

and _menhir_run378 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState379
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState379)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run396 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState397 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | FINAL ->
            _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState397 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState397 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState397 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | LPAREN ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState397 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState398 in
                let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | BOOLEANLIT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState399 _v
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | FLOATLIT _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState399 _v
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState399 _v
                | INCR ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | INTEGERLIT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState399 _v
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | LPAREN ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | NEW ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | NULL ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState399 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ASSERT ->
                        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | BOOLEAN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | BOOLEANLIT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _v
                    | BREAK ->
                        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | BYTE ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | CHAR ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | CONTINUE ->
                        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | DO ->
                        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | DOUBLE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | FLOAT ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | FLOATLIT _v ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _v
                    | FOR ->
                        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _v
                    | IF ->
                        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | INCR ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | INT ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | INTEGERLIT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _v
                    | LBRACE ->
                        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | LONG ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | LPAREN ->
                        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | NEW ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | NULL ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | RETURN ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | SEMICOLON ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | SHORT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | STRINGLIT _v ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _v
                    | SUPER ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | SWITCH ->
                        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | SYNCHRONIZED ->
                        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | THIS ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | THROW ->
                        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | TRY ->
                        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | VOID ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | WHILE ->
                        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState400)
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | STRINGLIT _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState399 _v
                | SUPER ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | THIS ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | VOID ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState399
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState399)
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState398 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState398
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState398)
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState397 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState397)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run395 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _v
    | BREAK ->
        _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | CONTINUE ->
        _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | DO ->
        _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _v
    | FOR ->
        _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _v
    | IF ->
        _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _v
    | LBRACE ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | LPAREN ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | RETURN ->
        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | SEMICOLON ->
        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState395 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | SWITCH ->
        _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | SYNCHRONIZED ->
        _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | THROW ->
        _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | TRY ->
        _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | WHILE ->
        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState395
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState395

and _menhir_run401 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState401 _v
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState401 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 870 "parser.mly"
                       ()
# 13607 "parser.ml"
         in
        _menhir_goto_continueStatement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState401

and _menhir_run405 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState405 _v
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState405 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 865 "parser.mly"
                    ()
# 13634 "parser.ml"
         in
        _menhir_goto_breakStatement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState405

and _menhir_run409 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState409
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState409

and _menhir_goto_breakStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 683 "parser.mly"
                  ()
# 13711 "parser.ml"
     in
    _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_continueStatement : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 684 "parser.mly"
                     ()
# 13723 "parser.ml"
     in
    _menhir_goto_statementWithoutTrailingSubstatement _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce386 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 279 "parser.mly"
              ()
# 13733 "parser.ml"
     in
    _menhir_goto_variableDeclaratorId _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_formalParameterList_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
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
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : (unit) = 
# 295 "parser.mly"
                                                    ()
# 13754 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | THROWS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState292 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState292)
        | LBRACE | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (unit) = 
# 347 "parser.mly"
    ()
# 13777 "parser.ml"
             in
            _menhir_goto_throws_opt _menhir_env _menhir_stack _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run303 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce396 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run218 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState218

and _menhir_goto_primaryNoNewArray : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
    | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | MOD | OR | PLUS | POINT | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 906 "parser.mly"
                      ()
# 13884 "parser.ml"
         in
        _menhir_goto_primary _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 931 "parser.mly"
    ()
# 13899 "parser.ml"
     in
    _menhir_goto_argumentList_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | POINT ->
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
            let _v : (unit) = 
# 912 "parser.mly"
                    ()
# 13925 "parser.ml"
             in
            _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v
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

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 913 "parser.mly"
         ()
# 14010 "parser.ml"
     in
    _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | POINT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (string)
# 14041 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 7 "parser.mly"
       (string)
# 14049 "parser.ml"
    )) = _v in
    let _v : (unit) = 
# 78 "parser.mly"
              ()
# 14054 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 65 "parser.mly"
                 ()
# 14062 "parser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 81 "parser.mly"
         ()
# 14135 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 66 "parser.mly"
               ()
# 14143 "parser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | EXTENDS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | SUPER ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (int)
# 14305 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 6 "parser.mly"
       (int)
# 14313 "parser.ml"
    )) = _v in
    let _v : (unit) = 
# 69 "parser.mly"
              ()
# 14318 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 62 "parser.mly"
                  ()
# 14326 "parser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (float)
# 14394 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 5 "parser.mly"
       (float)
# 14402 "parser.ml"
    )) = _v in
    let _v : (unit) = 
# 72 "parser.mly"
             ()
# 14407 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 63 "parser.mly"
                        ()
# 14415 "parser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | BOOLEANLIT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | DECR ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | EXCL ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FLOATLIT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INCR ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | INTEGERLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MINUS ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NEW ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NULL ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | PLUS ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | STRINGLIT _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | SUPER ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | THIS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | TILDE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | VOID ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run75 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (bool)
# 14544 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 4 "parser.mly"
       (bool)
# 14552 "parser.ml"
    )) = _v in
    let _v : (unit) = 
# 75 "parser.mly"
              ()
# 14557 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 64 "parser.mly"
                  ()
# 14565 "parser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expressionName : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 | MenhirState690 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState68 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState87 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState190 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 | MenhirState140 | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | MOD | OR | PLUS | RBRACE | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            _menhir_reduce267 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState577 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState391 | MenhirState559 | MenhirState563 | MenhirState560 | MenhirState551 | MenhirState552 | MenhirState556 | MenhirState553 | MenhirState544 | MenhirState548 | MenhirState545 | MenhirState392 | MenhirState393 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState520 | MenhirState397 | MenhirState512 | MenhirState516 | MenhirState513 | MenhirState504 | MenhirState505 | MenhirState509 | MenhirState506 | MenhirState499 | MenhirState497 | MenhirState493 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState464 | MenhirState468 | MenhirState465 | MenhirState398 | MenhirState399 | MenhirState461 | MenhirState457 | MenhirState400 | MenhirState434 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState188 | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LSHIFT | MINUS | MOD | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            _menhir_reduce267 _menhir_env (Obj.magic _menhir_stack)
        | ANDEQUAL | DIVEQUAL | LSHIFTEQUAL | MINUSEQUAL | MODEQUAL | OREQUAL | PLUSEQUAL | RSHIFTEQUAL | TIMESEQUAL | USHIFTEQUAL | XOREQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1098 "parser.mly"
                  ()
# 14603 "parser.ml"
             in
            _menhir_goto_leftHandSide _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState201 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_methodName : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | BOOLEANLIT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | DECR ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | EXCL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | FLOATLIT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | INCR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | INTEGERLIT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MINUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | NEW ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | NULL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | STRINGLIT _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | SUPER ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | THIS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | TILDE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | VOID ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | RPAREN ->
            _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce148 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 1126 "parser.mly"
               ()
# 14709 "parser.ml"
     in
    _menhir_goto_expressionName _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce246 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 1130 "parser.mly"
              ()
# 14719 "parser.ml"
     in
    _menhir_goto_methodName _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce364 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 134 "parser.mly"
   ()
# 14728 "parser.ml"
     in
    _menhir_goto_typeArguments_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 101 "parser.mly"
         ()
# 14769 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 103 "parser.mly"
        ()
# 14781 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 102 "parser.mly"
       ()
# 14793 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 107 "parser.mly"
         ()
# 14805 "parser.ml"
     in
    _menhir_goto_floatingPointType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 108 "parser.mly"
          ()
# 14846 "parser.ml"
     in
    _menhir_goto_floatingPointType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 104 "parser.mly"
        ()
# 14858 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 100 "parser.mly"
        ()
# 14870 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 93 "parser.mly"
           ()
# 14882 "parser.ml"
     in
    _menhir_goto_primitiveType _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_typeDeclSpecifier : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | EXTENDS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | INT ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LONG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SHORT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SUPER ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | AND | COLON | COMMA | COND | CONDAND | CONDOR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LBRACK | LPAREN | OR | POINT | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
        _menhir_reduce364 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_reduce368 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 1122 "parser.mly"
               ()
# 14928 "parser.ml"
     in
    _menhir_goto_typeName _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce374 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 128 "parser.mly"
               ()
# 14938 "parser.ml"
     in
    match _menhir_s with
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState652 | MenhirState646 | MenhirState69 | MenhirState71 | MenhirState73 | MenhirState618 | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState585 | MenhirState577 | MenhirState573 | MenhirState381 | MenhirState385 | MenhirState566 | MenhirState389 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState551 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState392 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState520 | MenhirState395 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState504 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState499 | MenhirState497 | MenhirState397 | MenhirState493 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState470 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState398 | MenhirState461 | MenhirState457 | MenhirState399 | MenhirState434 | MenhirState400 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState346 | MenhirState337 | MenhirState304 | MenhirState287 | MenhirState282 | MenhirState279 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState210 | MenhirState207 | MenhirState201 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState175 | MenhirState173 | MenhirState171 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState144 | MenhirState142 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState87 | MenhirState84 | MenhirState74 | MenhirState23 | MenhirState61 | MenhirState34 | MenhirState35 | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 113 "parser.mly"
                ()
# 14948 "parser.ml"
         in
        _menhir_goto_referenceType _menhir_env _menhir_stack _menhir_s _v
    | MenhirState295 | MenhirState292 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 359 "parser.mly"
                ()
# 14958 "parser.ml"
         in
        _menhir_goto_exceptionType _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_typeName : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AROBAS ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | LBRACE ->
                _menhir_run678 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState10 in
                let _v : (unit) = 
# 595 "parser.mly"
    ()
# 15038 "parser.ml"
                 in
                _menhir_goto_elementValuePairs_opt _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10)
        | ABSTRACT | AROBAS | BOOLEAN | BYTE | CHAR | CLASS | COMMA | DOUBLE | FINAL | FLOAT | IDENT _ | INF | INT | LONG | NATIVE | PRIVATE | PROTECTED | PUBLIC | RBRACE | RPAREN | SHORT | STATIC | STRICTFP | SYNCHRONIZED | VOID ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) = 
# 622 "parser.mly"
                   ()
# 15052 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 588 "parser.mly"
                    ()
# 15060 "parser.ml"
             in
            _menhir_goto_annotation _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState690 | MenhirState10 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState652 | MenhirState646 | MenhirState69 | MenhirState71 | MenhirState73 | MenhirState618 | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState585 | MenhirState577 | MenhirState573 | MenhirState381 | MenhirState385 | MenhirState566 | MenhirState389 | MenhirState563 | MenhirState559 | MenhirState560 | MenhirState551 | MenhirState556 | MenhirState552 | MenhirState553 | MenhirState391 | MenhirState548 | MenhirState544 | MenhirState545 | MenhirState392 | MenhirState541 | MenhirState393 | MenhirState529 | MenhirState394 | MenhirState520 | MenhirState395 | MenhirState516 | MenhirState512 | MenhirState513 | MenhirState504 | MenhirState509 | MenhirState505 | MenhirState506 | MenhirState499 | MenhirState497 | MenhirState397 | MenhirState493 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState470 | MenhirState468 | MenhirState464 | MenhirState465 | MenhirState398 | MenhirState461 | MenhirState457 | MenhirState399 | MenhirState434 | MenhirState400 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState346 | MenhirState337 | MenhirState304 | MenhirState295 | MenhirState292 | MenhirState287 | MenhirState282 | MenhirState279 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState218 | MenhirState215 | MenhirState210 | MenhirState207 | MenhirState201 | MenhirState202 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState175 | MenhirState173 | MenhirState171 | MenhirState168 | MenhirState166 | MenhirState164 | MenhirState162 | MenhirState146 | MenhirState144 | MenhirState142 | MenhirState140 | MenhirState134 | MenhirState129 | MenhirState126 | MenhirState111 | MenhirState108 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState87 | MenhirState84 | MenhirState74 | MenhirState64 | MenhirState23 | MenhirState61 | MenhirState34 | MenhirState35 | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 124 "parser.mly"
            ()
# 15076 "parser.ml"
         in
        _menhir_goto_typeDeclSpecifier _menhir_env _menhir_stack _menhir_s _v
    | MenhirState237 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POINT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | INF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState239
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState239)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fieldAccess : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 | MenhirState690 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState68 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState87 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState201 | MenhirState190 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 | MenhirState140 | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce281 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState662 | MenhirState67 | MenhirState69 | MenhirState84 | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState577 | MenhirState381 | MenhirState573 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState391 | MenhirState559 | MenhirState563 | MenhirState560 | MenhirState551 | MenhirState552 | MenhirState556 | MenhirState553 | MenhirState544 | MenhirState548 | MenhirState545 | MenhirState392 | MenhirState393 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState520 | MenhirState397 | MenhirState512 | MenhirState516 | MenhirState513 | MenhirState504 | MenhirState505 | MenhirState509 | MenhirState506 | MenhirState499 | MenhirState497 | MenhirState493 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState464 | MenhirState468 | MenhirState465 | MenhirState398 | MenhirState399 | MenhirState461 | MenhirState457 | MenhirState400 | MenhirState434 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState188 | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LBRACK | LSHIFT | MINUS | MOD | OR | PLUS | POINT | RBRACK | RPAREN | RSHIFT | SEMICOLON | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            _menhir_reduce281 _menhir_env (Obj.magic _menhir_stack)
        | ANDEQUAL | DIVEQUAL | LSHIFTEQUAL | MINUSEQUAL | MODEQUAL | OREQUAL | PLUSEQUAL | RSHIFTEQUAL | TIMESEQUAL | USHIFTEQUAL | XOREQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 1099 "parser.mly"
               ()
# 15124 "parser.ml"
             in
            _menhir_goto_leftHandSide _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_classModifiers : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABSTRACT ->
        _menhir_run584 _menhir_env (Obj.magic _menhir_stack) MenhirState597
    | AROBAS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState597
    | FINAL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState597
    | PRIVATE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState597
    | PROTECTED ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState597
    | PUBLIC ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState597
    | STATIC ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState597
    | STRICTFP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState597
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 184 "parser.mly"
                  ()
# 15170 "parser.ml"
         in
        _menhir_goto_classModifiers_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState597

and _menhir_goto_classModifiers_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run255 _menhir_env (Obj.magic _menhir_stack) MenhirState595
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState595)
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce95 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 197 "parser.mly"
         ()
# 15222 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "parser.mly"
       (string)
# 15229 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (string)
# 15237 "parser.ml"
    )) = _v in
    let _v : (unit) = 
# 58 "parser.mly"
         ()
# 15242 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (unit) = 
# 963 "parser.mly"
                           ()
# 15255 "parser.ml"
         in
        _menhir_goto_fieldAccess _menhir_env _menhir_stack _menhir_s _v
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 1123 "parser.mly"
                                       ()
# 15266 "parser.ml"
         in
        _menhir_goto_typeName _menhir_env _menhir_stack _menhir_s _v
    | MenhirState23 | MenhirState90 | MenhirState92 | MenhirState618 | MenhirState585 | MenhirState470 | MenhirState346 | MenhirState287 | MenhirState304 | MenhirState295 | MenhirState292 | MenhirState279 | MenhirState282 | MenhirState207 | MenhirState210 | MenhirState171 | MenhirState24 | MenhirState61 | MenhirState34 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND | COLON | COMMA | COND | CONDAND | CONDOR | IDENT _ | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LBRACK | LPAREN | OR | POINT | RBRACE | RBRACK | RPAREN | SEMICOLON | SUP | SUPEQUAL | XOR ->
            _menhir_reduce374 _menhir_env (Obj.magic _menhir_stack)
        | BOOLEAN | BYTE | CHAR | DOUBLE | EXTENDS | FLOAT | INT | LONG | SHORT | SUPER ->
            _menhir_reduce368 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (unit))), _), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 125 "parser.mly"
                                          ()
# 15292 "parser.ml"
         in
        _menhir_goto_typeDeclSpecifier _menhir_env _menhir_stack _menhir_s _v
    | MenhirState7 | MenhirState237 | MenhirState218 | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce368 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLEAN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | BYTE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | CHAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | DOUBLE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | EXTENDS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | FLOAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | INT ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | LONG ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | SHORT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | SUPER ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | LPAREN ->
            _menhir_reduce364 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
    | MenhirState690 | MenhirState683 | MenhirState678 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState559 | MenhirState551 | MenhirState552 | MenhirState391 | MenhirState544 | MenhirState392 | MenhirState393 | MenhirState520 | MenhirState512 | MenhirState504 | MenhirState505 | MenhirState397 | MenhirState497 | MenhirState491 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState464 | MenhirState398 | MenhirState399 | MenhirState457 | MenhirState412 | MenhirState409 | MenhirState387 | MenhirState383 | MenhirState379 | MenhirState373 | MenhirState366 | MenhirState361 | MenhirState357 | MenhirState337 | MenhirState94 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState201 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState190 | MenhirState188 | MenhirState185 | MenhirState183 | MenhirState180 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 | MenhirState140 | MenhirState134 | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _ | LBRACE | POINT | RPAREN ->
            _menhir_reduce374 _menhir_env (Obj.magic _menhir_stack)
        | BOOLEAN | BYTE | CHAR | DOUBLE | EXTENDS | FLOAT | INT | LONG | SHORT | SUPER ->
            _menhir_reduce368 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_reduce246 _menhir_env (Obj.magic _menhir_stack)
        | AND | ANDEQUAL | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | DIVEQUAL | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACK | LSHIFT | LSHIFTEQUAL | MINUS | MINUSEQUAL | MOD | MODEQUAL | OR | OREQUAL | PLUS | PLUSEQUAL | RBRACE | RBRACK | RSHIFT | RSHIFTEQUAL | SEMICOLON | SUP | SUPEQUAL | TIMES | TIMESEQUAL | USHIFT | USHIFTEQUAL | XOR | XOREQUAL ->
            _menhir_reduce148 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState151 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_5 : (unit))) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _2 = () in
        let _v : (unit) = 
# 964 "parser.mly"
                                           ()
# 15360 "parser.ml"
         in
        _menhir_goto_fieldAccess _menhir_env _menhir_stack _menhir_s _v
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1131 "parser.mly"
                                  ()
# 15375 "parser.ml"
             in
            _menhir_goto_methodName _menhir_env _menhir_stack _menhir_s _v
        | AND | ANDEQUAL | COLON | COMMA | COND | CONDAND | CONDOR | DECR | DIV | DIVEQUAL | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACE | LBRACK | LSHIFT | LSHIFTEQUAL | MINUS | MINUSEQUAL | MOD | MODEQUAL | OR | OREQUAL | PLUS | PLUSEQUAL | RBRACE | RBRACK | RPAREN | RSHIFT | RSHIFTEQUAL | SEMICOLON | SUP | SUPEQUAL | TIMES | TIMESEQUAL | USHIFT | USHIFTEQUAL | XOR | XOREQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1127 "parser.mly"
                                   ()
# 15385 "parser.ml"
             in
            _menhir_goto_expressionName _menhir_env _menhir_stack _menhir_s _v
        | POINT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 1139 "parser.mly"
                                  ()
# 15395 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | POINT ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159)
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
    | MenhirState213 ->
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
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | RPAREN ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState215)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState223 ->
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
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | RPAREN ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState225
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState227 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 159 "parser.mly"
               ()
# 15576 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState10 | MenhirState690 | MenhirState678 | MenhirState683 | MenhirState14 | MenhirState21 | MenhirState662 | MenhirState67 | MenhirState68 | MenhirState69 | MenhirState652 | MenhirState646 | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState84 | MenhirState87 | MenhirState614 | MenhirState335 | MenhirState337 | MenhirState339 | MenhirState366 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState577 | MenhirState379 | MenhirState381 | MenhirState573 | MenhirState383 | MenhirState385 | MenhirState387 | MenhirState389 | MenhirState566 | MenhirState391 | MenhirState551 | MenhirState559 | MenhirState563 | MenhirState560 | MenhirState552 | MenhirState556 | MenhirState553 | MenhirState392 | MenhirState544 | MenhirState548 | MenhirState545 | MenhirState393 | MenhirState541 | MenhirState394 | MenhirState529 | MenhirState395 | MenhirState520 | MenhirState397 | MenhirState504 | MenhirState512 | MenhirState516 | MenhirState513 | MenhirState505 | MenhirState509 | MenhirState506 | MenhirState497 | MenhirState499 | MenhirState491 | MenhirState493 | MenhirState475 | MenhirState476 | MenhirState482 | MenhirState398 | MenhirState464 | MenhirState468 | MenhirState465 | MenhirState399 | MenhirState461 | MenhirState457 | MenhirState400 | MenhirState434 | MenhirState409 | MenhirState412 | MenhirState373 | MenhirState361 | MenhirState357 | MenhirState94 | MenhirState96 | MenhirState98 | MenhirState108 | MenhirState201 | MenhirState246 | MenhirState242 | MenhirState235 | MenhirState225 | MenhirState215 | MenhirState202 | MenhirState111 | MenhirState126 | MenhirState129 | MenhirState134 | MenhirState188 | MenhirState190 | MenhirState183 | MenhirState185 | MenhirState180 | MenhirState140 | MenhirState177 | MenhirState142 | MenhirState175 | MenhirState173 | MenhirState144 | MenhirState168 | MenhirState162 | MenhirState166 | MenhirState164 | MenhirState146 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | POINT ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | SUPER ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | POINT ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | IDENT _v ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | THIS ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
                    let _3 = () in
                    let _2 = () in
                    let _v : (unit) = 
# 914 "parser.mly"
                         ()
# 15622 "parser.ml"
                     in
                    _menhir_goto_primaryNoNewArray _menhir_env _menhir_stack _menhir_s _v
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
        | MenhirState227 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | POINT ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EXTENDS ->
                    _menhir_run218 _menhir_env (Obj.magic _menhir_stack) MenhirState230
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState230)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | MenhirState233 ->
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
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | RPAREN ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState235
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState240 ->
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
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | RPAREN ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState242
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState89 | MenhirState206 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 962 "parser.mly"
                             ()
# 15813 "parser.ml"
         in
        _menhir_goto_fieldAccess _menhir_env _menhir_stack _menhir_s _v
    | MenhirState270 | MenhirState273 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EXTENDS ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLEAN ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | BYTE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | CHAR ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | DOUBLE ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | FLOAT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
                | INT ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | LONG ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | SHORT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279)
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
    | MenhirState290 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FINAL ->
                _menhir_run303 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState302 in
                let _v : (unit) = 
# 298 "parser.mly"
   ()
# 15883 "parser.ml"
                 in
                _menhir_goto_formalParameterList_opt _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState619 | MenhirState586 | MenhirState473 | MenhirState347 | MenhirState306 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce386 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState401 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) = 
# 871 "parser.mly"
                                 ()
# 15914 "parser.ml"
             in
            _menhir_goto_continueStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState405 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) = 
# 866 "parser.mly"
                              ()
# 15938 "parser.ml"
             in
            _menhir_goto_breakStatement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState614 | MenhirState335 | MenhirState339 | MenhirState607 | MenhirState602 | MenhirState371 | MenhirState573 | MenhirState395 | MenhirState516 | MenhirState513 | MenhirState509 | MenhirState506 | MenhirState499 | MenhirState493 | MenhirState468 | MenhirState465 | MenhirState461 | MenhirState434 | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ASSERT ->
                _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _v
            | BREAK ->
                _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | CONTINUE ->
                _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | DO ->
                _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _v
            | FOR ->
                _menhir_run396 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _v
            | IF ->
                _menhir_run378 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _v
            | LBRACE ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | LPAREN ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | RETURN ->
                _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | SEMICOLON ->
                _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | SWITCH ->
                _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | SYNCHRONIZED ->
                _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | THROW ->
                _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | TRY ->
                _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | WHILE ->
                _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState434
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState434)
        | LBRACE | POINT ->
            _menhir_reduce374 _menhir_env (Obj.magic _menhir_stack)
        | BOOLEAN | BYTE | CHAR | DOUBLE | EXTENDS | FLOAT | IDENT _ | INT | LONG | SHORT | SUPER ->
            _menhir_reduce368 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_reduce246 _menhir_env (Obj.magic _menhir_stack)
        | ANDEQUAL | DECR | DIVEQUAL | INCR | LBRACK | LSHIFTEQUAL | MINUSEQUAL | MODEQUAL | OREQUAL | PLUSEQUAL | RSHIFTEQUAL | TIMESEQUAL | USHIFTEQUAL | XOREQUAL ->
            _menhir_reduce148 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState471 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState491 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState491 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState491 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState491 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState491 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState491
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState491)
        | COMMA | EQUAL | LBRACK | SEMICOLON ->
            _menhir_reduce386 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState495 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _v
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | DECR ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | EXCL ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _v
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _v
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | MINUS ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | PLUS ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | TILDE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState497
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState497)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState381 | MenhirState385 | MenhirState389 | MenhirState566 | MenhirState563 | MenhirState560 | MenhirState556 | MenhirState553 | MenhirState548 | MenhirState545 | MenhirState541 | MenhirState529 | MenhirState394 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ASSERT ->
                _menhir_run409 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | BOOLEAN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | BOOLEANLIT _v ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState529 _v
            | BREAK ->
                _menhir_run405 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | CONTINUE ->
                _menhir_run401 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | DO ->
                _menhir_run395 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | FLOATLIT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState529 _v
            | FOR ->
                _menhir_run390 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState529 _v
            | IF ->
                _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | INCR ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | INT ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | INTEGERLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState529 _v
            | LBRACE ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | LONG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | LPAREN ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | NEW ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | NULL ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | RETURN ->
                _menhir_run373 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | SEMICOLON ->
                _menhir_run372 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | SHORT ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | STRINGLIT _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState529 _v
            | SUPER ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | SWITCH ->
                _menhir_run365 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | SYNCHRONIZED ->
                _menhir_run360 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | THIS ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | THROW ->
                _menhir_run357 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | TRY ->
                _menhir_run340 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | VOID ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | WHILE ->
                _menhir_run382 _menhir_env (Obj.magic _menhir_stack) MenhirState529
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState529)
        | LBRACE | POINT ->
            _menhir_reduce374 _menhir_env (Obj.magic _menhir_stack)
        | BOOLEAN | BYTE | CHAR | DOUBLE | EXTENDS | FLOAT | IDENT _ | INT | LONG | SHORT | SUPER ->
            _menhir_reduce368 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_reduce246 _menhir_env (Obj.magic _menhir_stack)
        | ANDEQUAL | DECR | DIVEQUAL | INCR | LBRACK | LSHIFTEQUAL | MINUSEQUAL | MODEQUAL | OREQUAL | PLUSEQUAL | RSHIFTEQUAL | TIMESEQUAL | USHIFTEQUAL | XOREQUAL ->
            _menhir_reduce148 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState577 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE | POINT ->
            _menhir_reduce374 _menhir_env (Obj.magic _menhir_stack)
        | BOOLEAN | BYTE | CHAR | DOUBLE | EXTENDS | FLOAT | IDENT _ | INT | LONG | SHORT | SUPER ->
            _menhir_reduce368 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_reduce246 _menhir_env (Obj.magic _menhir_stack)
        | AND | ANDEQUAL | COND | CONDAND | CONDOR | DECR | DIV | DIVEQUAL | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACK | LSHIFT | LSHIFTEQUAL | MINUS | MINUSEQUAL | MOD | MODEQUAL | OR | OREQUAL | PLUS | PLUSEQUAL | RSHIFT | RSHIFTEQUAL | SUP | SUPEQUAL | TIMES | TIMESEQUAL | USHIFT | USHIFTEQUAL | XOR | XOREQUAL ->
            _menhir_reduce148 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 762 "parser.mly"
              ()
# 16300 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 758 "parser.mly"
                               ()
# 16317 "parser.ml"
                 in
                _menhir_goto_switchLabel _menhir_env _menhir_stack _menhir_s _v
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
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            _menhir_run690 _menhir_env (Obj.magic _menhir_stack)
        | LBRACE | POINT ->
            _menhir_reduce374 _menhir_env (Obj.magic _menhir_stack)
        | BOOLEAN | BYTE | CHAR | DOUBLE | EXTENDS | FLOAT | IDENT _ | INT | LONG | SHORT | SUPER ->
            _menhir_reduce368 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_reduce246 _menhir_env (Obj.magic _menhir_stack)
        | AND | COND | CONDAND | CONDOR | DECR | DIV | INCR | INF | INFEQUAL | INSTANCEOF | ISEQUAL | ISNOTEQUAL | LBRACK | LSHIFT | MINUS | MOD | OR | PLUS | RPAREN | RSHIFT | SUP | SUPEQUAL | TIMES | USHIFT | XOR ->
            _menhir_reduce148 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState695 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            _menhir_run690 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_classModifier : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState597 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 188 "parser.mly"
                                ()
# 16380 "parser.ml"
         in
        _menhir_goto_classModifiers _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState614 | MenhirState335 | MenhirState607 | MenhirState602 | MenhirState371 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 187 "parser.mly"
                 ()
# 16390 "parser.ml"
         in
        _menhir_goto_classModifiers _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState695 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState690 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState683 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState679 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState678 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState674 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState672 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState671 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState667 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState665 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState662 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState661 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState659 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState654 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState652 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState649 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState648 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState646 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState635 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState622 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState619 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState618 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState614 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState607 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState605 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState602 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState597 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState595 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState586 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState585 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState577 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState573 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState566 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState563 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState560 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState559 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState556 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState553 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState552 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState551 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState548 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState545 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState544 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState541 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState529 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState520 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState516 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState513 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState512 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState509 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState506 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState505 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState504 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState499 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState497 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState495 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState493 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState491 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState482 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState477 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState476 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState475 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState473 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState471 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState470 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState468 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState465 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState464 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState461 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState457 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState434 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState412 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState409 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState405 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState401 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState399 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState398 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState397 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState395 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState394 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState393 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState392 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState391 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState389 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState387 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState385 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState383 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState381 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState379 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState373 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState371 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState369 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState366 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState363 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState361 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState357 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState353 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState350 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState347 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState346 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState345 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
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
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState339 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState337 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState335 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState333 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState322 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState314 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState306 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState304 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState302 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState295 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState292 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState290 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState289 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState287 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState283 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState282 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState280 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState273 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState270 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState254 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState246 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState242 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState240 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState239 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState237 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState235 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState233 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState232 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState230 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState227 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState225 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState223 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState222 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState220 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState218 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState217 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState215 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState213 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState210 ->
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
    | MenhirState201 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState180 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState173 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState168 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState166 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState164 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState151 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 183 "parser.mly"
   ()
# 17229 "parser.ml"
     in
    _menhir_goto_classModifiers_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 198 "parser.mly"
            ()
# 17241 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 194 "parser.mly"
          ()
# 17253 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 192 "parser.mly"
          ()
# 17265 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 195 "parser.mly"
             ()
# 17277 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 196 "parser.mly"
           ()
# 17289 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run584 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 193 "parser.mly"
            ()
# 17320 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

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

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 48 "parser.mly"
      (unit)
# 17339 "parser.ml"
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
    | ABSTRACT ->
        _menhir_run584 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | AROBAS ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FINAL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRIVATE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PROTECTED ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PUBLIC ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | STATIC ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | STRICTFP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CLASS ->
        _menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 1142 "parser.mly"
  

# 17379 "parser.ml"

# 219 "/usr/share/menhir/standard.mly"
  


# 17385 "parser.ml"
