
kernel.o:     file format elf32-lm32


Disassembly of section .group:

00000000 <_ZN5QueueIP5EventED5Ev>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 0a 	srui r0,r0,10

Disassembly of section .group:

00000000 <_ZN10EventQueueD5Ev>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 0c 	srui r0,r0,12

Disassembly of section .group:

00000000 <_ZN10LinkedListIP5EventED5Ev>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 0e 	srui r0,r0,14

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 10 	srui r0,r0,16

Disassembly of section .text:

00000000 <_ZN6Kernel4loopEv>:
   0:	37 9c ff f4 	addi sp,sp,-12
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	e0 00 00 04 	bi 18 <_ZN6Kernel4loopEv+0x18>
   c:	34 00 00 00 	nop
  10:	e0 00 00 02 	bi 18 <_ZN6Kernel4loopEv+0x18>
  14:	34 00 00 00 	nop
  18:	78 01 00 00 	mvhi r1,0x0
  1c:	38 21 00 00 	ori r1,r1,0x0
  20:	f8 00 00 00 	calli 20 <_ZN6Kernel4loopEv+0x20>
  24:	b8 20 10 00 	mv r2,r1
  28:	34 01 00 00 	mvi r1,0
  2c:	44 41 ff f8 	be r2,r1,c <_ZN6Kernel4loopEv+0xc>
  30:	78 01 00 00 	mvhi r1,0x0
  34:	38 21 00 00 	ori r1,r1,0x0
  38:	f8 00 00 00 	calli 38 <_ZN6Kernel4loopEv+0x38>
  3c:	5b 81 00 0c 	sw (sp+12),r1
  40:	2b 81 00 0c 	lw r1,(sp+12)
  44:	f8 00 00 00 	calli 44 <_ZN6Kernel4loopEv+0x44>
  48:	64 21 00 00 	cmpei r1,r1,0
  4c:	20 22 00 ff 	andi r2,r1,0xff
  50:	34 01 00 00 	mvi r1,0
  54:	44 41 ff f0 	be r2,r1,14 <_ZN6Kernel4loopEv+0x14>
  58:	2b 81 00 0c 	lw r1,(sp+12)
  5c:	f8 00 00 00 	calli 5c <_ZN6Kernel4loopEv+0x5c>
  60:	33 81 00 0b 	sb (sp+11),r1
  64:	43 82 00 0b 	lbu r2,(sp+11)
  68:	78 01 00 00 	mvhi r1,0x0
  6c:	38 21 00 00 	ori r1,r1,0x0
  70:	f8 00 00 00 	calli 70 <_ZN6Kernel4loopEv+0x70>
  74:	2b 81 00 0c 	lw r1,(sp+12)
  78:	f8 00 00 00 	calli 78 <_ZN6Kernel4loopEv+0x78>
  7c:	e3 ff ff e7 	bi 18 <_ZN6Kernel4loopEv+0x18>

00000080 <_ZN6Kernel9pushEventEP5Event>:
  80:	37 9c ff f8 	addi sp,sp,-8
  84:	5b 9d 00 04 	sw (sp+4),ra
  88:	5b 81 00 08 	sw (sp+8),r1
  8c:	78 01 00 00 	mvhi r1,0x0
  90:	38 21 00 00 	ori r1,r1,0x0
  94:	2b 82 00 08 	lw r2,(sp+8)
  98:	f8 00 00 00 	calli 98 <_ZN6Kernel9pushEventEP5Event+0x18>
  9c:	2b 9d 00 04 	lw ra,(sp+4)
  a0:	37 9c 00 08 	addi sp,sp,8
  a4:	c3 a0 00 00 	ret

000000a8 <_Z41__static_initialization_and_destruction_0ii>:
  a8:	37 9c ff f4 	addi sp,sp,-12
  ac:	5b 9d 00 04 	sw (sp+4),ra
  b0:	5b 81 00 0c 	sw (sp+12),r1
  b4:	5b 82 00 08 	sw (sp+8),r2
  b8:	2b 82 00 0c 	lw r2,(sp+12)
  bc:	34 01 00 01 	mvi r1,1
  c0:	5c 41 00 13 	bne r2,r1,10c <_Z41__static_initialization_and_destruction_0ii+0x64>
  c4:	2b 82 00 08 	lw r2,(sp+8)
  c8:	38 01 ff ff 	mvu r1,0xffff
  cc:	5c 41 00 10 	bne r2,r1,10c <_Z41__static_initialization_and_destruction_0ii+0x64>
  d0:	78 01 00 00 	mvhi r1,0x0
  d4:	38 21 00 00 	ori r1,r1,0x0
  d8:	78 02 40 70 	mvhi r2,0x4070
  dc:	78 03 00 10 	mvhi r3,0x10
  e0:	f8 00 00 00 	calli e0 <_Z41__static_initialization_and_destruction_0ii+0x38>
  e4:	78 01 00 00 	mvhi r1,0x0
  e8:	38 21 00 00 	ori r1,r1,0x0
  ec:	f8 00 00 00 	calli ec <_Z41__static_initialization_and_destruction_0ii+0x44>
  f0:	78 01 00 00 	mvhi r1,0x0
  f4:	38 21 00 00 	ori r1,r1,0x0
  f8:	78 02 00 00 	mvhi r2,0x0
  fc:	38 42 00 00 	ori r2,r2,0x0
 100:	78 03 00 00 	mvhi r3,0x0
 104:	38 63 00 00 	ori r3,r3,0x0
 108:	f8 00 00 00 	calli 108 <_Z41__static_initialization_and_destruction_0ii+0x60>
 10c:	2b 9d 00 04 	lw ra,(sp+4)
 110:	37 9c 00 0c 	addi sp,sp,12
 114:	c3 a0 00 00 	ret

