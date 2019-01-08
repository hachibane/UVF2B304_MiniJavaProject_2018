
(* The type of tokens. *)

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
  | REAL of (float)
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
  | INTEGER of (int)
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
  | IDENT of (string)
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
  | COMMENT of (string)
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

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)
