
heap.o:     file format elf32-lm32


Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 07 	srui r0,r0,7

Disassembly of section .group:

00000000 <.group>:
   0:	00 00 00 01 	srui r0,r0,1
   4:	00 00 00 08 	srui r0,r0,8

Disassembly of section .text:

00000000 <_ZN4HeapC1EPvi>:
   0:	37 9c ff f0 	addi sp,sp,-16
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 10 	sw (sp+16),r1
   c:	5b 82 00 0c 	sw (sp+12),r2
  10:	5b 83 00 08 	sw (sp+8),r3
  14:	2b 82 00 0c 	lw r2,(sp+12)
  18:	2b 81 00 10 	lw r1,(sp+16)
  1c:	58 22 00 00 	sw (r1+0),r2
  20:	2b 81 00 10 	lw r1,(sp+16)
  24:	2b 82 00 08 	lw r2,(sp+8)
  28:	58 22 00 04 	sw (r1+4),r2
  2c:	2b 81 00 10 	lw r1,(sp+16)
  30:	28 21 00 00 	lw r1,(r1+0)
  34:	34 02 00 00 	mvi r2,0
  38:	0c 22 00 08 	sh (r1+8),r2
  3c:	2b 81 00 10 	lw r1,(sp+16)
  40:	28 21 00 00 	lw r1,(r1+0)
  44:	2b 83 00 0c 	lw r3,(sp+12)
  48:	2b 82 00 08 	lw r2,(sp+8)
  4c:	b4 62 10 00 	add r2,r3,r2
  50:	58 22 00 00 	sw (r1+0),r2
  54:	2b 81 00 10 	lw r1,(sp+16)
  58:	28 21 00 00 	lw r1,(r1+0)
  5c:	34 02 00 00 	mvi r2,0
  60:	58 22 00 04 	sw (r1+4),r2
  64:	2b 9d 00 04 	lw ra,(sp+4)
  68:	37 9c 00 10 	addi sp,sp,16
  6c:	c3 a0 00 00 	ret

