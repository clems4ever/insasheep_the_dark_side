




#include "uart.h"
#include "uart_event.h"
#include "interruptions.h"
#include "kernel.h"
#include "timer.h"
#include "event_queue.h"

extern Kernel kernel;

// IRQ0 is connected to UART
/**
* \details Gets the char received on UART and sends it to the EventQueue so that it can be dispatched to all programs.
*/
extern "C" void irq0(void)
{
	char c = Uart::getchar();
	UartEvent *e = new UartEvent(c);
	Kernel::m_event_queue.push(e);
}


// IRQ1 is connected to Timer0.0
/**
* \details Rearms the timer0.0 and gets the next task to be executed from the scheduler.
*/
extern "C" void irq1(void)
{
	Timer::rearmTimer0();
	Task *t = Kernel::m_scheduler.schedule();
}
