
event.o:     file format elf32-lm32


Disassembly of section .text:

00000000 <_ZN5EventC1ENS_9EventTypeE>:
   0:	37 9c ff f4 	addi sp,sp,-12
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 0c 	sw (sp+12),r1
   c:	5b 82 00 08 	sw (sp+8),r2
  10:	2b 81 00 0c 	lw r1,(sp+12)
  14:	2b 82 00 08 	lw r2,(sp+8)
  18:	58 22 00 00 	sw (r1+0),r2
  1c:	2b 9d 00 04 	lw ra,(sp+4)
  20:	37 9c 00 0c 	addi sp,sp,12
  24:	c3 a0 00 00 	ret

00000028 <_ZNK5Event12getEventTypeEv>:
  28:	37 9c ff f8 	addi sp,sp,-8
  2c:	5b 9d 00 04 	sw (sp+4),ra
  30:	5b 81 00 08 	sw (sp+8),r1
  34:	2b 81 00 08 	lw r1,(sp+8)
  38:	28 21 00 00 	lw r1,(r1+0)
  3c:	2b 9d 00 04 	lw ra,(sp+4)
  40:	37 9c 00 08 	addi sp,sp,8
  44:	c3 a0 00 00 	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <_ZNK5Event12getEventTypeEv+0xa460>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

