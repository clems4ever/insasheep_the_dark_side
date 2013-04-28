#ifndef D_STDIO_H
#define D_STDIO_H

#include "uart.h"
#include <stdarg.h>

#define BUFF_SIZE 256
/**
* Normal printf
* @param str : The formated string to print
* @param ... : The values of the format in the string
*/
void printf ( const char * str, ... );

/**
* Printf wich append a '\n' at the end of the string
* @param str : The formated string to print
* @param ... : The values of the format in the string
*/
void printfln ( const char * str, ... );

#endif
