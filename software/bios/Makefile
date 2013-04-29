LM32_CC=lm32-elf-gcc
LM32_LD=lm32-elf-ld
LM32_OBJCOPY=lm32-elf-objcopy
LM32_OBJDUMP=lm32-elf-objdump
LIBDIR=../../include
INC=-I$(LIBDIR)/d_stdio -I$(LIBDIR)/uart -I$(LIBDIR)/string
LIBS=-L$(LIBDIR)/string -L$(LIBDIR)/d_stdio -L$(LIBDIR)/uart --start-group -luart -ld_stdio -lstring --end-group

CFLAGS=-MMD -O0 -Wall -g -s -fomit-frame-pointer -mbarrel-shift-enabled   -mmultiply-enabled -mdivide-enabled -msign-extend-enabled -fno-builtin
LDFLAGS=-nostdlib -nodefaultlibs -Tlinker.ld 
SEGMENTS = -j .text -j .rodata -j .data

all: libs image.bin 

%.o:%.S
	$(LM32_CC) -c $<
	
image: crt0.o main.o terminal.o flash.o
	$(LM32_LD) $(LDFLAGS)  -Map image.map -N -o $@ $^ $(LIBS) 

image.lst: image
	$(LM32_OBJDUMP) -h -S $< > $@

image.bin: image
	$(LM32_OBJCOPY) $(SEGMENTS) -O binary image image.bin

%.o:%.c
	$(LM32_CC) $(CFLAGS) $(INC) -c $< 
	
libs:
	make -C $(LIBDIR)/d_stdio/
	make -C $(LIBDIR)/string/
	make -C $(LIBDIR)/uart/


	
clean:
	rm -f image image.bin image.map *.o *.d
	
distclean:
	make -C $(LIBDIR)/d_stdio/ clean
	make -C $(LIBDIR)/string/ clean
	make -C $(LIBDIR)/uart/ clean
	
DEPS := $(wildcard *.d)
ifneq ($(DEPS),)
include $(DEPS)
endif

