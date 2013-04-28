#include "string.h"
#include "terminal.h"
#include "uart.h"
#include "d_stdio.h"

#define KERNEL_BASE (void*)0x40001000

extern void jump(void *addr);

int main(int argc, char **argv){
		char cmd[50];
      
		printfln("========= INSA BOOTLOADER ======== %s \r\n", "salute");
		while(1){
			getCommand(cmd, 50);
			parseCommand(cmd);

		}

		// RESET, never reached because of while(1)
		//jump(0x00);
}
