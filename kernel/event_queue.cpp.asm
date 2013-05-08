
event_queue.o:     file format elf32-lm32


Disassembly of section .group:

00000000 <_ZN5QueueIP5EventEC5Ev>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 0f 	srui r0,r0,15

Disassembly of section .group:

00000000 <_ZN10LinkedListIP5EventEC5Ev>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 12 	srui r0,r0,18

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 13 	srui r0,r0,19

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 15 	srui r0,r0,21

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 17 	srui r0,r0,23

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 19 	srui r0,r0,25

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 1a 	srui r0,r0,26

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 1c 	srui r0,r0,28

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 1e 	srui r0,r0,30

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 20 	srui r0,r0,32

Disassembly of section .text:

00000000 <_ZN10EventQueueC1Ev>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	f8 00 00 00 	calli 10 <_ZN10EventQueueC1Ev+0x10>
  14:	78 01 00 00 	mvhi r1,0x0
  18:	38 21 00 00 	ori r1,r1,0x0
  1c:	f8 00 00 00 	calli 1c <_ZN10EventQueueC1Ev+0x1c>
  20:	2b 9d 00 04 	lw ra,(sp+4)
  24:	37 9c 00 08 	addi sp,sp,8
  28:	c3 a0 00 00 	ret

0000002c <_ZN10EventQueue4initEv>:
  2c:	37 9c ff f8 	addi sp,sp,-8
  30:	5b 9d 00 04 	sw (sp+4),ra
  34:	5b 81 00 08 	sw (sp+8),r1
  38:	2b 9d 00 04 	lw ra,(sp+4)
  3c:	37 9c 00 08 	addi sp,sp,8
  40:	c3 a0 00 00 	ret

00000044 <_ZN10EventQueue5readyEv>:
  44:	37 9c ff f8 	addi sp,sp,-8
  48:	5b 9d 00 04 	sw (sp+4),ra
  4c:	5b 81 00 08 	sw (sp+8),r1
  50:	2b 81 00 08 	lw r1,(sp+8)
  54:	f8 00 00 00 	calli 54 <_ZN10EventQueue5readyEv+0x10>
  58:	68 21 00 00 	cmpgi r1,r1,0
  5c:	20 21 00 ff 	andi r1,r1,0xff
  60:	2b 9d 00 04 	lw ra,(sp+4)
  64:	37 9c 00 08 	addi sp,sp,8
  68:	c3 a0 00 00 	ret

0000006c <_ZN10EventQueue3popEv>:
  6c:	37 9c ff f8 	addi sp,sp,-8
  70:	5b 9d 00 04 	sw (sp+4),ra
  74:	5b 81 00 08 	sw (sp+8),r1
  78:	2b 81 00 08 	lw r1,(sp+8)
  7c:	f8 00 00 00 	calli 7c <_ZN10EventQueue3popEv+0x10>
  80:	2b 9d 00 04 	lw ra,(sp+4)
  84:	37 9c 00 08 	addi sp,sp,8
  88:	c3 a0 00 00 	ret

0000008c <_ZN10EventQueue4pushEP5Event>:
  8c:	37 9c ff f4 	addi sp,sp,-12
  90:	5b 9d 00 04 	sw (sp+4),ra
  94:	5b 81 00 0c 	sw (sp+12),r1
  98:	5b 82 00 08 	sw (sp+8),r2
  9c:	2b 81 00 0c 	lw r1,(sp+12)
  a0:	37 82 00 08 	addi r2,sp,8
  a4:	f8 00 00 00 	calli a4 <_ZN10EventQueue4pushEP5Event+0x18>
  a8:	2b 9d 00 04 	lw ra,(sp+4)
  ac:	37 9c 00 0c 	addi sp,sp,12
  b0:	c3 a0 00 00 	ret

Disassembly of section .text._ZN5QueueIP5EventEC2Ev:

00000000 <_ZN5QueueIP5EventEC1Ev>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	f8 00 00 00 	calli 10 <_ZN5QueueIP5EventEC1Ev+0x10>
  14:	2b 9d 00 04 	lw ra,(sp+4)
  18:	37 9c 00 08 	addi sp,sp,8
  1c:	c3 a0 00 00 	ret

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	45 76 65 6e 	be r11,r22,195b8 <_ZN10EventQueue4pushEP5Event+0x1952c>
   4:	74 51 75 65 	cmpgui r17,r2,0x7565
   8:	75 65 20 69 	cmpgui r5,r11,0x2069
   c:	6e 69 74 69 	cmpgei r9,r19,29801
  10:	61 6c 69 7a 	andhi r12,r11,0x697a
  14:	65 64 00 00 	cmpei r4,r11,0

