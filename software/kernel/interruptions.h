


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

extern "C" void irq0(void);
extern "C" void irq1(void);

#endif 
