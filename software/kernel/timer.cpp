

#include "timer.h"
#include "uart.h"
#include "constant.h"

timer_t *Timer::m_timer0 = (timer_t *)  0xF0010000;


void Timer::installTimer0()
{
	#if defined(DEBUG) && defined(TIMER_DEBUG)
	Uart::printfln("Tic initialized");
	#endif 
	// Setup timer0.0
	m_timer0->compare0 = (FCPU);
	m_timer0->counter0 = 0;
	m_timer0->tcr0     = TIMER_EN | TIMER_AR | TIMER_IRQEN;
}

void Timer::rearmTimer0(){
	#if defined(DEBUG) && defined(TIMER_DEBUG)
	Uart::printf("rearm");
	#endif
	m_timer0->counter0 = 0;
	m_timer0->tcr0     = TIMER_EN | TIMER_AR | TIMER_IRQEN;
}
