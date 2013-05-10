LM32_PP=lm32-elf-g++
LM32_CC=lm32-elf-gcc
LM32_LD=lm32-elf-ld
LM32_OBJCOPY=lm32-elf-objcopy
LM32_OBJDUMP=lm32-elf-objdump
LIBDIR=../include
CRYTPOLIBDIR=../../../cryptopp
INC=-I$(CRYTPOLIBDIR)/cryptopp
LIBS=-L$(CRYTPOLIBDIR)/cryptopp -lcryptopp

CFLAGS=-MMD -O0 -Wall -g -s -fomit-frame-pointer -mbarrel-shift-enabled -mmultiply-enabled -mdivide-enabled -msign-extend-enabled -fno-builtin -g3 -Wextra -Wno-unused
LDFLAGS=-nostdlib -nodefaultlibs -Tlinker.ld 
SEGMENTS = -j .text -j .rodata -j .data

all: libs crypto.bin 

%.o:%.S
	$(LM32_PP) -c $<
	
crypto: crt0.o crypto.o
	$(LM32_LD) $(LDFLAGS)  -Map crypto.map -N -o $@ $^ $(LIBS) 

crypto.lst: crypto
	$(LM32_OBJDUMP) -h -S $< > $@

crypto.bin: crypto
	$(LM32_OBJCOPY) $(SEGMENTS) -O binary crypto crypto.bin

%.o:%.c
	$(LM32_PP) $(CFLAGS) $(INC) -c $< 
	
libs:
	make -C $(LIBDIR)/d_stdio/
	make -C $(LIBDIR)/string/
	make -C $(LIBDIR)/uart/


	
clean:
	rm -f crypto crypto.bin crypto.map *.o *.d
	
distclean:
	make -C $(LIBDIR)/d_stdio/ clean
	make -C $(LIBDIR)/string/ clean
	make -C $(LIBDIR)/uart/ clean
	
DEPS := $(wildcard *.d)
ifneq ($(DEPS),)
include $(DEPS)
endif

