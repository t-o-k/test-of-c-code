CC = gcc
CFLAGS = -I. -Wall -ftest-coverage -fprofile-arcs 
DEPS = minimallib.h
OBJ = minimallib.o test-minimallib.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

test-minimallib: $(OBJ)
	gcc -o $@ $^ $(CFLAGS) -lm -lncurses -Os

clean :
	rm  *.o  *.asm  *.lst *.sym *.rel *.s *.gc* -f *.info

