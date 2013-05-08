
#include "string.h"
#include "terminal.h"
#include "uart.h"

#define RAMTEST_SIZE 10
#define FLASHTEST_SIZE 10
#define KERNEL_BASE (void*)0x40001300

extern "C" void halt();
extern "C" void unlock_block(short *block);
extern "C" short flash_write(short *addr, short value);
extern "C" short flash_read(short *addr);
extern "C" short flash_erase_block(short *block);
extern "C" void jump(void *addr);

void reboot(){
	//int i=0;
	//for(i=0; i<100000; i++);
	//Uart::println("TODO: Reboots the system");
}


void jump_to_kernel(){
	Uart::println("Jump to kernel");
	jump(KERNEL_BASE);
	while(1);
}

void vga_black(){
	int i;
	short *vram = (short*) 0x40800000;
	Uart::println("Write memory");
	for(i=0; i<800*300; i++){
		vram[i] = 0x0000;
	}
}

void vga_white(){
	int x, y;
	char *vram = (char*) 0x40800000;
	Uart::println("Write memory");
	for(y=0; y<600; y++){
		for(x=0; x<800; x++){
			if(x>=0 && x<268)
				vram[y*800+x] = 0xFF & 0x01;
			if(x >=268 && x <532)
				vram[y*800+x] = 0xFF & 0x07;
			if(x >=532 && x <800)
				vram[y*800+x] = 0xFF & 0x04;
		}
	}
}

void ramtest(){
	int i;
	char *ram = (char *)0x40004000;
	Uart::print("Try to write in RAM at the address ");
	Uart::printhex((int) ram);
	Uart::skipline();
	for(i=0; i<RAMTEST_SIZE; i++){
		ram[i] = i;	
	}
	Uart::println("Try to dump memory, it should return the numbers from 0 to 9");
	for(i=0; i<RAMTEST_SIZE; i++){
		Uart::printhex(ram[i]);	
		Uart::skipline();
	}
}


#define FLASH_TEST_BASE 0x50000010
#define TEST_VALUE 0x01

void flashtest(){
	int i;
	short *flash = (short*)FLASH_TEST_BASE;
	short status;
	Uart::print("Try to write in Flash at the address ");
	Uart::printhex((int)flash);
	Uart::skipline();

	Uart::println("Unlock the block");
	unlock_block(flash);

	Uart::println("Write memory");
	for(i=0; i<FLASHTEST_SIZE; i++){
		status = flash_write((short*)FLASH_TEST_BASE+i*2, i+0x0);
		Uart::print("write status = ");
		Uart::printhex(status);
		Uart::skipline();
	}
	//flash_erase_block(flash);

	Uart::println("Try to dump memory, it should return the numbers from 0 to 9");
	for(i=0; i<FLASHTEST_SIZE; i++){
		Uart::printhex(flash_read(flash++));	
		Uart::skipline();
	}
}


void help(){
	Uart::println("INSoC bootloader helper");
	Uart::skipline();
	Uart::println("help\t\t\tdiplays this help");
	Uart::println("reboot\t\t\treboots the system");
	Uart::println("kernel\t\t\tjumps to kernel");
	Uart::println("ramtest\t\t\tperforms a memory test with the RAM memory");
	Uart::println("flashtest\t\tperforms a memory test with the Flash memory");
}



void getCommand(char *cmd, int buffer_size){
	Uart::print(">> ");
	Uart::getstr(cmd, buffer_size);
}


void parseCommand(const char *cmd){

	if(strcmp(cmd, "reboot") == 0){
		reboot();
	}else if(strcmp(cmd, "kernel") == 0){
		jump_to_kernel();
	}
	else if(strcmp(cmd, "help") == 0){
		help();
	}
	else if(strcmp(cmd, "ramtest") == 0){
		ramtest();
	}
	else if(strcmp(cmd, "flashtest") == 0){
		flashtest();
	}
	else if(strcmp(cmd, "halt") == 0){
		halt();
	}
	else if(strcmp(cmd, "white") == 0){
		vga_white();
	}
	else if(strcmp(cmd, "black") == 0){
		vga_black();
	}
	else{
		Uart::printfln("Unknown command... %s", cmd);
	}
}

