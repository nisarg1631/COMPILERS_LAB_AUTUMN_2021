ass3_19CS30031_19CS10070_output.txt: analyzer ass3_19CS30031_19CS10070_test.c
	./analyzer < ass3_19CS30031_19CS10070_test.c > ass3_19CS30031_19CS10070_output.txt

analyzer: lex.yy.c
	gcc lex.yy.c -lfl -o analyzer

lex.yy.c: ass3_19CS30031_19CS10070.l
	flex ass3_19CS30031_19CS10070.l ass3_19CS30031_19CS10070.c

clean:
	rm analyzer lex.yy.c ass3_19CS30031_19CS10070_output.txt
