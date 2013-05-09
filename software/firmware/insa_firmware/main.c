#include "soc-hw.h"


const char hexchars[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};


void putHex(uint32_t i)
{
		uart_putchar(hexchars[(i >> 28) & 0x0F]);
		uart_putchar(hexchars[(i >> 24) & 0x0F]);
		uart_putchar(hexchars[(i >> 20) & 0x0F]);
		uart_putchar(hexchars[(i >> 16) & 0x0F]);
		uart_putchar(hexchars[(i >> 12) & 0x0F]);
		uart_putchar(hexchars[(i >> 8) & 0x0F]);
		uart_putchar(hexchars[(i >> 4) & 0x0F]);
		uart_putchar(hexchars[i & 0x0F]);
}

void putHChar(uint8_t i){
		uart_putchar(hexchars[(i >> 4) & 0x0F]);
		uart_putchar(hexchars[i & 0x0F]);
}



int main(int argc, char **argv)
{
	
		int bios_size, i;
		int start_address;

		uart_init();

		uart_putstr("INSoC bootstrap...\r\n");
		uart_putstr("Waiting for the bootloader, load it through the serial port\r\n\n");

		uart_putstr("Waiting for the address where the bootloader will be loaded\r\n");
		// Waits for the user to write the 
		start_address = 0;
		for(i=0; i<4; i++){

				start_address <<= 8;
				start_address += (char) uart_getchar();
		}
		uart_putstr("The bootloader will be at 0x");
		putHex(start_address);
		uart_putstr("\r\n");


		// Waits for the user to write the BIOS size on UART
		uart_putstr("Waiting for the bootloader size\r\n");
		bios_size = 0;
		for(i=0; i<4; i++){

				bios_size <<= 8;
				bios_size += (char) uart_getchar();
		}
		uart_putstr("The bootloader size is ");
		putHex(bios_size);
		uart_putstr("\r\n");

		// Copy bios to RAM
		char *destination;
		destination = (char*)start_address;

		uart_putstr("Waiting for the bootloader binary\r\n");
		for(i=0; i<bios_size; i++){
				*destination = uart_getchar();
				destination++;
		}

		uart_putstr("\r\nJumping to bootloader...\r\n\n");
		// Jumps to the bootloader
		jump(start_address);

		return 0;
}
