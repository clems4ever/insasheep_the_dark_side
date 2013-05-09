


#ifndef _SCHEDULER_H_
#define _SCHEDULER_H_


#include "task.h"
#include "queue.h"

class Scheduler
{
public:
	Scheduler();

	void enable();
	void disable();

	void add(Task *t);

	Task *schedule();
private:
	bool m_enabled;
	Queue<Task*> m_task_queue;
};


#endif 