00000118 <_GLOBAL__I__ZN6Kernel6m_heapE>:
 118:	37 9c ff fc 	addi sp,sp,-4
 11c:	5b 9d 00 04 	sw (sp+4),ra
 120:	34 01 00 01 	mvi r1,1
 124:	38 02 ff ff 	mvu r2,0xffff
 128:	fb ff ff e0 	calli a8 <_Z41__static_initialization_and_destruction_0ii>
 12c:	2b 9d 00 04 	lw ra,(sp+4)
 130:	37 9c 00 04 	addi sp,sp,4
 134:	c3 a0 00 00 	ret

Disassembly of section .bss:

00000000 <_ZN6Kernel6m_heapE>:
	...

00000008 <_ZN6Kernel13m_event_queueE>:
	...

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	25 63 00 00 	xnori r3,r11,0x0

Disassembly of section .text._ZN5QueueIP5EventED2Ev:

00000000 <_ZN5QueueIP5EventED1Ev>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	f8 00 00 00 	calli 10 <_ZN5QueueIP5EventED1Ev+0x10>
  14:	2b 9d 00 04 	lw ra,(sp+4)
  18:	37 9c 00 08 	addi sp,sp,8
  1c:	c3 a0 00 00 	ret

Disassembly of section .text._ZN10EventQueueD2Ev:

00000000 <_ZN10EventQueueD1Ev>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	f8 00 00 00 	calli 10 <_ZN10EventQueueD1Ev+0x10>
  14:	2b 9d 00 04 	lw ra,(sp+4)
  18:	37 9c 00 08 	addi sp,sp,8
  1c:	c3 a0 00 00 	ret

Disassembly of section .text._ZN10LinkedListIP5EventED2Ev:

00000000 <_ZN10LinkedListIP5EventED1Ev>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	f8 00 00 00 	calli 10 <_ZN10LinkedListIP5EventED1Ev+0x10>
  14:	2b 9d 00 04 	lw ra,(sp+4)
  18:	37 9c 00 08 	addi sp,sp,8
  1c:	c3 a0 00 00 	ret

Disassembly of section .text._ZN10LinkedListIP5EventE5clearEv:

00000000 <_ZN10LinkedListIP5EventE5clearEv>:
   0:	37 9c ff f0 	addi sp,sp,-16
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	28 21 00 04 	lw r1,(r1+4)
  14:	5b 81 00 10 	sw (sp+16),r1
  18:	e0 00 00 08 	bi 38 <_ZN10LinkedListIP5EventE5clearEv+0x38>
  1c:	2b 81 00 10 	lw r1,(sp+16)
  20:	28 21 00 00 	lw r1,(r1+0)
  24:	5b 81 00 0c 	sw (sp+12),r1
  28:	2b 81 00 10 	lw r1,(sp+16)
  2c:	f8 00 00 00 	calli 2c <_ZN10LinkedListIP5EventE5clearEv+0x2c>
  30:	2b 81 00 0c 	lw r1,(sp+12)
  34:	5b 81 00 10 	sw (sp+16),r1
  38:	2b 81 00 10 	lw r1,(sp+16)
  3c:	7c 21 00 00 	cmpnei r1,r1,0
  40:	20 22 00 ff 	andi r2,r1,0xff
  44:	34 01 00 00 	mvi r1,0
  48:	5c 41 ff f5 	bne r2,r1,1c <_ZN10LinkedListIP5EventE5clearEv+0x1c>
  4c:	2b 81 00 08 	lw r1,(sp+8)
  50:	34 02 00 00 	mvi r2,0
  54:	58 22 00 00 	sw (r1+0),r2
  58:	2b 81 00 08 	lw r1,(sp+8)
  5c:	34 02 00 00 	mvi r2,0
  60:	58 22 00 04 	sw (r1+4),r2
  64:	2b 81 00 08 	lw r1,(sp+8)
  68:	34 02 00 00 	mvi r2,0
  6c:	58 22 00 08 	sw (r1+8),r2
  70:	2b 9d 00 04 	lw ra,(sp+4)
  74:	37 9c 00 10 	addi sp,sp,16
  78:	c3 a0 00 00 	ret

Disassembly of section .ctors:

00000000 <.ctors>:
   0:	00 00 00 00 	srui r0,r0,0

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <_GLOBAL__I__ZN6Kernel6m_heapE+0xa370>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

