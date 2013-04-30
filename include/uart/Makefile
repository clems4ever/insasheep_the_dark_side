LM32_CC=lm32-elf-gcc
AR=lm32-elf-ar
RANLIB=lm32-elf-ranlib
SEGMENTS=-j .text -j .rodata -j .data
CFLAGS=-MMD -O0 -Wall -g -s -fomit-frame-pointer -mbarrel-shift-enabled   -mmultiply-enabled -mdivide-enabled -msign-extend-enabled -fno-builtin

all: libuart.a

uart.o:uart.c
	$(LM32_CC) $(CFLAGS) -c $< 
	
libuart.a: uart.o
	$(AR) rc libuart.a uart.o
	$(RANLIB) libuart.a


	
clean:
	rm -f libuart.a *.o *.d
	
