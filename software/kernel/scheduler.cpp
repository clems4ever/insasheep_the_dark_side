
#include "constant.h"

#include "scheduler.h"

#include "uart.h"


Scheduler::Scheduler()
{
	#ifdef DEBUG
	Uart::printfln("Scheduler initialized and disabled");
	#endif
	m_enabled = false;	
}


void Scheduler::enable() 
{
	m_enabled = true;
}


void Scheduler::disable() 
{
	m_enabled = false;
}


void Scheduler::add(Task *t)
{
	m_task_queue.push(t);
}


// Round robin
Task *Scheduler::schedule()
{
	Task *t1 = m_task_queue.pop();
	m_task_queue.push(t1);
	return t1;
}
