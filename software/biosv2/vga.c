


#include "vga.h"

// Video Ram map
char *vram;
vga_t *vga = (vga_t*) 0x70030000;


void vga_initialize()
{
	vram = (char *)vga->map_address;
}

void vga_disable()
{
	vga->status_register = vga->status_register & ~0x1;
}


void vga_enable()
{
	vga->status_register = vga->status_register | 0x1;
	//vram = (char*)vga->map_address;
}


void vga_set_map(int address){
	vga->map_address = address;
	vram = (char *)vga->map_address;
}

inline int vga_get_map()
{
	return vga->map_address;
}

inline void vga_set_pixel(int x, int y, char color)
{
	vram[y*800+x] = color;
}
