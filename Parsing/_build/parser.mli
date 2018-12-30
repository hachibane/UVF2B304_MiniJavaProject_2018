
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
  | SUPOREQUAL
  | SUPER
  | SUPEQUAL
  | SUP
  | STRUCT
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
  | CONST
  | CONDOR
  | CONDAND
  | COND
  | COMMENT of (string)
  | COMMA
  | COLON
  | CLASS
  | CHARLIT of (char)
  | CHAR
  | CATCH
  | CASE
  | BYTE
  | BREAK
  | BOOLEANLIT of (bool)
  | BOOLEAN
  | ASSERT
  | AROBAS
  | ANNOT
  | ANDEQUAL
  | AND
  | ABSTRACT

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ( unit)
