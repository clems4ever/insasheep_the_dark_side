LM32_PP=lm32-elf-g++
AR=lm32-elf-ar
RANLIB=lm32-elf-ranlib
SEGMENTS=-j .text -j .rodata -j .data
CFLAGS=-MMD -O0 -Wall -g -s -fomit-frame-pointer -mbarrel-shift-enabled   -mmultiply-enabled -mdivide-enabled -msign-extend-enabled -fno-builtin
INC=-I../string

all: libString.a

String.o:String.cpp
	$(LM32_PP) $(CFLAGS) $(INC) -c $< 
	
libString.a: String.o
	$(AR) rc libString.a String.o
	$(RANLIB) libString.a 
	
#test: test.o 
#	$(LM32_PP) -o $@ $^ $(LIBS)

#test.o:test.cpp
#	$(LM32_PP) $(CFLAGS) -c $< $(LIBS)
clean:
	rm -f libString.a *.o *.d test
	
