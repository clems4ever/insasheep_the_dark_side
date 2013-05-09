#define DEBUG

#include "kernel.h"

#include "uart.h"

int main(int argc, char **argv){
	
		Uart::printfln("========= INSA BOOTLOADER ======== %s ", "salute23");
		

		Kernel::initialize();
		Kernel::loop();

		// RESET, never reached because of while(1)
		//jump(0x00);
}
