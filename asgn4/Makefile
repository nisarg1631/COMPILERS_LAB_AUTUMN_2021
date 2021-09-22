ass4_19CS30031_19CS10070_output.txt: parser ass4_19CS30031_19CS10070_test.c
	./parser < ass4_19CS30031_19CS10070_test.c > ass4_19CS30031_19CS10070_output.txt

parser: lex.yy.o y.tab.o ass4_19CS30031_19CS10070.o
	gcc lex.yy.o y.tab.o ass4_19CS30031_19CS10070.o -lfl -o parser

ass4_19CS30031_19CS10070.o: ass4_19CS30031_19CS10070.c
	gcc -c ass4_19CS30031_19CS10070.c

lex.yy.o: lex.yy.c
	gcc -c lex.yy.c

y.tab.o: y.tab.c
	gcc -c y.tab.c

lex.yy.c: ass4_19CS30031_19CS10070.l y.tab.h
	flex ass4_19CS30031_19CS10070.l

y.tab.c y.tab.h: ass4_19CS30031_19CS10070.y
	bison -dty --report=all ass4_19CS30031_19CS10070.y

clean:
	rm parser ass4_19CS30031_19CS10070.o lex.yy.* y.tab.* 
