


#include "kernel.h"
#include "uart_event.h"
#include "uart.h"
#include "interruptions.h"
#include "timer.h"


// Intanciation of the heap
Heap Kernel::m_heap(HEAP_START_ADDRESS, HEAP_SIZE);
EventQueue Kernel::m_event_queue;
Scheduler Kernel::m_scheduler;


void Kernel::initialize()
{
	Timer::installTimer0();	
}

void Kernel::loop()
{
	Event *e;
	char c;

//	cli();

/*	int *i = new int;
	int *j = new int;
	int *p = new int[10];
	int *j1 = new int[10];
	int *j2 = new int[10];
	//delete i;
	//delete[] p;
	delete j;
	p = new int;
	
	j = new int[10];
	//delete[] j;
*/
	//sti();
	// Infinite loop
	while(1){

		if(m_event_queue.ready()){
			//cli();
			e = m_event_queue.pop();
			//sti();
			if(e->getEventType() == Event::UART_EVENT){
				c = ((UartEvent*)e)->getKey();
				Uart::printf("%c", c);
				//cli();
				delete e;
				//sti();
			}	
		}
	}
}



void Kernel::pushEvent(Event *e)
{
	Kernel::m_event_queue.push(e);
}

