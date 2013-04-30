LM32_CC=lm32-elf-gcc
AR=lm32-elf-ar
RANLIB=lm32-elf-ranlib
SEGMENTS=-j .text -j .rodata -j .data
CFLAGS=-MMD -O0 -Wall -g -s -fomit-frame-pointer -mbarrel-shift-enabled   -mmultiply-enabled -mdivide-enabled -msign-extend-enabled -fno-builtin

all: libstring.a

string.o:string.c
	$(LM32_CC) $(CFLAGS) -c $< 
	
libstring.a: string.o
	$(AR) rc libstring.a string.o
	$(RANLIB) libstring.a


	
clean:
	rm -f libstring.a *.o *.d
	
