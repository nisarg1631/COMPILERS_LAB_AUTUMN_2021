parser.out: lex.yy.o y.tab.o ass6_19CS30031_19CS10070_translator.o ass6_19CS30031_19CS10070_target_translator.o
	g++ lex.yy.o y.tab.o ass6_19CS30031_19CS10070_translator.o ass6_19CS30031_19CS10070_target_translator.o -lfl -o parser.out

ass6_19CS30031_19CS10070_target_translator.o: ass6_19CS30031_19CS10070_target_translator.cxx ass6_19CS30031_19CS10070_translator.h
	g++ -c ass6_19CS30031_19CS10070_target_translator.cxx

ass6_19CS30031_19CS10070_translator.o: ass6_19CS30031_19CS10070_translator.cxx ass6_19CS30031_19CS10070_translator.h
	g++ -c ass6_19CS30031_19CS10070_translator.cxx

lex.yy.o: lex.yy.c
	g++ -c lex.yy.c

y.tab.o: y.tab.c
	g++ -c y.tab.c

lex.yy.c: ass6_19CS30031_19CS10070.l y.tab.h ass6_19CS30031_19CS10070_translator.h
	flex ass6_19CS30031_19CS10070.l

y.tab.c y.tab.h: ass6_19CS30031_19CS10070.y
	bison -dty --report=all ass6_19CS30031_19CS10070.y

libass2_19CS30031.a: ass2_19CS30031.o
	ar -rcs libass2_19CS30031.a ass2_19CS30031.o

ass2_19CS30031.o: ass2_19CS30031.c myl.h
	gcc -c ass2_19CS30031.c

clean:
	rm libass2_19CS30031.a ass2_19CS30031.o parser.out ass6_19CS30031_19CS10070_translator.o ass6_19CS30031_19CS10070_target_translator.o lex.yy.* y.tab.* y.output

test: parser.out libass2_19CS30031.a
	@echo "Running tests"
	./parser.out ass6_19CS30031_19CS10070_test1 > ass6_19CS30031_19CS10070_quads1.out
	./parser.out ass6_19CS30031_19CS10070_test2 > ass6_19CS30031_19CS10070_quads2.out

	gcc ass6_19CS30031_19CS10070_test1.s -L. -lass2_19CS30031 -no-pie -o test1
	@echo "Tests complete\n"
