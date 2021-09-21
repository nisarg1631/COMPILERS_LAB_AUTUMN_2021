ass2: main.o libass2_19CS30031.a
	cc main.o -L. -lass2_19CS30031 -o ass2

main.o: main.c myl.h
	cc -Wall -c main.c

libass2_19CS30031.a: ass2_19CS30031.o
	ar -rcs libass2_19CS30031.a ass2_19CS30031.o

ass2_19CS30031.o: ass2_19CS30031.c myl.h
	cc -Wall -c ass2_19CS30031.c

clean:
	rm ass2 main.o libass2_19CS30031.a ass2_19CS30031.o
