

/**
*
* \file interruptions.h
* \author Clément MICHAUD
*
* \brief All the interruptions routines.
*/

#ifndef _INTERRUPTIONS_H_
#define _INTERRUPTIONS_H_

#define cli() __asm__("	addi sp, sp, -4;  \
						sw (sp+0x4), r1; \
						xor r1, r1, r1; \
						wcsr IE, r1;    \
						lw r1, (sp+0x4);  \
						addi sp, sp, 4; ")

#define sti() __asm__ ("addi sp, sp, -4; \
						sw (sp+0x4), r1; \
						mvi r1, 1; \
						wcsr IE, r1; \
						lw r1, (sp+0x4); \
						addi sp, sp, 4; ")
/**
* \brief Routine for IRQ0
*
* \details The routine is connected to the UART interruption.
*/
extern "C" void irq0(void);

/**
* \brief Routine for IRQ1
*
* \details The routine is connected to the Timer0.0 interruption.
*/
extern "C" void irq1(void);

#endif 