Disassembly of section .text._ZN10LinkedListIP5EventEC2Ev:

00000000 <_ZN10LinkedListIP5EventEC1Ev>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	34 02 00 00 	mvi r2,0
  14:	58 22 00 04 	sw (r1+4),r2
  18:	2b 81 00 08 	lw r1,(sp+8)
  1c:	34 02 00 00 	mvi r2,0
  20:	58 22 00 08 	sw (r1+8),r2
  24:	2b 81 00 08 	lw r1,(sp+8)
  28:	34 02 00 00 	mvi r2,0
  2c:	58 22 00 00 	sw (r1+0),r2
  30:	2b 9d 00 04 	lw ra,(sp+4)
  34:	37 9c 00 08 	addi sp,sp,8
  38:	c3 a0 00 00 	ret

Disassembly of section .text._ZNK5QueueIP5EventE4sizeEv:

00000000 <_ZNK5QueueIP5EventE4sizeEv>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	f8 00 00 00 	calli 10 <_ZNK5QueueIP5EventE4sizeEv+0x10>
  14:	2b 9d 00 04 	lw ra,(sp+4)
  18:	37 9c 00 08 	addi sp,sp,8
  1c:	c3 a0 00 00 	ret

Disassembly of section .text._ZN5QueueIP5EventE3popEv:

00000000 <_ZN5QueueIP5EventE3popEv>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	f8 00 00 00 	calli 10 <_ZN5QueueIP5EventE3popEv+0x10>
  14:	2b 9d 00 04 	lw ra,(sp+4)
  18:	37 9c 00 08 	addi sp,sp,8
  1c:	c3 a0 00 00 	ret

Disassembly of section .text._ZN5QueueIP5EventE4pushERKS1_:

00000000 <_ZN5QueueIP5EventE4pushERKS1_>:
   0:	37 9c ff f4 	addi sp,sp,-12
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 0c 	sw (sp+12),r1
   c:	5b 82 00 08 	sw (sp+8),r2
  10:	2b 81 00 0c 	lw r1,(sp+12)
  14:	2b 82 00 08 	lw r2,(sp+8)
  18:	f8 00 00 00 	calli 18 <_ZN5QueueIP5EventE4pushERKS1_+0x18>
  1c:	2b 9d 00 04 	lw ra,(sp+4)
  20:	37 9c 00 0c 	addi sp,sp,12
  24:	c3 a0 00 00 	ret

Disassembly of section .text._ZNK10LinkedListIP5EventE5countEv:

00000000 <_ZNK10LinkedListIP5EventE5countEv>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	28 21 00 00 	lw r1,(r1+0)
  14:	2b 9d 00 04 	lw ra,(sp+4)
  18:	37 9c 00 08 	addi sp,sp,8
  1c:	c3 a0 00 00 	ret

Disassembly of section .text._ZN10LinkedListIP5EventE8takeLastEv:

00000000 <_ZN10LinkedListIP5EventE8takeLastEv>:
   0:	37 9c ff f0 	addi sp,sp,-16
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	28 21 00 08 	lw r1,(r1+8)
  14:	5b 81 00 10 	sw (sp+16),r1
  18:	2b 81 00 10 	lw r1,(sp+16)
  1c:	28 21 00 08 	lw r1,(r1+8)
  20:	5b 81 00 0c 	sw (sp+12),r1
  24:	2b 81 00 08 	lw r1,(sp+8)
  28:	2b 82 00 10 	lw r2,(sp+16)
  2c:	f8 00 00 00 	calli 2c <_ZN10LinkedListIP5EventE8takeLastEv+0x2c>
  30:	2b 81 00 0c 	lw r1,(sp+12)
  34:	2b 9d 00 04 	lw ra,(sp+4)
  38:	37 9c 00 10 	addi sp,sp,16
  3c:	c3 a0 00 00 	ret

Disassembly of section .text._ZN10LinkedListIP5EventE8addFirstERKS1_:

