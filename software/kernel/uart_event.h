

#ifndef _UART_EVENT_H_
#define _UART_EVENT_H_

#include "event.h"

class UartEvent : public Event
{
public:
	UartEvent(char key) ;

	char getKey() const ;

private:
	char m_key;
};

#endif

