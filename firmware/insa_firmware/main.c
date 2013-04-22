/**
 * Memory dumper
 */
#include "soc-hw.h"

#define     TEST_SIZE           0x1000
#define     TEST_STARTADDRESS   0x40000000

//#define     TEST_SIZE           0x500
//#define     TEST_STARTADDRESS   0x500

const char hexchars[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

void putHex(uint32_t i)
{
    uart_putchar(hexchars[(i >> 28) & 0x0F]);
    uart_putchar(hexchars[(i >> 24) & 0x0F]);
    uart_putchar(hexchars[(i >> 20) & 0x0F]);
    uart_putchar(hexchars[(i >> 16) & 0x0F]);
    uart_putchar(hexchars[(i >> 12) & 0x0F]);
    uart_putchar(hexchars[(i >> 8) & 0x0F]);
    uart_putchar(hexchars[(i >> 4) & 0x0F]);
    uart_putchar(hexchars[i & 0x0F]);
}

int main(int argc, char **argv)
{
    uint32_t pattern = 0x13370000;

    // Initialize UART
    uart_init();

    uart_putstr("Dumping memory...\r\n");
    uint32_t* q = (uint32_t*)TEST_STARTADDRESS;
    for(int i = 0; i < TEST_SIZE/4; i++)
    {   
        putHex(*q);
        q++;
        uart_putstr("\r\n");
    }

    uart_putstr("Writing memory...\r\n");
    q = (uint32_t*)TEST_STARTADDRESS;
    for(int i = 0; i < TEST_SIZE/4; i++)
    {   
        *q = pattern++;
        q++;
    }

    uart_putstr("Dumping memory...\r\n");
    q = (uint32_t*)TEST_STARTADDRESS;
    for(int i = 0; i < TEST_SIZE/4; i++)
    {   
        putHex(*q);
        q++;
        uart_putstr("\r\n");
    }

    uart_putstr("\r\ndone!\r\n");
}
