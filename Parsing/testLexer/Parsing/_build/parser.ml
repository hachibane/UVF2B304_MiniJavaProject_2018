
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | ZERO
    | XOREQUAL
    | XOR
    | WHILE
    | VOLATILE
    | VOID
    | USHIFTEQUAL
    | USHIFT
    | TRY
    | TRUE
    | TRANSIENT
    | TIMESEQUAL
    | TIMES
    | TILDE
    | THROWS
    | THROW
    | THIS
    | SYNCHRONIZED
    | SWITCH
    | SUPOREQUAL
    | SUPER
    | SUPEQUAL
    | SUP
    | STRUCT
    | STRICTFP
    | STATIC
    | SHORT
    | SEMICOLON
    | RSHIFTEQUAL
    | RSHIFT
    | RPAREN
    | RETURN
    | REAL of (
# 42 "parser.mly"
       (float)
# 43 "parser.ml"
  )
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
    | INTEGER of (
# 41 "parser.mly"
       (int)
# 75 "parser.ml"
  )
    | INT
    | INSTANCEOF
    | INFOREQUAL
    | INFEQUAL
    | INF
    | INCR
    | IMPORT
    | IMPLEMENTS
    | IMMPLEMENTS
    | IF
    | IDENT of (
# 37 "parser.mly"
       (string)
# 90 "parser.ml"
  )
    | GOTO
    | FOR
    | FLOAT
    | FINALLY
    | FINAL
    | FALSE
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
    | CONST
    | CONDOR
    | CONDAND
    | COND
    | COMMENT of (
# 40 "parser.mly"
       (string)
# 118 "parser.ml"
  )
    | COMMA
    | COLON
    | CLASS
    | CHAR
    | CATCH
    | CASE
    | BYTE
    | BREAK
    | BOOLEAN
    | ASSERT
    | ANNOT
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
  | MenhirState87
  | MenhirState83
  | MenhirState76
  | MenhirState68
  | MenhirState65
  | MenhirState63
  | MenhirState53
  | MenhirState50
  | MenhirState42
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState22
  | MenhirState13
  | MenhirState0

let rec _menhir_goto_classBodyDeclarations : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FINAL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | PRIVATE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | PROTECTED ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | PUBLIC ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | STATIC ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | STRICTFP ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | TRANSIENT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | VOLATILE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INT | LONG | SHORT ->
        _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 180 "parser.mly"
                         ()
# 197 "parser.ml"
         in
        _menhir_goto_classBodyDeclarations_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_goto_actualTypeArgumentList : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 109 "parser.mly"
                          ()
# 213 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 106 "parser.mly"
                 ()
# 221 "parser.ml"
     in
    _menhir_goto_typeArguments_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : (unit) = 
# 102 "parser.mly"
                       ()
# 241 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 85 "parser.mly"
             ()
# 249 "parser.ml"
         in
        _menhir_goto_referenceType _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_variableDeclarators : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
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
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _4 = () in
        let _v : (unit) = 
# 201 "parser.mly"
                                                          ()
# 286 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 193 "parser.mly"
                    ()
# 294 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 187 "parser.mly"
                          ()
# 302 "parser.ml"
         in
        (match _menhir_s with
        | MenhirState83 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_2 : (unit)) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 184 "parser.mly"
                                              ()
# 313 "parser.ml"
             in
            _menhir_goto_classBodyDeclarations _menhir_env _menhir_stack _menhir_s _v
        | MenhirState13 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 183 "parser.mly"
                        ()
# 323 "parser.ml"
             in
            _menhir_goto_classBodyDeclarations _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_typeArguments_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (unit)) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 92 "parser.mly"
                                       ()
# 344 "parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 88 "parser.mly"
             ()
# 352 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | POINT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
    | COMMA | COND | IDENT _ | LBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 83 "parser.mly"
                        ()
# 376 "parser.ml"
         in
        _menhir_goto_referenceType _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | INT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LONG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | SHORT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | INT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LONG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | SHORT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_goto_actualTypeArgument : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState34 ->
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
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | BYTE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | CHAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | DOUBLE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | EXTENDS ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | FLOAT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | INT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LONG ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | SHORT ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | SUPER ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
        | COND | IDENT _ | LBRACE | POINT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 113 "parser.mly"
                                               ()
# 490 "parser.ml"
             in
            _menhir_goto_actualTypeArgumentList _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 113 "parser.mly"
                                               ()
# 507 "parser.ml"
         in
        _menhir_goto_actualTypeArgumentList _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce60 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) = 
