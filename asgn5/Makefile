parser: lex.yy.o y.tab.o ass5_19CS30031_19CS10070_translator.o
	g++ lex.yy.o y.tab.o ass5_19CS30031_19CS10070_translator.o -lfl -o parser

ass5_19CS30031_19CS10070_translator.o: ass5_19CS30031_19CS10070_translator.cxx ass5_19CS30031_19CS10070_translator.h
	g++ -c ass5_19CS30031_19CS10070_translator.cxx

lex.yy.o: lex.yy.c
	g++ -c lex.yy.c

y.tab.o: y.tab.c
	g++ -c y.tab.c

lex.yy.c: ass5_19CS30031_19CS10070.l y.tab.h ass5_19CS30031_19CS10070_translator.h
	flex ass5_19CS30031_19CS10070.l

y.tab.c y.tab.h: ass5_19CS30031_19CS10070.y
	bison -dty --report=all ass5_19CS30031_19CS10070.y

clean:
	rm parser ass5_19CS30031_19CS10070_translator.o lex.yy.* y.tab.* y.output
