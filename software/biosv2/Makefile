LM32_CC=lm32-elf-gcc
LM32_LD=lm32-elf-ld
LM32_OBJCOPY=lm32-elf-objcopy
LM32_OBJDUMP=lm32-elf-objdump

CFLAGS=-MMD -O0 -Wall -g -s -fomit-frame-pointer -mbarrel-shift-enabled   -mmultiply-enabled -mdivide-enabled -msign-extend-enabled -fno-builtin
LDFLAGS=-nostdlib -nodefaultlibs -Tlinker.ld 
SEGMENTS = -j .text -j .rodata -j .data

all: image.bin test

%.o:%.S
	$(LM32_CC) -c $<

test: crt0.o test.o uart.o d_stdio.o
	$(LM32_LD) $(LDFLAGS) -o $@ $^ 
	
image: crt0.o main.o uart.o string.o terminal.o flash.o d_stdio.o
	$(LM32_LD) $(LDFLAGS) -Map image.map -N -o $@ $^ 

image.lst: image
	$(LM32_OBJDUMP) -h -S $< > $@

image.bin: image
	$(LM32_OBJCOPY) $(SEGMENTS) -O binary image image.bin

test.lst: test
	$(LM32_OBJDUMP) -h -S $< > $@

test.bin: test
	$(LM32_OBJCOPY) $(SEGMENTS) -O binary test test.bin


%.o:%.c
	$(LM32_CC) $(CFLAGS) -c $< 
	

clean:
	rm -f image image.bin image.map test test.bin test.map *.o *.d

DEPS := $(wildcard *.d)
ifneq ($(DEPS),)
include $(DEPS)
endif

