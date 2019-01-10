# Makefile
build:
	ocamlbuild -use-ocamlfind hello.d.byte
clean:
	ocamlbuild -clean
.PHONY: build clean