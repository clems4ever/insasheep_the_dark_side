#define DEBUG

#include "kernel.h"

#include "uart.h"
#include "vga.h"


int main(int argc, char **argv){
	
		Uart::printfln("========= INSAKer ======== %s ", "salute23");


		Kernel::initialize();
		//Vga::set_map(0x40100000);
		Vga::enable();

		Uart::println("Vga activated, have fun!");
		char *vram = (char*) 0x40100000;

		for(int y=0; y<600; y++){
		for(int x=0; x<400; x++){
			if(x == 8 /*&& x < 64)*/)
				vram[y*400+x] = 0xFF;
			else if(x == 36 /*&& x < 64)*/)
				vram[y*400+x] = 0xFF;
			else	
				vram[y*400+x] = 0x22;
			/*if(x > 50 && x < 150 )
					vram[y*400+x] = 0xFF;
			else{		
					vram[y*400+x] = 0x11;
			}	*/	
		}
		}
		//vram[300*400+200] = 0xFF;

		Kernel::loop();

		// RESET, never reached because of while(1)
		//jump(0x00);
}
