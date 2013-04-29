#include <string.h>
#include <uart.h>
#include <d_stdio.h>
#include "terminal.h"


extern void jump(void *addr);

int main(int argc, char **argv){
		char cmd[50];
      
		printfln("========= INSA BOOTLOADER ======== %s \r\n", "salute");
		//uart_println("========= INSA BOOTLOADER ======== \r\n");
		while(1){
			getCommand(cmd, 50);
			parseCommand(cmd);

		}

		// RESET, never reached because of while(1)
		//jump(0x00);
}
