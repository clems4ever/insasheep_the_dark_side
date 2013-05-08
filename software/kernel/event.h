


#ifndef _EVENT_H_
#define _EVENT_H_

class Event
{
public :
	enum EventType
	{
		UART_EVENT, MOUSE_EVENT, KEYBOARD_EVENT
	};

	Event(EventType type);

	EventType getEventType() const ;

private:
	EventType m_type;
};


#endif

