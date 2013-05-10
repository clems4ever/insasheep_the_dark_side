

#ifndef _VGA_H_
#define _VGA_H_


	
class Vga
{
public:
	static void initialize();
	static void disable();
	static void enable();
	static void set_map(int address);
	static int get_map();
	static void set_pixel(int x, int y, char color);

private:
	typedef struct {
		volatile int status_register;
		volatile int map_address;
	} vga_t;
	static vga_t *m_vga;
};

#endif
