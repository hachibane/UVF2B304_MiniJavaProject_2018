# UVF2B304_MiniJavaProject_2018
C'est un projet qui consiste à construire un compilateur de Java en O'caml. Le projet regroupe les membres suivants : Hamza Achibane, Hamza Sahri, Khaled Bousrih, Khalid Majdoub et Robin You. 

Short description :

The minijavac compiler.

A compilation project for Third year students of Telecom Bretagne.

'ocamlbuild Main.byte' (or native) to build the compiler. The main file
is Main/Main.ml, it should not be modified. It opens the given file,
creates a lexing buffer, initializes the location and call the compile
function of the module Main/compile.ml. It is this function that you
should modify to call your parser.

'ocamlbuild Main.byte -- <filename>' (or native) to build and then execute
the compiler on the file given. By default, the program searches for
file with the extension .java and append it to the given filename if
it does not end with it.

If you want to reuse an existing ocaml library. Start by installing it
with opam. For example, to use colored terminal output you
use 'opam install ANSITerminal'.
Then you must inform ocamlbuild to use the ocamlfind tool :
'ocamlbuild -use-ocamlfind Main.byte -- tests/UnFichierDeTest.java'
et vous devez ajouter au fichier _tags la bibliothèque en question par exemple :
true: package(ANSITerminal)

# HOW TO USE IT ?


to test the parser, go to the Parsing/test
delete the main.native file
run the follwing command : ocamlbuild -use-menhir -quiet main.native
then to try the parser on a .java file run : ./main.native file.java

to generate the AST : menhir --dump parser.mly

to simply test the lexer : 
ocamllex lexer.mll
utop
use "lexer.ml"
compile "file.java"