
interruptions.o:     file format elf32-lm32


Disassembly of section .text:

00000000 <irq0>:
   0:	37 9c ff f0 	addi sp,sp,-16
   4:	5b 8b 00 08 	sw (sp+8),r11
   8:	5b 9d 00 04 	sw (sp+4),ra
   c:	f8 00 00 00 	calli c <irq0+0xc>
  10:	33 81 00 13 	sb (sp+19),r1
  14:	34 01 00 08 	mvi r1,8
  18:	f8 00 00 00 	calli 18 <irq0+0x18>
  1c:	b8 20 58 00 	mv r11,r1
  20:	b9 60 08 00 	mv r1,r11
  24:	43 82 00 13 	lbu r2,(sp+19)
  28:	f8 00 00 00 	calli 28 <irq0+0x28>
  2c:	5b 8b 00 0c 	sw (sp+12),r11
  30:	2b 81 00 0c 	lw r1,(sp+12)
  34:	f8 00 00 00 	calli 34 <irq0+0x34>
  38:	2b 8b 00 08 	lw r11,(sp+8)
  3c:	2b 9d 00 04 	lw ra,(sp+4)
  40:	37 9c 00 10 	addi sp,sp,16
  44:	c3 a0 00 00 	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <irq0+0xa488>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

