
uart_event.o:     file format elf32-lm32


Disassembly of section .text:

00000000 <_ZN9UartEventC1Ec>:
   0:	37 9c ff f4 	addi sp,sp,-12
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 0c 	sw (sp+12),r1
   c:	b8 40 08 00 	mv r1,r2
  10:	33 81 00 08 	sb (sp+8),r1
  14:	2b 81 00 0c 	lw r1,(sp+12)
  18:	34 02 00 00 	mvi r2,0
  1c:	f8 00 00 00 	calli 1c <_ZN9UartEventC1Ec+0x1c>
  20:	2b 81 00 0c 	lw r1,(sp+12)
  24:	43 82 00 08 	lbu r2,(sp+8)
  28:	30 22 00 04 	sb (r1+4),r2
  2c:	2b 9d 00 04 	lw ra,(sp+4)
  30:	37 9c 00 0c 	addi sp,sp,12
  34:	c3 a0 00 00 	ret

00000038 <_ZNK9UartEvent6getKeyEv>:
  38:	37 9c ff f8 	addi sp,sp,-8
  3c:	5b 9d 00 04 	sw (sp+4),ra
  40:	5b 81 00 08 	sw (sp+8),r1
  44:	2b 81 00 08 	lw r1,(sp+8)
  48:	40 21 00 04 	lbu r1,(r1+4)
  4c:	2b 9d 00 04 	lw ra,(sp+4)
  50:	37 9c 00 08 	addi sp,sp,8
  54:	c3 a0 00 00 	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <_ZNK9UartEvent6getKeyEv+0xa450>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

