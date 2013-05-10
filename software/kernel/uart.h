
#ifndef _UART_H_
#define _UART_H_

#include <stdarg.h>



/***************************************************************************
 * UART0
 */
#define UART_DR   0x01                    // RX Data Ready
#define UART_ERR  0x02                    // RX Error
#define UART_BUSY 0x10                    // TX Busy


// printf CONSTANTS
#define PAD_RIGHT 1
#define PAD_ZERO 2
#define PRINT_BUF_LEN 12
#define BUFF_SIZE 256





class Uart
{
public:
	static char getchar();
	static void putchar(char c);
	static void printchar(char c);
	static void print(const char *str);
	static void println(const char *str);
	static void skipline();
	static void printhex(int i);
	static void getstr(char *buffer, int buffer_size);
	static void printf ( const char * format, ... );
	static void printfln ( const char * format, ... );

private:
	typedef struct {
	   volatile unsigned int ucr;
	   volatile unsigned int rxtx;
	} uart_t;
	static int print(const char *format, va_list args );
	static int prints(const char *string, int width, int pad);
	static int printi(int i, int b, int sg, int width, int pad, int letbase);

	static uart_t *uart0;
};


#endif 