00000000 <_ZN10LinkedListIP5EventE8addFirstERKS1_>:
   0:	37 9c ff f0 	addi sp,sp,-16
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 0c 	sw (sp+12),r1
   c:	5b 82 00 08 	sw (sp+8),r2
  10:	2b 81 00 0c 	lw r1,(sp+12)
  14:	2b 82 00 08 	lw r2,(sp+8)
  18:	34 03 00 00 	mvi r3,0
  1c:	34 04 00 00 	mvi r4,0
  20:	f8 00 00 00 	calli 20 <_ZN10LinkedListIP5EventE8addFirstERKS1_+0x20>
  24:	5b 81 00 10 	sw (sp+16),r1
  28:	2b 81 00 0c 	lw r1,(sp+12)
  2c:	28 22 00 00 	lw r2,(r1+0)
  30:	34 01 00 00 	mvi r1,0
  34:	5c 41 00 05 	bne r2,r1,48 <_ZN10LinkedListIP5EventE8addFirstERKS1_+0x48>
  38:	2b 81 00 0c 	lw r1,(sp+12)
  3c:	2b 82 00 10 	lw r2,(sp+16)
  40:	58 22 00 08 	sw (r1+8),r2
  44:	e0 00 00 09 	bi 68 <_ZN10LinkedListIP5EventE8addFirstERKS1_+0x68>
  48:	2b 81 00 0c 	lw r1,(sp+12)
  4c:	28 21 00 04 	lw r1,(r1+4)
  50:	2b 82 00 10 	lw r2,(sp+16)
  54:	58 22 00 04 	sw (r1+4),r2
  58:	2b 81 00 0c 	lw r1,(sp+12)
  5c:	28 22 00 04 	lw r2,(r1+4)
  60:	2b 81 00 10 	lw r1,(sp+16)
  64:	58 22 00 00 	sw (r1+0),r2
  68:	2b 81 00 0c 	lw r1,(sp+12)
  6c:	2b 82 00 10 	lw r2,(sp+16)
  70:	58 22 00 04 	sw (r1+4),r2
  74:	2b 81 00 0c 	lw r1,(sp+12)
  78:	28 21 00 00 	lw r1,(r1+0)
  7c:	34 22 00 01 	addi r2,r1,1
  80:	2b 81 00 0c 	lw r1,(sp+12)
  84:	58 22 00 00 	sw (r1+0),r2
  88:	2b 9d 00 04 	lw ra,(sp+4)
  8c:	37 9c 00 10 	addi sp,sp,16
  90:	c3 a0 00 00 	ret

Disassembly of section .text._ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE:

