#ifndef D_STDIO_H
#define D_STDIO_H

#include "uart.h"
#include <stdarg.h>

#define BUFF_SIZE 256
/**
* Normal printf
* @param format : The formated string to print
* @param ... : The values of the format in the string
*/
void printf ( const char * format, ... );

/**
* Printf wich append a '\n' at the end of the string
* @param format : The formated string to print
* @param ... : The values of the format in the string
*/
void printfln ( const char * format, ... );

#endif
