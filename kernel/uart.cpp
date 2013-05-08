

#include "uart.h"


uart_t* Uart::uart0 = (uart_t*)0x70000000;


char buffer[BUFF_SIZE];
int ndex = 0;

const char hexchars[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

char Uart::getchar(){
	while( !(uart0->ucr & UART_DR));
	return uart0->rxtx;
}


void Uart::putchar(char c){

	while(uart0->ucr & UART_BUSY) ;
	uart0->rxtx = c;
}

void Uart::print(const char *str){
	char *c = (char*)str;
	while(*c){
		Uart::putchar(*c);
		c++;
	}
}

void Uart::println(const char *str){
	Uart::print(str);
	Uart::print("\r\n");
}	


void Uart::skipline(){
	Uart::print("\r\n");
}

void Uart::getstr(char *buffer, int buffer_size){
	char c;
	int size=0;
	do{
		c = Uart::getchar();
		if(c != '\r')
			Uart::putchar(c);
		buffer[size] = c;
		size++;
	} while( c!='\r' && size < buffer_size);
	buffer[size-1] = 0;
	Uart::skipline();
}


void Uart::printhex(int i){
		Uart::putchar(hexchars[(i >> 28) & 0x0F]);
		Uart::putchar(hexchars[(i >> 24) & 0x0F]);
		Uart::putchar(hexchars[(i >> 20) & 0x0F]);
		Uart::putchar(hexchars[(i >> 16) & 0x0F]);
		Uart::putchar(hexchars[(i >> 12) & 0x0F]);
		Uart::putchar(hexchars[(i >> 8) & 0x0F]);
		Uart::putchar(hexchars[(i >> 4) & 0x0F]);
		Uart::putchar(hexchars[i & 0x0F]);
}



void Uart::printf ( const char * format, ... )
{
   va_list args;
   
#ifdef DEBUG_ON
   {
      int i;
      for (i = 0; i < BUFF_SIZE; i++) buffer[i] = 'a';
      buffer[BUFF_SIZE-1] = '\0'; 
   }
#endif
   ndex = 0;
   va_start( args, format );
   print(format, args );
   Uart::print(buffer);
}

void Uart::printfln ( const char * format, ... )
{
   va_list args;
   
#ifdef DEBUG_ON
   {
      int i;
      for (i = 0; i < BUFF_SIZE; i++) buffer[i] = 'a';
      buffer[BUFF_SIZE-1] = '\0'; 
   }
#endif
   ndex = 0;
   va_start( args, format );
   print(format, args );
   Uart::println(buffer);
}


void Uart::printchar(char c)
{
	Uart::putchar(c);
}

int Uart::print(const char *format, va_list args )
{
	register int width, pad;
	register int pc = 0;
	char scr[2];
	for (; *format != 0; ++format) {
		if (*format == '%') {
			++format;
			width = pad = 0;
			if (*format == '\0') break;
			if (*format == '%') goto dehors;
			if (*format == '-') {
				++format;
				pad = PAD_RIGHT;
			}
			while (*format == '0') {
				++format;
				pad |= PAD_ZERO;
			}
			for ( ; *format >= '0' && *format <= '9'; ++format) {
				width *= 10;
				width += *format - '0';
			}
			if( *format == 's' ) {
				register char *s = (char *)va_arg( args, int );
				pc += prints (s?s:"(null)", width, pad);
				continue;
			}
			if( *format == 'd' ) {
				pc += printi (va_arg( args, int ), 10, 1, width, pad, 'a');
				continue;
			}
			if( *format == 'x' ) {
				pc += printi (va_arg( args, int ), 16, 0, width, pad, 'a');
				continue;
			}
			if( *format == 'X' ) {
				pc += printi (va_arg( args, int ), 16, 0, width, pad, 'A');
				continue;
			}
			if( *format == 'u' ) {
				pc += printi (va_arg( args, int ), 10, 0, width, pad, 'a');
				continue;
			}
			if( *format == 'c' ) {
				/* char are converted to int then pushed on the stack */
				scr[0] = (char)va_arg( args, int );
				scr[1] = '\0';
				pc += prints (scr, width, pad);
				continue;
			}
		}
		else {

		dehors:
			printchar (*format);
			++pc;
		}
	}
	buffer[ndex] = '\0';
	va_end( args );
	return pc;
}



int Uart::printi(int i, int b, int sg, int width, int pad, int letbase)
{
	char print_buf[PRINT_BUF_LEN];
	register char *s;
	register int t, neg = 0, pc = 0;
	register unsigned int u = i;

	if (i == 0) {
		print_buf[0] = '0';
		print_buf[1] = '\0';
		return prints (print_buf, width, pad);
	}

	if (sg && b == 10 && i < 0) {
		neg = 1;
		u = -i;
	}

	s = print_buf + PRINT_BUF_LEN-1;
	*s = '\0';

	while (u) {
		t = u % b;
		if( t >= 10 )
			t += letbase - '0' - 10;
		*--s = t + '0';
		u /= b;
	}

	if (neg) {
		if( width && (pad & PAD_ZERO) ) {
			printchar ('-');
			++pc;
			--width;
		}
		else {
			*--s = '-';
		}
	}

	return pc + prints (s, width, pad);
}




int Uart::prints(const char *string, int width, int pad)
{
	register int pc = 0, padchar = ' ';

	if (width > 0) {
		register int len = 0;
		register const char *ptr;
		for (ptr = string; *ptr; ++ptr) ++len;
		if (len >= width) width = 0;
		else width -= len;
		if (pad & PAD_ZERO) padchar = '0';
	}
	if (!(pad & PAD_RIGHT)) {
		for ( ; width > 0; --width) {
			printchar (padchar);
			++pc;
		}
	}
	for ( ; *string ; ++string) {
		printchar (*string);
		++pc;
	}
	for ( ; width > 0; --width) {
		printchar (padchar);
		++pc;
	}

	return pc;
}

