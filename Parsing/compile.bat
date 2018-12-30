IF EXIST main.native attrib main.native -R -S -H
del /f main.native
ocamlbuild -use-menhir -quiet main.native
