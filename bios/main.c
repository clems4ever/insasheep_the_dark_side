#include "string.h"
#include "terminal.h"
#include "uart.h"

#define KERNEL_BASE (void*)0x40001000

extern void jump(void *addr);

int main(int argc, char **argv){
		char cmd[50];

		uart_print("========= INSA BOOTLOADER ========\r\n");

		while(1){
			getCommand(cmd, 50);
			parseCommand(cmd);

		}

		// RESET, never reached because of while(1)
		//jump(0x00);
}
