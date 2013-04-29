

#include "uart.h"

uart_t   *uart0  = (uart_t *)   0xF0000000;


const char hexchars[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

char uart_getchar(){
	while( !(uart0->ucr & UART_DR));
	return uart0->rxtx;
}


void uart_putchar(char c){

	while(uart0->ucr & UART_BUSY) ;
	uart0->rxtx = c;
}

void uart_print(const char *str){
	char *c = (char*)str;
	while(*c){
		uart_putchar(*c);
		c++;
	}
}

void uart_println(const char *str){
	uart_print(str);
	uart_print("\r\n");
}	


void uart_skipline(){
	uart_print("\r\n");
}

void uart_getstr(char *buffer, int buffer_size){
	char c;
	int size=0;
	do{
		c = uart_getchar();
		if(c != '\r')
			uart_putchar(c);
		buffer[size] = c;
		size++;
	} while( c!='\r' && size < buffer_size);
	buffer[size-1] = 0;
	uart_skipline();
}


void uart_printhex(int i){
		uart_putchar(hexchars[(i >> 28) & 0x0F]);
		uart_putchar(hexchars[(i >> 24) & 0x0F]);
		uart_putchar(hexchars[(i >> 20) & 0x0F]);
		uart_putchar(hexchars[(i >> 16) & 0x0F]);
		uart_putchar(hexchars[(i >> 12) & 0x0F]);
		uart_putchar(hexchars[(i >> 8) & 0x0F]);
		uart_putchar(hexchars[(i >> 4) & 0x0F]);
		uart_putchar(hexchars[i & 0x0F]);
}
