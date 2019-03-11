
(* The type of tokens. *)

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
  | STRING of (string)
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
  | INT_LIT of (string)
  | INTERFACE
  | INT
  | INSTANCEOF
  | IMPORT
  | IMPLEMENTS
  | IF
  | IDENTIFIER of (string)
  | FOR
  | FLOAT_LIT of (string)
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
  | CHAR_LIT of (char option)
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

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val compilationUnit: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (AST.t)
