


#ifndef _KERNEL_H_
#define _KERNEL_H_

#include "heap.h"
#include "event_queue.h"

#define HEAP_START_ADDRESS 	(void*)0x40700000
#define HEAP_SIZE 			(unsigned int)0x100000



class Kernel
{
public:
	static void loop();
	static void initialize();

	static void pushEvent(Event *e);

	static Heap m_heap;
	static EventQueue m_event_queue;

};


#endif 