00000070 <_ZN4Heap6mallocEj>:
  70:	37 9c ff e0 	addi sp,sp,-32
  74:	5b 8b 00 08 	sw (sp+8),r11
  78:	5b 9d 00 04 	sw (sp+4),ra
  7c:	5b 81 00 10 	sw (sp+16),r1
  80:	5b 82 00 0c 	sw (sp+12),r2
  84:	34 01 00 00 	mvi r1,0
  88:	33 81 00 1b 	sb (sp+27),r1
  8c:	2b 82 00 0c 	lw r2,(sp+12)
  90:	34 01 00 00 	mvi r1,0
  94:	5c 41 00 03 	bne r2,r1,a0 <_ZN4Heap6mallocEj+0x30>
  98:	34 01 00 00 	mvi r1,0
  9c:	e0 00 00 52 	bi 1e4 <_ZN4Heap6mallocEj+0x174>
  a0:	2b 81 00 10 	lw r1,(sp+16)
  a4:	28 21 00 00 	lw r1,(r1+0)
  a8:	5b 81 00 20 	sw (sp+32),r1
  ac:	34 01 ff ff 	mvi r1,-1
  b0:	5b 81 00 1c 	sw (sp+28),r1
  b4:	e0 00 00 04 	bi c4 <_ZN4Heap6mallocEj+0x54>
  b8:	2b 81 00 20 	lw r1,(sp+32)
  bc:	28 21 00 00 	lw r1,(r1+0)
  c0:	5b 81 00 20 	sw (sp+32),r1
  c4:	2b 81 00 20 	lw r1,(sp+32)
  c8:	2c 21 00 08 	lhu r1,(r1+8)
  cc:	7c 21 00 00 	cmpnei r1,r1,0
  d0:	20 22 00 ff 	andi r2,r1,0xff
  d4:	34 01 00 00 	mvi r1,0
  d8:	5c 41 ff f8 	bne r2,r1,b8 <_ZN4Heap6mallocEj+0x48>
  dc:	2b 82 00 20 	lw r2,(sp+32)
  e0:	2b 81 00 0c 	lw r1,(sp+12)
  e4:	b4 41 08 00 	add r1,r2,r1
  e8:	34 2b 00 0c 	addi r11,r1,12
  ec:	2b 81 00 10 	lw r1,(sp+16)
  f0:	f8 00 00 00 	calli f0 <_ZN4Heap6mallocEj+0x80>
  f4:	f4 2b 08 00 	cmpgu r1,r1,r11
  f8:	20 22 00 ff 	andi r2,r1,0xff
  fc:	34 01 00 00 	mvi r1,0
 100:	44 41 00 38 	be r2,r1,1e0 <_ZN4Heap6mallocEj+0x170>
 104:	2b 81 00 20 	lw r1,(sp+32)
 108:	34 02 00 01 	mvi r2,1
 10c:	0c 22 00 08 	sh (r1+8),r2
 110:	2b 81 00 10 	lw r1,(sp+16)
 114:	2b 82 00 20 	lw r2,(sp+32)
 118:	f8 00 00 00 	calli 118 <_ZN4Heap6mallocEj+0xa8>
 11c:	b8 20 10 00 	mv r2,r1
 120:	2b 81 00 0c 	lw r1,(sp+12)
 124:	34 21 00 1c 	addi r1,r1,28
 128:	f0 41 08 00 	cmpgeu r1,r2,r1
 12c:	33 81 00 1b 	sb (sp+27),r1
 130:	2b 81 00 20 	lw r1,(sp+32)
 134:	28 21 00 00 	lw r1,(r1+0)
 138:	5b 81 00 14 	sw (sp+20),r1
 13c:	43 82 00 1b 	lbu r2,(sp+27)
 140:	34 01 00 00 	mvi r1,0
 144:	44 41 00 24 	be r2,r1,1d4 <_ZN4Heap6mallocEj+0x164>
 148:	2b 82 00 20 	lw r2,(sp+32)
 14c:	2b 81 00 0c 	lw r1,(sp+12)
 150:	b4 41 08 00 	add r1,r2,r1
 154:	34 21 00 0c 	addi r1,r1,12
 158:	b8 20 10 00 	mv r2,r1
 15c:	2b 81 00 20 	lw r1,(sp+32)
 160:	58 22 00 00 	sw (r1+0),r2
 164:	2b 81 00 20 	lw r1,(sp+32)
 168:	28 21 00 00 	lw r1,(r1+0)
 16c:	34 02 00 00 	mvi r2,0
 170:	0c 22 00 08 	sh (r1+8),r2
 174:	2b 81 00 20 	lw r1,(sp+32)
 178:	28 21 00 00 	lw r1,(r1+0)
 17c:	2b 82 00 14 	lw r2,(sp+20)
 180:	58 22 00 00 	sw (r1+0),r2
 184:	2b 81 00 20 	lw r1,(sp+32)
 188:	28 21 00 00 	lw r1,(r1+0)
 18c:	2b 82 00 20 	lw r2,(sp+32)
 190:	58 22 00 04 	sw (r1+4),r2
 194:	2b 81 00 20 	lw r1,(sp+32)
 198:	28 21 00 00 	lw r1,(r1+0)
 19c:	28 21 00 00 	lw r1,(r1+0)
 1a0:	b8 20 58 00 	mv r11,r1
 1a4:	2b 81 00 10 	lw r1,(sp+16)
 1a8:	f8 00 00 00 	calli 1a8 <_ZN4Heap6mallocEj+0x138>
 1ac:	fd 61 08 00 	cmpne r1,r11,r1
 1b0:	20 22 00 ff 	andi r2,r1,0xff
 1b4:	34 01 00 00 	mvi r1,0
 1b8:	44 41 00 07 	be r2,r1,1d4 <_ZN4Heap6mallocEj+0x164>
 1bc:	2b 81 00 20 	lw r1,(sp+32)
 1c0:	28 21 00 00 	lw r1,(r1+0)
 1c4:	28 21 00 00 	lw r1,(r1+0)
 1c8:	2b 82 00 20 	lw r2,(sp+32)
 1cc:	28 42 00 00 	lw r2,(r2+0)
 1d0:	58 22 00 04 	sw (r1+4),r2
 1d4:	2b 81 00 20 	lw r1,(sp+32)
 1d8:	34 21 00 0c 	addi r1,r1,12
 1dc:	5b 81 00 1c 	sw (sp+28),r1
 1e0:	2b 81 00 1c 	lw r1,(sp+28)
 1e4:	2b 8b 00 08 	lw r11,(sp+8)
 1e8:	2b 9d 00 04 	lw ra,(sp+4)
 1ec:	37 9c 00 20 	addi sp,sp,32
 1f0:	c3 a0 00 00 	ret

