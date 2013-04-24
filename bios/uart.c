

#include "uart.h"

uart_t   *uart0  = (uart_t *)   0xF0000000;

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
