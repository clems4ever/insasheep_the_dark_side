

/**
 * \file kernel.h 
 * \brief initialization and work of the kernel 
 * \author Clément MICHAUD
 * \version 1
 * \date 5/9/2013
 *
 */



#ifndef _KERNEL_H_
#define _KERNEL_H_

#include "heap.h"
#include "event_queue.h"
#include "scheduler.h"

#define HEAP_START_ADDRESS 	(void*)0x40700000
#define HEAP_SIZE 			(unsigned int)0x100000

/*! \class Kernel kernel.h
 * \brief Represents the kernel. Initialization and infinite loop.
 *
 */

class Kernel
{
public:
	/**	
	* \brief Infinite loop
	*
	* Performs the inifinite loop that sends the event received to the proper tasks.
	*
	*/
	static void loop();

	/**
	* \brief Initialize the kernel
	* Install the tic timer
	*/
	static void initialize();

	/**
	* The global heap
	*/
	static Heap m_heap;
	/**
	* The event queue that stores event before sending them to the proper tasks
	*/
	static EventQueue m_event_queue;
	/**
	* The scheduler
	*/
	static Scheduler m_scheduler;
};


#endif 
