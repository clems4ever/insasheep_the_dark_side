LIBDIR=../../../cryptopp
INC=-I$(LIBDIR)/cryptopp
LIBS=-L$(LIBDIR)/cryptopp -lcryptopp

all: crypto

crypto: crypto.o
	g++ $^ -o $@ -lcryptopp
crypto.o: crypto.cpp
	g++ -g3 -O0 -Wall -Wextra -Wno-unused -c $^