# 59 "parser.mly"
                 ()
# 519 "parser.ml"
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
# 120 "parser.mly"
                       ()
# 539 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 117 "parser.mly"
            ()
# 547 "parser.ml"
         in
        _menhir_goto_actualTypeArgument _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_numericType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 63 "parser.mly"
               ()
# 565 "parser.ml"
     in
    _menhir_goto_primitiveType _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ttype : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState63 | MenhirState34 | MenhirState53 | MenhirState35 ->
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
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
    | _ ->
        _menhir_fail ()

and _menhir_goto_variableDeclaratorId : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
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
        | RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : (unit) = 
# 231 "parser.mly"
                                      ()
# 622 "parser.ml"
             in
            _menhir_goto_variableDeclaratorId _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | COMMA | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 226 "parser.mly"
                        ()
# 637 "parser.ml"
         in
        (match _menhir_s with
        | MenhirState68 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (unit)) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) = 
# 223 "parser.mly"
                                                ()
# 649 "parser.ml"
             in
            _menhir_goto_variableDeclarators _menhir_env _menhir_stack _menhir_s _v
        | MenhirState65 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 222 "parser.mly"
                      ()
# 659 "parser.ml"
             in
            _menhir_goto_variableDeclarators _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | INT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LONG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SHORT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SUPER ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | COMMA | COND | LBRACE | POINT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState34 in
        let _v : (unit) = 
# 105 "parser.mly"
   ()
# 706 "parser.ml"
         in
        _menhir_goto_typeArguments_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

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
# 124 "parser.mly"
                       ()
# 730 "parser.ml"
             in
            _menhir_goto_wildcardBounds _menhir_env _menhir_stack _menhir_s _v
        | LBRACE ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COND ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) = 
# 123 "parser.mly"
                         ()
# 753 "parser.ml"
             in
            _menhir_goto_wildcardBounds _menhir_env _menhir_stack _menhir_s _v
        | LBRACE ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | COND | IDENT _ | POINT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 116 "parser.mly"
                 ()
# 777 "parser.ml"
             in
            _menhir_goto_actualTypeArgument _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typeName : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 95 "parser.mly"
            ()
# 800 "parser.ml"
     in
    _menhir_goto_typeDeclSpecifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_floatingPointType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 68 "parser.mly"
                     ()
# 812 "parser.ml"
     in
    _menhir_goto_numericType _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_integralType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 67 "parser.mly"
                ()
# 824 "parser.ml"
     in
    _menhir_goto_numericType _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_primitiveType : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (unit)) = _v in
    let _v : (unit) = 
# 58 "parser.mly"
                 ()
# 836 "parser.ml"
     in
    _menhir_goto_ttype _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 72 "parser.mly"
         ()
# 848 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 74 "parser.mly"
        ()
# 860 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 73 "parser.mly"
       ()
# 872 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "parser.mly"
       (string)
# 879 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 887 "parser.ml"
    )) = _v in
    let _v : (unit) = 
# 53 "parser.mly"
         ()
# 892 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 240 "parser.mly"
                                       ()
# 904 "parser.ml"
         in
        _menhir_goto_typeName _menhir_env _menhir_stack _menhir_s _v
    | MenhirState22 | MenhirState63 | MenhirState34 | MenhirState53 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA | COND | IDENT _ | LBRACE | POINT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 99 "parser.mly"
               ()
# 918 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) = 
# 84 "parser.mly"
                ()
# 926 "parser.ml"
             in
            _menhir_goto_referenceType _menhir_env _menhir_stack _menhir_s _v
        | BOOLEAN | BYTE | CHAR | DOUBLE | EXTENDS | FLOAT | INT | LONG | SHORT | SUPER ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) = 
# 239 "parser.mly"
               ()
# 935 "parser.ml"
             in
            _menhir_goto_typeName _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 96 "parser.mly"
                                          ()
# 952 "parser.ml"
         in
        _menhir_goto_typeDeclSpecifier _menhir_env _menhir_stack _menhir_s _v
    | MenhirState65 | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 230 "parser.mly"
              ()
# 962 "parser.ml"
         in
        _menhir_goto_variableDeclaratorId _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 78 "parser.mly"
         ()
# 976 "parser.ml"
     in
    _menhir_goto_floatingPointType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 79 "parser.mly"
          ()
# 988 "parser.ml"
     in
    _menhir_goto_floatingPointType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 75 "parser.mly"
        ()
