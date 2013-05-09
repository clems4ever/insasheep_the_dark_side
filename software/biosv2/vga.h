

#ifndef _VGA_H_
#define _VGA_H_

typedef struct {
	int status_register;
	int map_address;
} vga_t;

	


void vga_initialize();
void vga_disable();
void vga_enable();
void vga_set_map(int address);
int vga_get_map();
void vga_set_pixel(int x, int y, char color);

#endif
