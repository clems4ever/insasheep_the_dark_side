#include "d_stdio.h"
/*
	Copyright 2001, 2002 Georges Menie (www.menie.org)
	stdarg version contributed by Christian Ettinger

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

/*
	putchar is the only external dependency for this file,
	if you have a working putchar, leave it commented out.
	If not, uncomment the define below and
	replace outbyte(c) by your own function call.
http://www.menie.org/georges/embedded/printf-stdarg.c

*/

#define putchar(c) uart_putchar(c)
//#define DEBUG_ON
char buffer[BUFF_SIZE];
int ndex = 0;
static void printchar(char c)
{
	extern void putchar(char c);
	
	if (buffer) {
		buffer[ndex] = c;
		ndex++;
	}
	else (void)putchar((char)c);

}

#define PAD_RIGHT 1
#define PAD_ZERO 2

static int prints(const char *string, int width, int pad)
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

/* the following should be enough for 32 bit int */
#define PRINT_BUF_LEN 12

static int printi(int i, int b, int sg, int width, int pad, int letbase)
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

static int print(const char *format, va_list args )
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

void printf(const char *format, ...)
{
   va_list args;
   
#ifdef DEBUG_ON
   {
      int i;
      for (i = 0; i < BUFF_SIZE; i++) buffer[i] = 'a';
      buffer[BUFF_SIZE-1] = '\0'; 
   }
#endif
   va_start( args, format );
   print(format, args );
   uart_print(buffer);
   
}

void printfln(const char *format, ...)
{
   va_list args;
   
   va_start( args, format );
#ifdef DEBUG_ON
   {
      int i;
      for (i = 0; i < BUFF_SIZE; i++) buffer[i] = 'a';
      buffer[BUFF_SIZE-1] = '\0'; 
   }
#endif
   print(format, args );
   uart_println(buffer);
   
}
