
#include "system_call.h"

#include "uart.h"

extern "C" void system_call(int num, void *param)
{
	Uart::printfln("System call %d !", num);
}
