# Makefile


all: libtest.a sigsegv

sigsegv: sigsegv.c
	gcc -rdynamic $< -L . -ltest -ldl -g -o $@

libtest.a:
	gcc -rdynamic lib.c -ldl -c -o lib.o
	ar rcsv libtest.a lib.o

clean:
	rm -rf sigsegv
	rm -rf *.a
	rm -rf *.o

.PHONY: all
