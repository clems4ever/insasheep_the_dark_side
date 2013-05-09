

#ifndef _EVENT_QUEUE_H_
#define _EVENT_QUEUE_H_


#include "constant.h"

#include "event_queue.h"
#include "event.h"
#include "queue.h"

class EventQueue
{
public:
	EventQueue();

	void init();

	void push(Event *e);
	Event* pop();
	bool ready();

private:
	Queue<Event *> m_queue;
};

#endif
