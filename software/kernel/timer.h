


#ifndef _TIMER_H_
#define _TIMER_H_


#define FCPU      100000000


#define TIMER_EN     0x08    // Enable Timer
#define TIMER_AR     0x04    // Auto-Reload
#define TIMER_IRQEN  0x02    // IRQ Enable
#define TIMER_TRIG   0x01    // Triggered (reset when writing to TCR)


class Timer
{
public:
	static void installTimer0();
	static void rearmTimer0();

private:
	typedef struct {
		volatile unsigned int tcr0;
		volatile unsigned int compare0;
		volatile unsigned int counter0;
		volatile unsigned int tcr1;
		volatile unsigned int compare1;
		volatile unsigned int counter1;
	} timer_t;
	static timer_t *m_timer0; 

};

#endif
