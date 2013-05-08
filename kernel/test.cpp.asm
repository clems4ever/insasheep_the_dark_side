
test.o:     file format elf32-lm32


Disassembly of section .text:

00000000 <__dso_handle>:
   0:	37 9c ff fc 	addi sp,sp,-4
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	2b 9d 00 04 	lw ra,(sp+4)
   c:	37 9c 00 04 	addi sp,sp,4
  10:	c3 a0 00 00 	ret

00000014 <__cxa_atexit>:
  14:	37 9c ff fc 	addi sp,sp,-4
  18:	5b 9d 00 04 	sw (sp+4),ra
  1c:	2b 9d 00 04 	lw ra,(sp+4)
  20:	37 9c 00 04 	addi sp,sp,4
  24:	c3 a0 00 00 	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <__cxa_atexit+0xa474>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

