#define DEBUG

#include "kernel.h"

#include "uart.h"
#include "vga.h"


int main(int argc, char **argv){
	
		Uart::printfln("========= INSAKer ======== %s ", "salute23");


		Kernel::initialize();
		//Vga::set_map(0x40900000);
		//char *vram = (char*) Vga::get_map();
		//Uart::printfln("Vga activated at %x, have fun!", vram);
		//Vga::enable();


		/*for(int y=0; y<600; y++){
		for(int x=0; x<400; x++){
		}
		}
		*/

		Kernel::loop();

		// RESET, never reached because of while(1)
		//jump(0x00);
}
