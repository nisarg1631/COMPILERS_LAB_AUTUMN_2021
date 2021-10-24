parser.out: lex.yy.o y.tab.o ass5_19CS30031_19CS10070_translator.o
	g++ lex.yy.o y.tab.o ass5_19CS30031_19CS10070_translator.o -lfl -o parser.out

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
	rm parser.out ass5_19CS30031_19CS10070_translator.o lex.yy.* y.tab.* y.output

test: parser.out
	@echo "Running test 1 (Arithmetic, shift, and bit expressions)"
	./parser.out < ass5_19CS30031_19CS10070_test1.c > ass5_19CS30031_19CS10070_quads1.out
	@echo "Test 1 complete\n"

	@echo "Running test 2 (Unary expressions and operators)"
	./parser.out < ass5_19CS30031_19CS10070_test2.c > ass5_19CS30031_19CS10070_quads2.out
	@echo "Test 2 complete\n"

	@echo "Running test 3 (Relational and boolean operators with if-else blocks)"
	./parser.out < ass5_19CS30031_19CS10070_test3.c > ass5_19CS30031_19CS10070_quads3.out
	@echo "Test 3 complete\n"

	@echo "Running test 4 (Arrays and pointers)"
	./parser.out < ass5_19CS30031_19CS10070_test4.c > ass5_19CS30031_19CS10070_quads4.out
	@echo "Test 4 complete\n"

	@echo "Running test 5 (Declarations and assignments)"
	./parser.out < ass5_19CS30031_19CS10070_test5.c > ass5_19CS30031_19CS10070_quads5.out
	@echo "Test 5 complete\n"

	@echo "Running test 6 (Loops)"
	./parser.out < ass5_19CS30031_19CS10070_test6.c > ass5_19CS30031_19CS10070_quads6.out
	@echo "Test 6 complete\n"

	@echo "Running test 7 (Function calls)"
	./parser.out < ass5_19CS30031_19CS10070_test7.c > ass5_19CS30031_19CS10070_quads7.out
	@echo "Test 7 complete\n"

	@echo "Running test 8 (General file)"
	./parser.out < ass5_19CS30031_19CS10070_test8.c > ass5_19CS30031_19CS10070_quads8.out
	@echo "Test 8 complete\n"
	