

#include "event.h"



Event::Event(Event::EventType type)
{
	m_type = type;
}


Event::EventType Event::getEventType() const 
{
	return m_type;
}
