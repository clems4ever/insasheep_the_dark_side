LM32_CC=lm32-elf-gcc
AR=lm32-elf-ar
RANLIB=lm32-elf-ranlib
SEGMENTS=-j .text -j .rodata -j .data
CFLAGS=-MMD -O0 -Wall -g -s -fomit-frame-pointer -mbarrel-shift-enabled   -mmultiply-enabled -mdivide-enabled -msign-extend-enabled -fno-builtin
INC=-I../../include/uart

all: libd_stdio.a

d_stdio.o:d_stdio.c
	$(LM32_CC) $(CFLAGS) $(INC) -c $< 
	
libd_stdio.a: d_stdio.o
	$(AR) rc libd_stdio.a d_stdio.o
	$(RANLIB) libd_stdio.a


	
clean:
	rm -f libd_stdio.a *.o *.d
	