# 1000 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 71 "parser.mly"
        ()
# 1012 "parser.ml"
     in
    _menhir_goto_integralType _menhir_env _menhir_stack _menhir_s _v

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 64 "parser.mly"
           ()
# 1024 "parser.ml"
     in
    _menhir_goto_primitiveType _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_fieldModifiers : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FINAL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | PRIVATE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | PROTECTED ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | PUBLIC ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | STATIC ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | STRICTFP ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | TRANSIENT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | VOLATILE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INT | LONG | SHORT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 205 "parser.mly"
                   ()
# 1057 "parser.ml"
         in
        _menhir_goto_fieldModifiers_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_goto_fieldModifiers_opt : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLEAN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | BYTE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | CHAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | DOUBLE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | FLOAT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | INT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LONG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | SHORT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_goto_fieldModifier : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 209 "parser.mly"
                                ()
# 1106 "parser.ml"
         in
        _menhir_goto_fieldModifiers _menhir_env _menhir_stack _menhir_s _v
    | MenhirState83 | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 208 "parser.mly"
                 ()
# 1116 "parser.ml"
         in
        _menhir_goto_fieldModifiers _menhir_env _menhir_stack _menhir_s _v
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
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | FINAL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | PRIVATE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | PROTECTED ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | PUBLIC ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | STATIC ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | STRICTFP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | CLASS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 155 "parser.mly"
                  ()
# 1154 "parser.ml"
         in
        _menhir_goto_classModifiers_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

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
        let (_menhir_stack, _, (_2 : (unit))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 176 "parser.mly"
                                           ( )
# 1179 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_4 : (unit)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), (_3 : (
# 37 "parser.mly"
       (string)
# 1187 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 137 "parser.mly"
                                            ()
# 1193 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 133 "parser.mly"
                          ()
# 1201 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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
# 46 "parser.mly"
      (unit)
# 1216 "parser.ml"
            ) = 
# 50 "parser.mly"
                        ()
# 1220 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 46 "parser.mly"
      (unit)
# 1227 "parser.ml"
            )) = _v in
            Obj.magic _1
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

and _menhir_reduce38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 204 "parser.mly"
    ()
# 1248 "parser.ml"
     in
    _menhir_goto_fieldModifiers_opt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 219 "parser.mly"
              ()
# 1260 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 218 "parser.mly"
              ()
# 1272 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 217 "parser.mly"
             ()
# 1284 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 213 "parser.mly"
            ()
# 1296 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 212 "parser.mly"
              ()
# 1308 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 214 "parser.mly"
              ()
# 1320 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 215 "parser.mly"
             ()
# 1332 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 216 "parser.mly"
            ()
# 1344 "parser.ml"
     in
    _menhir_goto_fieldModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_classModifier : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) = 
# 159 "parser.mly"
                                ()
# 1359 "parser.ml"
         in
        _menhir_goto_classModifiers _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (unit)) = _v in
        let _v : (unit) = 
# 158 "parser.mly"
                 ()
# 1369 "parser.ml"
         in
        _menhir_goto_classModifiers _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
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
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

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
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FINAL ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | PRIVATE ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | PROTECTED ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | PUBLIC ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | STATIC ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | STRICTFP ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | TRANSIENT ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | VOLATILE ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | BOOLEAN | BYTE | CHAR | DOUBLE | FLOAT | IDENT _ | INT | LONG | SHORT ->
                    _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | RBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState13 in
                    let _v : (unit) = 
# 179 "parser.mly"
   ()
# 1484 "parser.ml"
                     in
                    _menhir_goto_classBodyDeclarations_opt _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
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

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 169 "parser.mly"
            ()
# 1518 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 165 "parser.mly"
          ()
# 1530 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 163 "parser.mly"
          ()
# 1542 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 166 "parser.mly"
             ()
# 1554 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 167 "parser.mly"
           ()
# 1566 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 168 "parser.mly"
         ()
# 1578 "parser.ml"
     in
    _menhir_goto_classModifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 164 "parser.mly"
            ()
# 1590 "parser.ml"
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
# 46 "parser.mly"
      (unit)
# 1609 "parser.ml"
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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState0 in
        let _v : (unit) = 
# 154 "parser.mly"
   ()
# 1643 "parser.ml"
         in
        _menhir_goto_classModifiers_opt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 259 "parser.mly"
  

# 1654 "parser.ml"

# 219 "/usr/share/menhir/standard.mly"
  


# 1660 "parser.ml"
