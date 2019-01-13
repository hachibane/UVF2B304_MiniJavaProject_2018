
(* The type of tokens. *)

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
  | STRINGLIT of (string)
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
  | INTEGERLIT of (int)
  | INT
  | INSTANCEOF
  | INFEQUAL
  | INF
  | INCR
  | IMPORT
  | IMPLEMENTS
  | IF
  | IDENT of (string)
  | FOR
  | FLOATLIT of (float)
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
  | COMMENT of (string)
  | COMMA
  | COLON
  | CLASS
  | CHAR
  | CATCH
  | CASE
  | BYTE
  | BREAK
  | BOOLEANLIT of (bool)
  | BOOLEAN
  | ASSERT
  | AROBAS
  | ANDEQUAL
  | AND
  | ABSTRACT

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)
