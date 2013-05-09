


#include "uart_event.h"


UartEvent::UartEvent(char c)
: Event(Event::UART_EVENT)
{
	m_key = c;
}


char UartEvent::getKey() const
{
	return m_key;
}
