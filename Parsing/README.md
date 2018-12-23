
to test :
either compile in terminal with the command :
 ocamlbuild -use-menhir -quiet main.native
or execute the script compileScript.

then to test parser on test_file
./main.native test_file

