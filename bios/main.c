
#include "uart.h"

#define KERNEL_BASE (void*)0x40001000

extern void jump(void *addr);

int main(int argc, char **argv){
		char c;

		uart_print("========= INSA BOOTLOADER ========\r\n");

		c = '*';
		while(1){
				switch(c){
						case 'k': // Boot kernel
								uart_println("Booting kernel...");
								jump(KERNEL_BASE);
								break;
						case 'h': // HELP
								uart_println("**** HELP ****");
								uart_println("r\treset");
								uart_println("k\tboots kernel");
								break;	
						case 'r':
								// Jump to the BIOS
								jump(0x0);
								break;
				}

				uart_print(">> ");
				c = uart_getchar();
				uart_print("\r\n");
		}

		// RESET, never reached because of while(1)
		jump(0x00);
}
