
#ifndef _UART_H_
#define _UART_H_

typedef int uint32_t;
typedef char uint8_t;

/***************************************************************************
 * UART0
 */
#define UART_DR   0x01                    // RX Data Ready
#define UART_ERR  0x02                    // RX Error
#define UART_BUSY 0x10                    // TX Busy

typedef struct {
   volatile uint32_t ucr;
   volatile uint32_t rxtx;
} uart_t;


char uart_getchar();
void uart_putchar(char c);
void uart_print(const char *str);
void uart_println(const char *str);

#endif 