000001f4 <_ZN4Heap4freeEPv>:
 1f4:	37 9c ff f0 	addi sp,sp,-16
 1f8:	5b 9d 00 04 	sw (sp+4),ra
 1fc:	5b 81 00 0c 	sw (sp+12),r1
 200:	5b 82 00 08 	sw (sp+8),r2
 204:	2b 81 00 08 	lw r1,(sp+8)
 208:	34 21 ff f4 	addi r1,r1,-12
 20c:	5b 81 00 10 	sw (sp+16),r1
 210:	2b 81 00 10 	lw r1,(sp+16)
 214:	34 02 00 00 	mvi r2,0
 218:	0c 22 00 08 	sh (r1+8),r2
 21c:	2b 81 00 10 	lw r1,(sp+16)
 220:	28 22 00 00 	lw r2,(r1+0)
 224:	34 01 00 00 	mvi r1,0
 228:	44 41 00 19 	be r2,r1,28c <_ZN4Heap4freeEPv+0x98>
 22c:	2b 81 00 10 	lw r1,(sp+16)
 230:	28 21 00 00 	lw r1,(r1+0)
 234:	2c 22 00 08 	lhu r2,(r1+8)
 238:	34 01 00 00 	mvi r1,0
 23c:	5c 41 00 14 	bne r2,r1,28c <_ZN4Heap4freeEPv+0x98>
 240:	2b 81 00 10 	lw r1,(sp+16)
 244:	28 21 00 00 	lw r1,(r1+0)
 248:	28 22 00 00 	lw r2,(r1+0)
 24c:	2b 81 00 10 	lw r1,(sp+16)
 250:	58 22 00 00 	sw (r1+0),r2
 254:	2b 81 00 10 	lw r1,(sp+16)
 258:	28 21 00 00 	lw r1,(r1+0)
 25c:	b8 20 10 00 	mv r2,r1
 260:	2b 81 00 0c 	lw r1,(sp+12)
 264:	28 21 00 00 	lw r1,(r1+0)
 268:	b8 20 18 00 	mv r3,r1
 26c:	2b 81 00 0c 	lw r1,(sp+12)
 270:	28 21 00 04 	lw r1,(r1+4)
 274:	b4 61 08 00 	add r1,r3,r1
 278:	50 41 00 05 	bgeu r2,r1,28c <_ZN4Heap4freeEPv+0x98>
 27c:	2b 81 00 10 	lw r1,(sp+16)
 280:	28 21 00 00 	lw r1,(r1+0)
 284:	2b 82 00 10 	lw r2,(sp+16)
 288:	58 22 00 04 	sw (r1+4),r2
 28c:	2b 81 00 10 	lw r1,(sp+16)
 290:	28 22 00 04 	lw r2,(r1+4)
 294:	34 01 00 00 	mvi r1,0
 298:	44 41 00 10 	be r2,r1,2d8 <_ZN4Heap4freeEPv+0xe4>
 29c:	2b 81 00 10 	lw r1,(sp+16)
 2a0:	28 21 00 04 	lw r1,(r1+4)
 2a4:	2c 22 00 08 	lhu r2,(r1+8)
 2a8:	34 01 00 00 	mvi r1,0
 2ac:	5c 41 00 0b 	bne r2,r1,2d8 <_ZN4Heap4freeEPv+0xe4>
 2b0:	2b 81 00 10 	lw r1,(sp+16)
 2b4:	28 21 00 04 	lw r1,(r1+4)
 2b8:	2b 82 00 10 	lw r2,(sp+16)
 2bc:	28 42 00 00 	lw r2,(r2+0)
 2c0:	58 22 00 00 	sw (r1+0),r2
 2c4:	2b 81 00 10 	lw r1,(sp+16)
 2c8:	28 21 00 00 	lw r1,(r1+0)
 2cc:	2b 82 00 10 	lw r2,(sp+16)
 2d0:	28 42 00 04 	lw r2,(r2+4)
 2d4:	58 22 00 04 	sw (r1+4),r2
 2d8:	2b 9d 00 04 	lw ra,(sp+4)
 2dc:	37 9c 00 10 	addi sp,sp,16
 2e0:	c3 a0 00 00 	ret

