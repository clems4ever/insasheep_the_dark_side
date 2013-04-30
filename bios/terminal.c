
#include "string.h"
#include "terminal.h"
#include "uart.h"

#define RAMTEST_SIZE 10
#define FLASHTEST_SIZE 10

extern void halt();
extern void unlock_block(short *block);
extern short flash_write(short *addr, short value);
extern short flash_read(short *addr);
extern short flash_erase_block(short *block);

void reboot(){
	int i=0;
	//for(i=0; i<100000; i++);
	//uart_println("TODO: Reboots the system");
}


void jump_to_kernel(){
	uart_println("TODO: Jump to kernel");
}

void vga_black(){
	int i;
	short *vram = (short*) 0x40800000;
	uart_println("Write memory");
	for(i=0; i<800*300; i++){
		vram[i] = 0x0000;
	}
}

void vga_white(){
	int x, y;
	char *vram = (char*) 0x40800000;
	uart_println("Write memory");
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
	uart_print("Try to write in RAM at the address ");
	uart_printhex((int) ram);
	uart_skipline();
	for(i=0; i<RAMTEST_SIZE; i++){
		ram[i] = i;	
	}
	uart_println("Try to dump memory, it should return the numbers from 0 to 9");
	for(i=0; i<RAMTEST_SIZE; i++){
		uart_printhex(ram[i]);	
		uart_skipline();
	}
}


#define FLASH_TEST_BASE 0x50000010
#define TEST_VALUE 0x01

void flashtest(){
	int i;
	short *flash = (short*)FLASH_TEST_BASE;
	short status;
	uart_print("Try to write in Flash at the address ");
	uart_printhex(flash);
	uart_skipline();

	uart_println("Unlock the block");
	unlock_block(flash);

	uart_println("Write memory");
	for(i=0; i<FLASHTEST_SIZE; i++){
		status = flash_write(FLASH_TEST_BASE+i*2, i+0x0);
		uart_print("write status = ");
		uart_printhex(status);
		uart_skipline();
	}
	//flash_erase_block(flash);

	uart_println("Try to dump memory, it should return the numbers from 0 to 9");
	for(i=0; i<FLASHTEST_SIZE; i++){
		uart_printhex(flash_read(flash++));	
		uart_skipline();
	}
}


void help(){
	uart_println("INSoC bootloader helper");
	uart_skipline();
	uart_println("help\t\t\tdiplays this help");
	uart_println("reboot\t\t\treboots the system");
	uart_println("kernel\t\t\tjumps to kernel");
	uart_println("ramtest\t\t\tperforms a memory test with the RAM memory");
	uart_println("flashtest\t\tperforms a memory test with the Flash memory");
}



void getCommand(char *cmd, int buffer_size){
	uart_print(">> ");
	uart_getstr(cmd, buffer_size);
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
		uart_println("Unknown command...");
	}
}

