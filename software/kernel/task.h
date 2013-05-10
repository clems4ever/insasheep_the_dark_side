
#ifndef _TASK_H_
#define _TASK_H_


class Task
{
public:
	Task();
	//Task(String m_name);

private:
	struct TaskContext
	{
		volatile unsigned int r0;
		volatile unsigned int r1;
		volatile unsigned int r2; 
		volatile unsigned int r3; 
		volatile unsigned int r4; 
		volatile unsigned int r5; 
		volatile unsigned int r6; 
		volatile unsigned int r7; 
		volatile unsigned int r8; 
		volatile unsigned int r9; 
		volatile unsigned int r10; 
		volatile unsigned int sp;
		volatile unsigned int bp;
		volatile unsigned int ra;
		volatile unsigned int ip;
	};

	//String m_name;
	TaskContext m_task_context;
	int mmu_offset;
};


#endif 