000002e4 <_ZN4Heap5debugEv>:
 2e4:	37 9c ff f0 	addi sp,sp,-16
 2e8:	5b 9d 00 04 	sw (sp+4),ra
 2ec:	5b 81 00 08 	sw (sp+8),r1
 2f0:	34 01 00 00 	mvi r1,0
 2f4:	5b 81 00 10 	sw (sp+16),r1
 2f8:	2b 81 00 08 	lw r1,(sp+8)
 2fc:	28 21 00 00 	lw r1,(r1+0)
 300:	5b 81 00 0c 	sw (sp+12),r1
 304:	e0 00 00 20 	bi 384 <_ZN4Heap5debugEv+0xa0>
 308:	2b 81 00 0c 	lw r1,(sp+12)
 30c:	2c 21 00 08 	lhu r1,(r1+8)
 310:	b8 20 20 00 	mv r4,r1
 314:	2b 81 00 0c 	lw r1,(sp+12)
 318:	28 21 00 00 	lw r1,(r1+0)
 31c:	b8 20 10 00 	mv r2,r1
 320:	2b 81 00 0c 	lw r1,(sp+12)
 324:	c8 41 28 00 	sub r5,r2,r1
 328:	2b 81 00 0c 	lw r1,(sp+12)
 32c:	28 26 00 00 	lw r6,(r1+0)
 330:	2b 81 00 0c 	lw r1,(sp+12)
 334:	28 27 00 04 	lw r7,(r1+4)
 338:	78 01 00 00 	mvhi r1,0x0
 33c:	38 21 00 00 	ori r1,r1,0x0
 340:	2b 82 00 10 	lw r2,(sp+16)
 344:	2b 83 00 0c 	lw r3,(sp+12)
 348:	f8 00 00 00 	calli 348 <_ZN4Heap5debugEv+0x64>
 34c:	2b 81 00 0c 	lw r1,(sp+12)
 350:	28 21 00 00 	lw r1,(r1+0)
 354:	5b 81 00 0c 	sw (sp+12),r1
 358:	2b 81 00 0c 	lw r1,(sp+12)
 35c:	28 22 00 00 	lw r2,(r1+0)
 360:	2b 81 00 0c 	lw r1,(sp+12)
 364:	5c 41 00 05 	bne r2,r1,378 <_ZN4Heap5debugEv+0x94>
 368:	78 01 00 00 	mvhi r1,0x0
 36c:	38 21 00 00 	ori r1,r1,0x0
 370:	f8 00 00 00 	calli 370 <_ZN4Heap5debugEv+0x8c>
 374:	e0 00 00 0f 	bi 3b0 <_ZN4Heap5debugEv+0xcc>
 378:	2b 81 00 10 	lw r1,(sp+16)
 37c:	34 21 00 01 	addi r1,r1,1
 380:	5b 81 00 10 	sw (sp+16),r1
 384:	2b 81 00 0c 	lw r1,(sp+12)
 388:	2b 82 00 08 	lw r2,(sp+8)
 38c:	28 42 00 00 	lw r2,(r2+0)
 390:	b8 40 18 00 	mv r3,r2
 394:	2b 82 00 08 	lw r2,(sp+8)
 398:	28 42 00 04 	lw r2,(r2+4)
 39c:	b4 62 10 00 	add r2,r3,r2
 3a0:	f4 41 08 00 	cmpgu r1,r2,r1
 3a4:	20 22 00 ff 	andi r2,r1,0xff
 3a8:	34 01 00 00 	mvi r1,0
 3ac:	5c 41 ff d7 	bne r2,r1,308 <_ZN4Heap5debugEv+0x24>
 3b0:	2b 9d 00 04 	lw ra,(sp+4)
 3b4:	37 9c 00 10 	addi sp,sp,16
 3b8:	c3 a0 00 00 	ret

000003bc <_Znwj>:
 3bc:	37 9c ff f4 	addi sp,sp,-12
 3c0:	5b 9d 00 04 	sw (sp+4),ra
 3c4:	5b 81 00 08 	sw (sp+8),r1
 3c8:	78 01 00 00 	mvhi r1,0x0
 3cc:	38 21 00 00 	ori r1,r1,0x0
 3d0:	2b 82 00 08 	lw r2,(sp+8)
 3d4:	f8 00 00 00 	calli 3d4 <_Znwj+0x18>
 3d8:	5b 81 00 0c 	sw (sp+12),r1
 3dc:	2b 81 00 0c 	lw r1,(sp+12)
 3e0:	2b 9d 00 04 	lw ra,(sp+4)
 3e4:	37 9c 00 0c 	addi sp,sp,12
 3e8:	c3 a0 00 00 	ret

000003ec <_Znaj>:
 3ec:	37 9c ff f4 	addi sp,sp,-12
 3f0:	5b 9d 00 04 	sw (sp+4),ra
 3f4:	5b 81 00 08 	sw (sp+8),r1
 3f8:	78 01 00 00 	mvhi r1,0x0
 3fc:	38 21 00 00 	ori r1,r1,0x0
 400:	2b 82 00 08 	lw r2,(sp+8)
 404:	f8 00 00 00 	calli 404 <_Znaj+0x18>
 408:	5b 81 00 0c 	sw (sp+12),r1
 40c:	2b 81 00 0c 	lw r1,(sp+12)
 410:	2b 9d 00 04 	lw ra,(sp+4)
 414:	37 9c 00 0c 	addi sp,sp,12
 418:	c3 a0 00 00 	ret

