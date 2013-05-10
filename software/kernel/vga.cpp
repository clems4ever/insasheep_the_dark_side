


#include "vga.h"

// Video Ram map
char *vram;
vga_t *Vga::m_vga = (vga_t*) 0xF0030000;


void Vga::disable()
{
	m_vga->status_register = m_vga->status_register & ~0x1;
}


void Vga::enable()
{
	m_vga->status_register = m_vga->status_register | 0x1;
	vram = (char*)m_vga->map_address;
}


void Vga::set_map(int address){
	m_vga->map_address = address;
	vram = (char *)m_vga->map_address;
}

int Vga::get_map()
{
	return m_vga->map_address;
}

void Vga::set_pixel(int x, int y, char color)
{
	vram[y*800+x] = color;
}
