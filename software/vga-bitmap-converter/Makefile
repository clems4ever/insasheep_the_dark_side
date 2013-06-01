EDITOR=emacs
EXEC=test
SRC= $(wildcard *.cpp)
OBJ= $(SRC:.cpp=.o)
CFLAGS = -W -Wall
LDFLAGS= -nostdlib
CC=g++

all: $(EXEC)

test_nodebug: test.o bitmap.o
	@$(CC) $(LDFLAGS) $^ -o $@ 

test: test.o bitmap.o
	@$(CC) $^ -o $@ 

bitmap.o: bitmap.cpp
	@$(CC) -c $< $(CFLAGS) -o $@

test.o: test.cpp bitmap.h
	@$(CC) -c $< $(CFLAGS) -o $@

.PHONY: clean mrproper

clean:
	@rm -rf *.o *~

mrproper: clean
	@rm -rf $(EXEC)

tar:
	tar cvf ../ptut-bitmap.tar ../ptut-bitmap
	gzip ../ptut-bitmap.tar

open:
	@$(EDITOR) *.cpp *.h & 
