




#include "uart.h"
#include "uart_event.h"
#include "interruptions.h"
#include "kernel.h"

extern Kernel kernel;

// IRQ0 is connected to UART
extern "C" void irq0(void)
{
	char c = Uart::getchar();
	UartEvent *e = new UartEvent(c);
	Kernel::pushEvent(e);
}