0000041c <_ZdlPv>:
 41c:	37 9c ff f8 	addi sp,sp,-8
 420:	5b 9d 00 04 	sw (sp+4),ra
 424:	5b 81 00 08 	sw (sp+8),r1
 428:	78 01 00 00 	mvhi r1,0x0
 42c:	38 21 00 00 	ori r1,r1,0x0
 430:	2b 82 00 08 	lw r2,(sp+8)
 434:	f8 00 00 00 	calli 434 <_ZdlPv+0x18>
 438:	2b 9d 00 04 	lw ra,(sp+4)
 43c:	37 9c 00 08 	addi sp,sp,8
 440:	c3 a0 00 00 	ret

00000444 <_ZdaPv>:
 444:	37 9c ff f8 	addi sp,sp,-8
 448:	5b 9d 00 04 	sw (sp+4),ra
 44c:	5b 81 00 08 	sw (sp+8),r1
 450:	78 01 00 00 	mvhi r1,0x0
 454:	38 21 00 00 	ori r1,r1,0x0
 458:	2b 82 00 08 	lw r2,(sp+8)
 45c:	f8 00 00 00 	calli 45c <_ZdaPv+0x18>
 460:	2b 9d 00 04 	lw ra,(sp+4)
 464:	37 9c 00 08 	addi sp,sp,8
 468:	c3 a0 00 00 	ret

Disassembly of section .text._ZNK4Heap9blockSizeEPNS_10HeapHeaderE:

00000000 <_ZNK4Heap9blockSizeEPNS_10HeapHeaderE>:
   0:	37 9c ff f4 	addi sp,sp,-12
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 0c 	sw (sp+12),r1
   c:	5b 82 00 08 	sw (sp+8),r2
  10:	2b 81 00 08 	lw r1,(sp+8)
  14:	28 21 00 00 	lw r1,(r1+0)
  18:	b8 20 10 00 	mv r2,r1
  1c:	2b 81 00 08 	lw r1,(sp+8)
  20:	c8 41 08 00 	sub r1,r2,r1
  24:	2b 9d 00 04 	lw ra,(sp+4)
  28:	37 9c 00 0c 	addi sp,sp,12
  2c:	c3 a0 00 00 	ret

Disassembly of section .text._ZNK4Heap10addressMaxEv:

00000000 <_ZNK4Heap10addressMaxEv>:
   0:	37 9c ff f8 	addi sp,sp,-8
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	5b 81 00 08 	sw (sp+8),r1
   c:	2b 81 00 08 	lw r1,(sp+8)
  10:	28 21 00 00 	lw r1,(r1+0)
  14:	b8 20 10 00 	mv r2,r1
  18:	2b 81 00 08 	lw r1,(sp+8)
  1c:	28 21 00 04 	lw r1,(r1+4)
  20:	b4 41 08 00 	add r1,r2,r1
  24:	2b 9d 00 04 	lw ra,(sp+4)
  28:	37 9c 00 08 	addi sp,sp,8
  2c:	c3 a0 00 00 	ret

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	25 64 2c 20 	xnori r4,r11,0x2c20
   4:	40 20 3d 20 	lbu r0,(r1+15648)
   8:	25 78 2c 20 	xnori r24,r11,0x2c20
   c:	75 20 3d 20 	cmpgui r0,r9,0x3d20
  10:	25 64 2c 20 	xnori r4,r11,0x2c20
  14:	73 20 3d 20 	cmpgeui r0,r25,0x3d20
  18:	25 64 2c 20 	xnori r4,r11,0x2c20
  1c:	6e 65 78 74 	cmpgei r5,r19,30836
  20:	20 3d 20 25 	andi ra,r1,0x2025
  24:	78 2c 20 70 	orhi r12,r1,0x2070
  28:	72 65 76 20 	cmpgeui r5,r19,0x7620
  2c:	3d 20 25 78 	sli r0,r9,9592
  30:	00 00 00 00 	srui r0,r0,0
  34:	48 65 61 70 	bg r3,r5,185f4 <_ZdaPv+0x181b0>
  38:	20 65 72 72 	andi r5,r3,0x7272
  3c:	6f 72 21 00 	cmpgei r18,fp,8448

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <_ZdaPv+0xa044>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

