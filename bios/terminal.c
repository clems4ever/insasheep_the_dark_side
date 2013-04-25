
#include "string.h"
#include "terminal.h"
#include "uart.h"

#define RAMTEST_SIZE 10
#define FLASHTEST_SIZE 10


extern halt();

void reboot(){
	uart_println("TODO: Reboots the system");
}


void jump_to_kernel(){
	uart_println("TODO: Jump to kernel");
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

void flashtest(){
	int i;
	char *flash = (char *)0x50000000;
	uart_print("Try to write in Flash at the address ");
	uart_printhex((int) flash);
	uart_skipline();
	for(i=0; i<FLASHTEST_SIZE; i++){
		flash[i] = i;	
	}
	uart_println("Try to dump memory, it should return the numbers from 0 to 9");
	for(i=0; i<FLASHTEST_SIZE; i++){
		uart_printhex(flash[i]);	
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
	else{
		uart_println("Unknown command...");
	}
}

