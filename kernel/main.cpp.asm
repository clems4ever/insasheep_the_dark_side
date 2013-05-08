
main.o:     file format elf32-lm32


Disassembly of section .text:

00000000 <main>:
   0:	37 9c ff f4 	addi sp,sp,-12
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 0c 	sw (sp+12),r1
   c:	5b 82 00 08 	sw (sp+8),r2
  10:	78 01 00 00 	mvhi r1,0x0
  14:	38 21 00 00 	ori r1,r1,0x0
  18:	78 02 00 00 	mvhi r2,0x0
  1c:	38 42 00 00 	ori r2,r2,0x0
  20:	f8 00 00 00 	calli 20 <main+0x20>
  24:	f8 00 00 00 	calli 24 <main+0x24>
  28:	34 01 00 00 	mvi r1,0
  2c:	2b 9d 00 04 	lw ra,(sp+4)
  30:	37 9c 00 0c 	addi sp,sp,12
  34:	c3 a0 00 00 	ret

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	3d 3d 3d 3d 	sli ra,r9,15677
   4:	3d 3d 3d 3d 	sli ra,r9,15677
   8:	3d 20 49 4e 	sli r0,r9,18766
   c:	53 41 20 42 	bgeu gp,r1,8114 <main+0x8114>
  10:	4f 4f 54 4c 	bge gp,r15,15140 <main+0x15140>
  14:	4f 41 44 45 	bge gp,r1,11128 <main+0x11128>
  18:	52 20 3d 3d 	bgeu r17,r0,f50c <main+0xf50c>
  1c:	3d 3d 3d 3d 	sli ra,r9,15677
  20:	3d 3d 20 25 	sli ra,r9,8229
  24:	73 20 00 00 	cmpgeui r0,r25,0x0
  28:	73 61 6c 75 	cmpgeui r1,fp,0x6c75
  2c:	74 65 32 33 	cmpgui r5,r3,0x3233
  30:	00 00 00 00 	srui r0,r0,0

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <main+0xa488>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

