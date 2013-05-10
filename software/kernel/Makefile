
LM32_CC=lm32-elf-gcc
LM32_CPP=lm32-elf-g++
LM32_LD=lm32-elf-ld
LM32_OBJCOPY=lm32-elf-objcopy
LM32_OBJDUMP=lm32-elf-objdump

CFLAGS=-MMD -O0 -Wall -s -fomit-frame-pointer -mbarrel-shift-enabled -mmultiply-enabled -mdivide-enabled -msign-extend-enabled -fno-builtin -nostdlib -nodefaultlibs -fno-exceptions -fno-rtti
LDFLAGS=-nostdlib -nodefaultlibs -Tlinker.ld 
SEGMENTS = -j .text -j .rodata -j .data 

ASM=false

OBJECTS=	crt0.o \
			gcc.o \
			main.o \
			kernel.o \
			event_queue.o \
			event.o \
			uart_event.o \
			heap.o \
			uart.o \
			flash.o \
			tools.o \
			interruptions.o \
			exceptions.o \
			timer.o \
			scheduler.o \
			task.o \
			vga.o \


all: kernel.bin 


kernel: $(OBJECTS) 
	$(LM32_LD) $(LDFLAGS) -Map $@.map -o $@ $^ 

kernel.lst: kernel
	$(LM32_OBJDUMP) -h -S $< > $@

kernel.bin: kernel
	$(LM32_OBJCOPY) $(SEGMENTS) -O binary $< $@ 

%.o:%.S
	$(LM32_CPP) -c $<

%.o:%.cpp
	$(LM32_CPP) $(CFLAGS) -c $< 
	$(LM32_CPP) -S $< 
	$(LM32_OBJDUMP) -D $@ > $<.asm

%.o:%.c
	$(LM32_CPP) $(CFLAGS) -c $< 
	$(LM32_CPP) -S $< 
	

doc:
	doxygen config.doxy 


clean:
	rm -rf kernel kernel.bin kernel.lst kernel.map *.o *.d *.asm *.s html/ latex/

