




#include "uart.h"
#include "interruptions.h"



void irq0(void)
{
	uart_println("IRQ0");
}

