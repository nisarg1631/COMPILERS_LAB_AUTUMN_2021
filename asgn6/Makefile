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
	rm libass2_19CS30031.a ass2_19CS30031.o parser.out ass6_19CS30031_19CS10070_translator.o ass6_19CS30031_19CS10070_target_translator.o lex.yy.* y.tab.* y.output test*

test: parser.out libass2_19CS30031.a
	@echo "Generating assembly files\n"
	./parser.out ass6_19CS30031_19CS10070_test1 > ass6_19CS30031_19CS10070_quads1.out
	./parser.out ass6_19CS30031_19CS10070_test2 > ass6_19CS30031_19CS10070_quads2.out
	./parser.out ass6_19CS30031_19CS10070_test3 > ass6_19CS30031_19CS10070_quads3.out
	./parser.out ass6_19CS30031_19CS10070_test4 > ass6_19CS30031_19CS10070_quads4.out
	./parser.out ass6_19CS30031_19CS10070_test5 > ass6_19CS30031_19CS10070_quads5.out
	./parser.out ass6_19CS30031_19CS10070_test6 > ass6_19CS30031_19CS10070_quads6.out
	./parser.out ass6_19CS30031_19CS10070_test7 > ass6_19CS30031_19CS10070_quads7.out
	@echo "Compiling assembly files\n"
	gcc ass6_19CS30031_19CS10070_test1.s -L. -lass2_19CS30031 -no-pie -o test1
	gcc ass6_19CS30031_19CS10070_test2.s -L. -lass2_19CS30031 -no-pie -o test2
	gcc ass6_19CS30031_19CS10070_test3.s -L. -lass2_19CS30031 -no-pie -o test3
	gcc ass6_19CS30031_19CS10070_test4.s -L. -lass2_19CS30031 -no-pie -o test4
	gcc ass6_19CS30031_19CS10070_test5.s -L. -lass2_19CS30031 -no-pie -o test5
	gcc ass6_19CS30031_19CS10070_test6.s -L. -lass2_19CS30031 -no-pie -o test6
	gcc ass6_19CS30031_19CS10070_test7.s -L. -lass2_19CS30031 -no-pie -o test7
	@echo "Binaries generated. Run using ./test<num>\n\n"
	@echo "Running test1:\n"
	@./test1
	@echo "Running test2:\n"
	@./test2
	@echo "Running test3:\n"
	@./test3
	@echo "Running test4:\n"
	@./test4
	@echo "Running test5:\n"
	@./test5
	@echo "Running test6:\n"
	@./test6
	@echo "Running test7:\n"
	@./test7