00000000 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE>:
   0:	37 9c ff ec 	addi sp,sp,-20
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 0c 	sw (sp+12),r1
   c:	5b 82 00 08 	sw (sp+8),r2
  10:	2b 82 00 08 	lw r2,(sp+8)
  14:	34 01 00 00 	mvi r1,0
  18:	44 41 00 41 	be r2,r1,11c <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0x11c>
  1c:	2b 81 00 0c 	lw r1,(sp+12)
  20:	28 22 00 00 	lw r2,(r1+0)
  24:	34 01 00 00 	mvi r1,0
  28:	44 41 00 3f 	be r2,r1,124 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0x124>
  2c:	2b 81 00 0c 	lw r1,(sp+12)
  30:	28 22 00 00 	lw r2,(r1+0)
  34:	34 01 00 01 	mvi r1,1
  38:	5c 41 00 0d 	bne r2,r1,6c <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0x6c>
  3c:	2b 81 00 08 	lw r1,(sp+8)
  40:	f8 00 00 00 	calli 40 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0x40>
  44:	2b 81 00 0c 	lw r1,(sp+12)
  48:	34 02 00 00 	mvi r2,0
  4c:	58 22 00 04 	sw (r1+4),r2
  50:	2b 81 00 0c 	lw r1,(sp+12)
  54:	34 02 00 00 	mvi r2,0
  58:	58 22 00 08 	sw (r1+8),r2
  5c:	2b 81 00 0c 	lw r1,(sp+12)
  60:	34 02 00 00 	mvi r2,0
  64:	58 22 00 00 	sw (r1+0),r2
  68:	e0 00 00 30 	bi 128 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0x128>
  6c:	2b 81 00 08 	lw r1,(sp+8)
  70:	28 21 00 04 	lw r1,(r1+4)
  74:	5b 81 00 14 	sw (sp+20),r1
  78:	2b 81 00 08 	lw r1,(sp+8)
  7c:	28 21 00 00 	lw r1,(r1+0)
  80:	5b 81 00 10 	sw (sp+16),r1
  84:	2b 81 00 0c 	lw r1,(sp+12)
  88:	28 22 00 04 	lw r2,(r1+4)
  8c:	2b 81 00 08 	lw r1,(sp+8)
  90:	5c 41 00 09 	bne r2,r1,b4 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0xb4>
  94:	2b 81 00 0c 	lw r1,(sp+12)
  98:	2b 82 00 10 	lw r2,(sp+16)
  9c:	58 22 00 04 	sw (r1+4),r2
  a0:	2b 81 00 0c 	lw r1,(sp+12)
  a4:	28 21 00 04 	lw r1,(r1+4)
  a8:	34 02 00 00 	mvi r2,0
  ac:	58 22 00 04 	sw (r1+4),r2
  b0:	e0 00 00 13 	bi fc <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0xfc>
  b4:	2b 81 00 0c 	lw r1,(sp+12)
  b8:	28 22 00 08 	lw r2,(r1+8)
  bc:	2b 81 00 08 	lw r1,(sp+8)
  c0:	5c 41 00 09 	bne r2,r1,e4 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0xe4>
  c4:	2b 81 00 0c 	lw r1,(sp+12)
  c8:	2b 82 00 14 	lw r2,(sp+20)
  cc:	58 22 00 08 	sw (r1+8),r2
  d0:	2b 81 00 0c 	lw r1,(sp+12)
  d4:	28 21 00 08 	lw r1,(r1+8)
  d8:	34 02 00 00 	mvi r2,0
  dc:	58 22 00 00 	sw (r1+0),r2
  e0:	e0 00 00 07 	bi fc <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0xfc>
  e4:	2b 81 00 14 	lw r1,(sp+20)
  e8:	2b 82 00 10 	lw r2,(sp+16)
  ec:	58 22 00 00 	sw (r1+0),r2
  f0:	2b 81 00 10 	lw r1,(sp+16)
  f4:	2b 82 00 14 	lw r2,(sp+20)
  f8:	58 22 00 04 	sw (r1+4),r2
  fc:	2b 81 00 08 	lw r1,(sp+8)
 100:	f8 00 00 00 	calli 100 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0x100>
 104:	2b 81 00 0c 	lw r1,(sp+12)
 108:	28 21 00 00 	lw r1,(r1+0)
 10c:	34 22 ff ff 	addi r2,r1,-1
 110:	2b 81 00 0c 	lw r1,(sp+12)
 114:	58 22 00 00 	sw (r1+0),r2
 118:	e0 00 00 04 	bi 128 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0x128>
 11c:	34 00 00 00 	nop
 120:	e0 00 00 02 	bi 128 <_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE+0x128>
 124:	34 00 00 00 	nop
 128:	2b 9d 00 04 	lw ra,(sp+4)
 12c:	37 9c 00 14 	addi sp,sp,20
 130:	c3 a0 00 00 	ret

Disassembly of section .text._ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_:

00000000 <_ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_>:
   0:	37 9c ff e8 	addi sp,sp,-24
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 14 	sw (sp+20),r1
   c:	5b 82 00 10 	sw (sp+16),r2
  10:	5b 83 00 0c 	sw (sp+12),r3
  14:	5b 84 00 08 	sw (sp+8),r4
  18:	34 01 00 0c 	mvi r1,12
  1c:	f8 00 00 00 	calli 1c <_ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_+0x1c>
  20:	5b 81 00 18 	sw (sp+24),r1
  24:	2b 81 00 10 	lw r1,(sp+16)
  28:	28 22 00 00 	lw r2,(r1+0)
  2c:	2b 81 00 18 	lw r1,(sp+24)
  30:	58 22 00 08 	sw (r1+8),r2
  34:	2b 81 00 18 	lw r1,(sp+24)
  38:	2b 82 00 0c 	lw r2,(sp+12)
  3c:	58 22 00 04 	sw (r1+4),r2
  40:	2b 81 00 18 	lw r1,(sp+24)
  44:	2b 82 00 08 	lw r2,(sp+8)
  48:	58 22 00 00 	sw (r1+0),r2
  4c:	2b 81 00 18 	lw r1,(sp+24)
  50:	2b 9d 00 04 	lw ra,(sp+4)
  54:	37 9c 00 18 	addi sp,sp,24
  58:	c3 a0 00 00 	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <_ZN10EventQueue4pushEP5Event+0xa3fc>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

