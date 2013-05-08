


#include "event_queue.h"
#include "uart.h"


EventQueue::EventQueue()
{
	#ifdef DEBUG
		Uart::printfln("EventQueue initialized");
	#endif
}

void EventQueue::init()
{
}

bool EventQueue::ready()
{
	return m_queue.size() > 0;
}


Event *EventQueue::pop()
{
	return m_queue.pop();
}


void EventQueue::push(Event *e)
{
	m_queue.push(e);
}
