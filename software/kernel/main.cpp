#define DEBUG

#include "kernel.h"

#include "uart.h"
#include "vga.h"


int main(int argc, char **argv){
	
		Uart::printfln("========= INSAKer ======== %s ", "salute23");


		Kernel::initialize();
		Vga::set_map(0x40010000);
		Vga::enable();

		Uart::println("Vga activated, have fun!");
		char *vram = (char*) 0x40010000;

		for(int y=0; y<240000; y++){
			vram[y] = 0xFF;
			/*if(y % 4 == 0 )
					vram[y] = 0x0F;
			else{		
					vram[y] = 0x02;
			}*/		
		}
		//vram[300*400+200] = 0xFF;

		Kernel::loop();

		// RESET, never reached because of while(1)
		//jump(0x00);
}
