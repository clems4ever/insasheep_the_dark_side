
uart.o:     file format elf32-lm32


Disassembly of section .text:

00000000 <_ZN4Uart7getcharEv>:
   0:	37 9c ff fc 	addi sp,sp,-4
   4:	5b 9d 00 04 	sw (sp+4),ra
   8:	34 00 00 00 	nop
   c:	78 01 00 00 	mvhi r1,0x0
  10:	38 21 00 00 	ori r1,r1,0x0
  14:	28 21 00 00 	lw r1,(r1+0)
  18:	28 21 00 00 	lw r1,(r1+0)
  1c:	20 21 00 01 	andi r1,r1,0x1
  20:	20 21 00 ff 	andi r1,r1,0xff
  24:	18 21 00 01 	xori r1,r1,0x1
  28:	20 22 00 ff 	andi r2,r1,0xff
  2c:	34 01 00 00 	mvi r1,0
  30:	5c 41 ff f7 	bne r2,r1,c <_ZN4Uart7getcharEv+0xc>
  34:	78 01 00 00 	mvhi r1,0x0
  38:	38 21 00 00 	ori r1,r1,0x0
  3c:	28 21 00 00 	lw r1,(r1+0)
  40:	28 21 00 04 	lw r1,(r1+4)
  44:	20 21 00 ff 	andi r1,r1,0xff
  48:	2b 9d 00 04 	lw ra,(sp+4)
  4c:	37 9c 00 04 	addi sp,sp,4
  50:	c3 a0 00 00 	ret

00000054 <_ZN4Uart7putcharEc>:
  54:	37 9c ff f8 	addi sp,sp,-8
  58:	5b 9d 00 04 	sw (sp+4),ra
  5c:	33 81 00 08 	sb (sp+8),r1
  60:	78 01 00 00 	mvhi r1,0x0
  64:	38 21 00 00 	ori r1,r1,0x0
  68:	28 21 00 00 	lw r1,(r1+0)
  6c:	28 21 00 00 	lw r1,(r1+0)
  70:	20 21 00 10 	andi r1,r1,0x10
  74:	7c 21 00 00 	cmpnei r1,r1,0
  78:	20 22 00 ff 	andi r2,r1,0xff
  7c:	34 01 00 00 	mvi r1,0
  80:	5c 41 ff f8 	bne r2,r1,60 <_ZN4Uart7putcharEc+0xc>
  84:	78 01 00 00 	mvhi r1,0x0
  88:	38 21 00 00 	ori r1,r1,0x0
  8c:	28 21 00 00 	lw r1,(r1+0)
  90:	43 82 00 08 	lbu r2,(sp+8)
  94:	58 22 00 04 	sw (r1+4),r2
  98:	2b 9d 00 04 	lw ra,(sp+4)
  9c:	37 9c 00 08 	addi sp,sp,8
  a0:	c3 a0 00 00 	ret

000000a4 <_ZN4Uart5printEPKc>:
  a4:	37 9c ff f4 	addi sp,sp,-12
  a8:	5b 9d 00 04 	sw (sp+4),ra
  ac:	5b 81 00 08 	sw (sp+8),r1
  b0:	2b 81 00 08 	lw r1,(sp+8)
  b4:	5b 81 00 0c 	sw (sp+12),r1
  b8:	e0 00 00 07 	bi d4 <_ZN4Uart5printEPKc+0x30>
  bc:	2b 81 00 0c 	lw r1,(sp+12)
  c0:	40 21 00 00 	lbu r1,(r1+0)
  c4:	f8 00 00 00 	calli c4 <_ZN4Uart5printEPKc+0x20>
  c8:	2b 81 00 0c 	lw r1,(sp+12)
  cc:	34 21 00 01 	addi r1,r1,1
  d0:	5b 81 00 0c 	sw (sp+12),r1
  d4:	2b 81 00 0c 	lw r1,(sp+12)
  d8:	40 21 00 00 	lbu r1,(r1+0)
  dc:	7c 21 00 00 	cmpnei r1,r1,0
  e0:	20 22 00 ff 	andi r2,r1,0xff
  e4:	34 01 00 00 	mvi r1,0
  e8:	5c 41 ff f5 	bne r2,r1,bc <_ZN4Uart5printEPKc+0x18>
  ec:	2b 9d 00 04 	lw ra,(sp+4)
  f0:	37 9c 00 0c 	addi sp,sp,12
  f4:	c3 a0 00 00 	ret

000000f8 <_ZN4Uart7printlnEPKc>:
  f8:	37 9c ff f8 	addi sp,sp,-8
  fc:	5b 9d 00 04 	sw (sp+4),ra
 100:	5b 81 00 08 	sw (sp+8),r1
 104:	2b 81 00 08 	lw r1,(sp+8)
 108:	f8 00 00 00 	calli 108 <_ZN4Uart7printlnEPKc+0x10>
 10c:	78 01 00 00 	mvhi r1,0x0
 110:	38 21 00 00 	ori r1,r1,0x0
 114:	f8 00 00 00 	calli 114 <_ZN4Uart7printlnEPKc+0x1c>
 118:	2b 9d 00 04 	lw ra,(sp+4)
 11c:	37 9c 00 08 	addi sp,sp,8
 120:	c3 a0 00 00 	ret

00000124 <_ZN4Uart8skiplineEv>:
 124:	37 9c ff fc 	addi sp,sp,-4
 128:	5b 9d 00 04 	sw (sp+4),ra
 12c:	78 01 00 00 	mvhi r1,0x0
 130:	38 21 00 00 	ori r1,r1,0x0
 134:	f8 00 00 00 	calli 134 <_ZN4Uart8skiplineEv+0x10>
 138:	2b 9d 00 04 	lw ra,(sp+4)
 13c:	37 9c 00 04 	addi sp,sp,4
 140:	c3 a0 00 00 	ret

00000144 <_ZN4Uart6getstrEPci>:
 144:	37 9c ff ec 	addi sp,sp,-20
 148:	5b 9d 00 04 	sw (sp+4),ra
 14c:	5b 81 00 0c 	sw (sp+12),r1
 150:	5b 82 00 08 	sw (sp+8),r2
 154:	34 01 00 00 	mvi r1,0
 158:	5b 81 00 14 	sw (sp+20),r1
 15c:	f8 00 00 00 	calli 15c <_ZN4Uart6getstrEPci+0x18>
 160:	33 81 00 13 	sb (sp+19),r1
 164:	43 82 00 13 	lbu r2,(sp+19)
 168:	34 01 00 0d 	mvi r1,13
 16c:	44 41 00 03 	be r2,r1,178 <_ZN4Uart6getstrEPci+0x34>
 170:	43 81 00 13 	lbu r1,(sp+19)
 174:	f8 00 00 00 	calli 174 <_ZN4Uart6getstrEPci+0x30>
 178:	2b 81 00 14 	lw r1,(sp+20)
 17c:	2b 82 00 0c 	lw r2,(sp+12)
 180:	b4 41 08 00 	add r1,r2,r1
 184:	43 82 00 13 	lbu r2,(sp+19)
 188:	30 22 00 00 	sb (r1+0),r2
 18c:	2b 81 00 14 	lw r1,(sp+20)
 190:	34 21 00 01 	addi r1,r1,1
 194:	5b 81 00 14 	sw (sp+20),r1
 198:	43 82 00 13 	lbu r2,(sp+19)
 19c:	34 01 00 0d 	mvi r1,13
 1a0:	44 41 00 06 	be r2,r1,1b8 <_ZN4Uart6getstrEPci+0x74>
 1a4:	2b 82 00 14 	lw r2,(sp+20)
 1a8:	2b 81 00 08 	lw r1,(sp+8)
 1ac:	4c 41 00 03 	bge r2,r1,1b8 <_ZN4Uart6getstrEPci+0x74>
 1b0:	34 01 00 01 	mvi r1,1
 1b4:	e0 00 00 02 	bi 1bc <_ZN4Uart6getstrEPci+0x78>
 1b8:	34 01 00 00 	mvi r1,0
 1bc:	34 02 00 00 	mvi r2,0
 1c0:	5c 22 ff e7 	bne r1,r2,15c <_ZN4Uart6getstrEPci+0x18>
 1c4:	2b 81 00 14 	lw r1,(sp+20)
 1c8:	34 21 ff ff 	addi r1,r1,-1
 1cc:	2b 82 00 0c 	lw r2,(sp+12)
 1d0:	b4 41 08 00 	add r1,r2,r1
 1d4:	34 02 00 00 	mvi r2,0
 1d8:	30 22 00 00 	sb (r1+0),r2
 1dc:	f8 00 00 00 	calli 1dc <_ZN4Uart6getstrEPci+0x98>
 1e0:	2b 9d 00 04 	lw ra,(sp+4)
 1e4:	37 9c 00 14 	addi sp,sp,20
 1e8:	c3 a0 00 00 	ret

000001ec <_ZN4Uart8printhexEi>:
 1ec:	37 9c ff f8 	addi sp,sp,-8
 1f0:	5b 9d 00 04 	sw (sp+4),ra
 1f4:	5b 81 00 08 	sw (sp+8),r1
 1f8:	2b 81 00 08 	lw r1,(sp+8)
 1fc:	00 21 00 1c 	srui r1,r1,28
 200:	b8 20 10 00 	mv r2,r1
 204:	78 01 00 00 	mvhi r1,0x0
 208:	38 21 00 00 	ori r1,r1,0x0
 20c:	b4 22 08 00 	add r1,r1,r2
 210:	40 21 00 00 	lbu r1,(r1+0)
 214:	f8 00 00 00 	calli 214 <_ZN4Uart8printhexEi+0x28>
 218:	2b 81 00 08 	lw r1,(sp+8)
 21c:	14 21 00 18 	sri r1,r1,24
 220:	20 22 00 0f 	andi r2,r1,0xf
 224:	78 01 00 00 	mvhi r1,0x0
 228:	38 21 00 00 	ori r1,r1,0x0
 22c:	b4 22 08 00 	add r1,r1,r2
 230:	40 21 00 00 	lbu r1,(r1+0)
 234:	f8 00 00 00 	calli 234 <_ZN4Uart8printhexEi+0x48>
 238:	2b 81 00 08 	lw r1,(sp+8)
 23c:	14 21 00 14 	sri r1,r1,20
 240:	20 22 00 0f 	andi r2,r1,0xf
 244:	78 01 00 00 	mvhi r1,0x0
 248:	38 21 00 00 	ori r1,r1,0x0
 24c:	b4 22 08 00 	add r1,r1,r2
 250:	40 21 00 00 	lbu r1,(r1+0)
 254:	f8 00 00 00 	calli 254 <_ZN4Uart8printhexEi+0x68>
 258:	2b 81 00 08 	lw r1,(sp+8)
 25c:	14 21 00 10 	sri r1,r1,16
 260:	20 22 00 0f 	andi r2,r1,0xf
 264:	78 01 00 00 	mvhi r1,0x0
 268:	38 21 00 00 	ori r1,r1,0x0
 26c:	b4 22 08 00 	add r1,r1,r2
 270:	40 21 00 00 	lbu r1,(r1+0)
 274:	f8 00 00 00 	calli 274 <_ZN4Uart8printhexEi+0x88>
 278:	2b 81 00 08 	lw r1,(sp+8)
 27c:	14 21 00 0c 	sri r1,r1,12
 280:	20 22 00 0f 	andi r2,r1,0xf
 284:	78 01 00 00 	mvhi r1,0x0
 288:	38 21 00 00 	ori r1,r1,0x0
 28c:	b4 22 08 00 	add r1,r1,r2
 290:	40 21 00 00 	lbu r1,(r1+0)
 294:	f8 00 00 00 	calli 294 <_ZN4Uart8printhexEi+0xa8>
 298:	2b 81 00 08 	lw r1,(sp+8)
 29c:	14 21 00 08 	sri r1,r1,8
 2a0:	20 22 00 0f 	andi r2,r1,0xf
 2a4:	78 01 00 00 	mvhi r1,0x0
 2a8:	38 21 00 00 	ori r1,r1,0x0
 2ac:	b4 22 08 00 	add r1,r1,r2
 2b0:	40 21 00 00 	lbu r1,(r1+0)
 2b4:	f8 00 00 00 	calli 2b4 <_ZN4Uart8printhexEi+0xc8>
 2b8:	2b 81 00 08 	lw r1,(sp+8)
 2bc:	14 21 00 04 	sri r1,r1,4
 2c0:	20 22 00 0f 	andi r2,r1,0xf
 2c4:	78 01 00 00 	mvhi r1,0x0
 2c8:	38 21 00 00 	ori r1,r1,0x0
 2cc:	b4 22 08 00 	add r1,r1,r2
 2d0:	40 21 00 00 	lbu r1,(r1+0)
 2d4:	f8 00 00 00 	calli 2d4 <_ZN4Uart8printhexEi+0xe8>
 2d8:	2b 81 00 08 	lw r1,(sp+8)
 2dc:	20 22 00 0f 	andi r2,r1,0xf
 2e0:	78 01 00 00 	mvhi r1,0x0
 2e4:	38 21 00 00 	ori r1,r1,0x0
 2e8:	b4 22 08 00 	add r1,r1,r2
 2ec:	40 21 00 00 	lbu r1,(r1+0)
 2f0:	f8 00 00 00 	calli 2f0 <_ZN4Uart8printhexEi+0x104>
 2f4:	2b 9d 00 04 	lw ra,(sp+4)
 2f8:	37 9c 00 08 	addi sp,sp,8
 2fc:	c3 a0 00 00 	ret

00000300 <_ZN4Uart6printfEPKcz>:
 300:	37 9c ff d8 	addi sp,sp,-40
 304:	5b 9d 00 04 	sw (sp+4),ra
 308:	5b 81 00 0c 	sw (sp+12),r1
 30c:	5b 82 00 10 	sw (sp+16),r2
 310:	5b 83 00 14 	sw (sp+20),r3
 314:	5b 84 00 18 	sw (sp+24),r4
 318:	5b 85 00 1c 	sw (sp+28),r5
 31c:	5b 86 00 20 	sw (sp+32),r6
 320:	5b 87 00 24 	sw (sp+36),r7
 324:	5b 88 00 28 	sw (sp+40),r8
 328:	78 01 00 00 	mvhi r1,0x0
 32c:	38 21 00 00 	ori r1,r1,0x0
 330:	34 02 00 00 	mvi r2,0
 334:	58 22 00 00 	sw (r1+0),r2
 338:	37 81 00 10 	addi r1,sp,16
 33c:	5b 81 00 08 	sw (sp+8),r1
 340:	2b 82 00 08 	lw r2,(sp+8)
 344:	2b 81 00 0c 	lw r1,(sp+12)
 348:	f8 00 00 00 	calli 348 <_ZN4Uart6printfEPKcz+0x48>
 34c:	78 01 00 00 	mvhi r1,0x0
 350:	38 21 00 00 	ori r1,r1,0x0
 354:	f8 00 00 00 	calli 354 <_ZN4Uart6printfEPKcz+0x54>
 358:	2b 9d 00 04 	lw ra,(sp+4)
 35c:	37 9c 00 28 	addi sp,sp,40
 360:	c3 a0 00 00 	ret

00000364 <_ZN4Uart8printflnEPKcz>:
 364:	37 9c ff d8 	addi sp,sp,-40
 368:	5b 9d 00 04 	sw (sp+4),ra
 36c:	5b 81 00 0c 	sw (sp+12),r1
 370:	5b 82 00 10 	sw (sp+16),r2
 374:	5b 83 00 14 	sw (sp+20),r3
 378:	5b 84 00 18 	sw (sp+24),r4
 37c:	5b 85 00 1c 	sw (sp+28),r5
 380:	5b 86 00 20 	sw (sp+32),r6
 384:	5b 87 00 24 	sw (sp+36),r7
 388:	5b 88 00 28 	sw (sp+40),r8
 38c:	78 01 00 00 	mvhi r1,0x0
 390:	38 21 00 00 	ori r1,r1,0x0
 394:	34 02 00 00 	mvi r2,0
 398:	58 22 00 00 	sw (r1+0),r2
 39c:	37 81 00 10 	addi r1,sp,16
 3a0:	5b 81 00 08 	sw (sp+8),r1
 3a4:	2b 82 00 08 	lw r2,(sp+8)
 3a8:	2b 81 00 0c 	lw r1,(sp+12)
 3ac:	f8 00 00 00 	calli 3ac <_ZN4Uart8printflnEPKcz+0x48>
 3b0:	78 01 00 00 	mvhi r1,0x0
 3b4:	38 21 00 00 	ori r1,r1,0x0
 3b8:	f8 00 00 00 	calli 3b8 <_ZN4Uart8printflnEPKcz+0x54>
 3bc:	2b 9d 00 04 	lw ra,(sp+4)
 3c0:	37 9c 00 28 	addi sp,sp,40
 3c4:	c3 a0 00 00 	ret

000003c8 <_ZN4Uart9printcharEc>:
 3c8:	37 9c ff f8 	addi sp,sp,-8
 3cc:	5b 9d 00 04 	sw (sp+4),ra
 3d0:	33 81 00 08 	sb (sp+8),r1
 3d4:	43 81 00 08 	lbu r1,(sp+8)
 3d8:	f8 00 00 00 	calli 3d8 <_ZN4Uart9printcharEc+0x10>
 3dc:	2b 9d 00 04 	lw ra,(sp+4)
 3e0:	37 9c 00 08 	addi sp,sp,8
 3e4:	c3 a0 00 00 	ret

000003e8 <_ZN4Uart5printEPKcPv>:
 3e8:	37 9c ff e0 	addi sp,sp,-32
 3ec:	5b 8b 00 14 	sw (sp+20),r11
 3f0:	5b 8c 00 10 	sw (sp+16),r12
 3f4:	5b 8d 00 0c 	sw (sp+12),r13
 3f8:	5b 8e 00 08 	sw (sp+8),r14
 3fc:	5b 9d 00 04 	sw (sp+4),ra
 400:	5b 81 00 1c 	sw (sp+28),r1
 404:	5b 82 00 18 	sw (sp+24),r2
 408:	34 0b 00 00 	mvi r11,0
 40c:	e0 00 00 ac 	bi 6bc <_ZN4Uart5printEPKcPv+0x2d4>
 410:	2b 81 00 1c 	lw r1,(sp+28)
 414:	40 22 00 00 	lbu r2,(r1+0)
 418:	34 01 00 25 	mvi r1,37
 41c:	5c 41 00 a1 	bne r2,r1,6a0 <_ZN4Uart5printEPKcPv+0x2b8>
 420:	2b 81 00 1c 	lw r1,(sp+28)
 424:	34 21 00 01 	addi r1,r1,1
 428:	5b 81 00 1c 	sw (sp+28),r1
 42c:	34 0c 00 00 	mvi r12,0
 430:	b9 80 68 00 	mv r13,r12
 434:	2b 81 00 1c 	lw r1,(sp+28)
 438:	40 22 00 00 	lbu r2,(r1+0)
 43c:	34 01 00 00 	mvi r1,0
 440:	44 41 00 a6 	be r2,r1,6d8 <_ZN4Uart5printEPKcPv+0x2f0>
 444:	2b 81 00 1c 	lw r1,(sp+28)
 448:	40 22 00 00 	lbu r2,(r1+0)
 44c:	34 01 00 25 	mvi r1,37
 450:	44 41 00 93 	be r2,r1,69c <_ZN4Uart5printEPKcPv+0x2b4>
 454:	2b 81 00 1c 	lw r1,(sp+28)
 458:	40 22 00 00 	lbu r2,(r1+0)
 45c:	34 01 00 2d 	mvi r1,45
 460:	5c 41 00 0a 	bne r2,r1,488 <_ZN4Uart5printEPKcPv+0xa0>
 464:	2b 81 00 1c 	lw r1,(sp+28)
 468:	34 21 00 01 	addi r1,r1,1
 46c:	5b 81 00 1c 	sw (sp+28),r1
 470:	34 0c 00 01 	mvi r12,1
 474:	e0 00 00 05 	bi 488 <_ZN4Uart5printEPKcPv+0xa0>
 478:	2b 81 00 1c 	lw r1,(sp+28)
 47c:	34 21 00 01 	addi r1,r1,1
 480:	5b 81 00 1c 	sw (sp+28),r1
 484:	39 8c 00 02 	ori r12,r12,0x2
 488:	2b 81 00 1c 	lw r1,(sp+28)
 48c:	40 21 00 00 	lbu r1,(r1+0)
 490:	64 21 00 30 	cmpei r1,r1,48
 494:	20 22 00 ff 	andi r2,r1,0xff
 498:	34 01 00 00 	mvi r1,0
 49c:	5c 41 ff f7 	bne r2,r1,478 <_ZN4Uart5printEPKcPv+0x90>
 4a0:	e0 00 00 0c 	bi 4d0 <_ZN4Uart5printEPKcPv+0xe8>
 4a4:	b9 a0 08 00 	mv r1,r13
 4a8:	3c 21 00 01 	sli r1,r1,1
 4ac:	3c 22 00 02 	sli r2,r1,2
 4b0:	b4 22 68 00 	add r13,r1,r2
 4b4:	2b 81 00 1c 	lw r1,(sp+28)
 4b8:	40 21 00 00 	lbu r1,(r1+0)
 4bc:	34 21 ff d0 	addi r1,r1,-48
 4c0:	b5 a1 68 00 	add r13,r13,r1
 4c4:	2b 81 00 1c 	lw r1,(sp+28)
 4c8:	34 21 00 01 	addi r1,r1,1
 4cc:	5b 81 00 1c 	sw (sp+28),r1
 4d0:	2b 81 00 1c 	lw r1,(sp+28)
 4d4:	40 21 00 00 	lbu r1,(r1+0)
 4d8:	34 02 00 2f 	mvi r2,47
 4dc:	50 41 00 07 	bgeu r2,r1,4f8 <_ZN4Uart5printEPKcPv+0x110>
 4e0:	2b 81 00 1c 	lw r1,(sp+28)
 4e4:	40 22 00 00 	lbu r2,(r1+0)
 4e8:	34 01 00 39 	mvi r1,57
 4ec:	54 41 00 03 	bgu r2,r1,4f8 <_ZN4Uart5printEPKcPv+0x110>
 4f0:	34 01 00 01 	mvi r1,1
 4f4:	e0 00 00 02 	bi 4fc <_ZN4Uart5printEPKcPv+0x114>
 4f8:	34 01 00 00 	mvi r1,0
 4fc:	34 02 00 00 	mvi r2,0
 500:	5c 22 ff e9 	bne r1,r2,4a4 <_ZN4Uart5printEPKcPv+0xbc>
 504:	2b 81 00 1c 	lw r1,(sp+28)
 508:	40 22 00 00 	lbu r2,(r1+0)
 50c:	34 01 00 73 	mvi r1,115
 510:	5c 41 00 11 	bne r2,r1,554 <_ZN4Uart5printEPKcPv+0x16c>
 514:	2b 81 00 18 	lw r1,(sp+24)
 518:	34 22 00 04 	addi r2,r1,4
 51c:	5b 82 00 18 	sw (sp+24),r2
 520:	28 21 00 00 	lw r1,(r1+0)
 524:	b8 20 70 00 	mv r14,r1
 528:	34 01 00 00 	mvi r1,0
 52c:	45 c1 00 03 	be r14,r1,538 <_ZN4Uart5printEPKcPv+0x150>
 530:	b9 c0 08 00 	mv r1,r14
 534:	e0 00 00 03 	bi 540 <_ZN4Uart5printEPKcPv+0x158>
 538:	78 01 00 00 	mvhi r1,0x0
 53c:	38 21 00 00 	ori r1,r1,0x0
 540:	b9 a0 10 00 	mv r2,r13
 544:	b9 80 18 00 	mv r3,r12
 548:	f8 00 00 00 	calli 548 <_ZN4Uart5printEPKcPv+0x160>
 54c:	b5 61 58 00 	add r11,r11,r1
 550:	e0 00 00 58 	bi 6b0 <_ZN4Uart5printEPKcPv+0x2c8>
 554:	2b 81 00 1c 	lw r1,(sp+28)
 558:	40 22 00 00 	lbu r2,(r1+0)
 55c:	34 01 00 64 	mvi r1,100
 560:	5c 41 00 0d 	bne r2,r1,594 <_ZN4Uart5printEPKcPv+0x1ac>
 564:	2b 81 00 18 	lw r1,(sp+24)
 568:	34 22 00 04 	addi r2,r1,4
 56c:	5b 82 00 18 	sw (sp+24),r2
 570:	28 21 00 00 	lw r1,(r1+0)
 574:	34 02 00 0a 	mvi r2,10
 578:	34 03 00 01 	mvi r3,1
 57c:	b9 a0 20 00 	mv r4,r13
 580:	b9 80 28 00 	mv r5,r12
 584:	34 06 00 61 	mvi r6,97
 588:	f8 00 00 00 	calli 588 <_ZN4Uart5printEPKcPv+0x1a0>
 58c:	b5 61 58 00 	add r11,r11,r1
 590:	e0 00 00 48 	bi 6b0 <_ZN4Uart5printEPKcPv+0x2c8>
 594:	2b 81 00 1c 	lw r1,(sp+28)
 598:	40 22 00 00 	lbu r2,(r1+0)
 59c:	34 01 00 78 	mvi r1,120
 5a0:	5c 41 00 0d 	bne r2,r1,5d4 <_ZN4Uart5printEPKcPv+0x1ec>
 5a4:	2b 81 00 18 	lw r1,(sp+24)
 5a8:	34 22 00 04 	addi r2,r1,4
 5ac:	5b 82 00 18 	sw (sp+24),r2
 5b0:	28 21 00 00 	lw r1,(r1+0)
 5b4:	34 02 00 10 	mvi r2,16
 5b8:	34 03 00 00 	mvi r3,0
 5bc:	b9 a0 20 00 	mv r4,r13
 5c0:	b9 80 28 00 	mv r5,r12
 5c4:	34 06 00 61 	mvi r6,97
 5c8:	f8 00 00 00 	calli 5c8 <_ZN4Uart5printEPKcPv+0x1e0>
 5cc:	b5 61 58 00 	add r11,r11,r1
 5d0:	e0 00 00 38 	bi 6b0 <_ZN4Uart5printEPKcPv+0x2c8>
 5d4:	2b 81 00 1c 	lw r1,(sp+28)
 5d8:	40 22 00 00 	lbu r2,(r1+0)
 5dc:	34 01 00 58 	mvi r1,88
 5e0:	5c 41 00 0d 	bne r2,r1,614 <_ZN4Uart5printEPKcPv+0x22c>
 5e4:	2b 81 00 18 	lw r1,(sp+24)
 5e8:	34 22 00 04 	addi r2,r1,4
 5ec:	5b 82 00 18 	sw (sp+24),r2
 5f0:	28 21 00 00 	lw r1,(r1+0)
 5f4:	34 02 00 10 	mvi r2,16
 5f8:	34 03 00 00 	mvi r3,0
 5fc:	b9 a0 20 00 	mv r4,r13
 600:	b9 80 28 00 	mv r5,r12
 604:	34 06 00 41 	mvi r6,65
 608:	f8 00 00 00 	calli 608 <_ZN4Uart5printEPKcPv+0x220>
 60c:	b5 61 58 00 	add r11,r11,r1
 610:	e0 00 00 28 	bi 6b0 <_ZN4Uart5printEPKcPv+0x2c8>
 614:	2b 81 00 1c 	lw r1,(sp+28)
 618:	40 22 00 00 	lbu r2,(r1+0)
 61c:	34 01 00 75 	mvi r1,117
 620:	5c 41 00 0d 	bne r2,r1,654 <_ZN4Uart5printEPKcPv+0x26c>
 624:	2b 81 00 18 	lw r1,(sp+24)
 628:	34 22 00 04 	addi r2,r1,4
 62c:	5b 82 00 18 	sw (sp+24),r2
 630:	28 21 00 00 	lw r1,(r1+0)
 634:	34 02 00 0a 	mvi r2,10
 638:	34 03 00 00 	mvi r3,0
 63c:	b9 a0 20 00 	mv r4,r13
 640:	b9 80 28 00 	mv r5,r12
 644:	34 06 00 61 	mvi r6,97
 648:	f8 00 00 00 	calli 648 <_ZN4Uart5printEPKcPv+0x260>
 64c:	b5 61 58 00 	add r11,r11,r1
 650:	e0 00 00 18 	bi 6b0 <_ZN4Uart5printEPKcPv+0x2c8>
 654:	2b 81 00 1c 	lw r1,(sp+28)
 658:	40 22 00 00 	lbu r2,(r1+0)
 65c:	34 01 00 63 	mvi r1,99
 660:	5c 41 00 14 	bne r2,r1,6b0 <_ZN4Uart5printEPKcPv+0x2c8>
 664:	2b 81 00 18 	lw r1,(sp+24)
 668:	34 22 00 04 	addi r2,r1,4
 66c:	5b 82 00 18 	sw (sp+24),r2
 670:	28 21 00 00 	lw r1,(r1+0)
 674:	20 21 00 ff 	andi r1,r1,0xff
 678:	33 81 00 20 	sb (sp+32),r1
 67c:	34 01 00 00 	mvi r1,0
 680:	33 81 00 21 	sb (sp+33),r1
 684:	37 81 00 20 	addi r1,sp,32
 688:	b9 a0 10 00 	mv r2,r13
 68c:	b9 80 18 00 	mv r3,r12
 690:	f8 00 00 00 	calli 690 <_ZN4Uart5printEPKcPv+0x2a8>
 694:	b5 61 58 00 	add r11,r11,r1
 698:	e0 00 00 06 	bi 6b0 <_ZN4Uart5printEPKcPv+0x2c8>
 69c:	34 00 00 00 	nop
 6a0:	2b 81 00 1c 	lw r1,(sp+28)
 6a4:	40 21 00 00 	lbu r1,(r1+0)
 6a8:	f8 00 00 00 	calli 6a8 <_ZN4Uart5printEPKcPv+0x2c0>
 6ac:	35 6b 00 01 	addi r11,r11,1
 6b0:	2b 81 00 1c 	lw r1,(sp+28)
 6b4:	34 21 00 01 	addi r1,r1,1
 6b8:	5b 81 00 1c 	sw (sp+28),r1
 6bc:	2b 81 00 1c 	lw r1,(sp+28)
 6c0:	40 21 00 00 	lbu r1,(r1+0)
 6c4:	7c 21 00 00 	cmpnei r1,r1,0
 6c8:	20 22 00 ff 	andi r2,r1,0xff
 6cc:	34 01 00 00 	mvi r1,0
 6d0:	5c 41 ff 50 	bne r2,r1,410 <_ZN4Uart5printEPKcPv+0x28>
 6d4:	e0 00 00 02 	bi 6dc <_ZN4Uart5printEPKcPv+0x2f4>
 6d8:	34 00 00 00 	nop
 6dc:	78 01 00 00 	mvhi r1,0x0
 6e0:	38 21 00 00 	ori r1,r1,0x0
 6e4:	28 22 00 00 	lw r2,(r1+0)
 6e8:	78 01 00 00 	mvhi r1,0x0
 6ec:	38 21 00 00 	ori r1,r1,0x0
 6f0:	b4 22 08 00 	add r1,r1,r2
 6f4:	34 02 00 00 	mvi r2,0
 6f8:	30 22 00 00 	sb (r1+0),r2
 6fc:	b9 60 08 00 	mv r1,r11
 700:	2b 8b 00 14 	lw r11,(sp+20)
 704:	2b 8c 00 10 	lw r12,(sp+16)
 708:	2b 8d 00 0c 	lw r13,(sp+12)
 70c:	2b 8e 00 08 	lw r14,(sp+8)
 710:	2b 9d 00 04 	lw ra,(sp+4)
 714:	37 9c 00 20 	addi sp,sp,32
 718:	c3 a0 00 00 	ret

0000071c <_ZN4Uart6printiEiiiiii>:
 71c:	37 9c ff c4 	addi sp,sp,-60
 720:	5b 8b 00 18 	sw (sp+24),r11
 724:	5b 8c 00 14 	sw (sp+20),r12
 728:	5b 8d 00 10 	sw (sp+16),r13
 72c:	5b 8e 00 0c 	sw (sp+12),r14
 730:	5b 8f 00 08 	sw (sp+8),r15
 734:	5b 9d 00 04 	sw (sp+4),ra
 738:	5b 81 00 30 	sw (sp+48),r1
 73c:	5b 82 00 2c 	sw (sp+44),r2
 740:	5b 83 00 28 	sw (sp+40),r3
 744:	5b 84 00 24 	sw (sp+36),r4
 748:	5b 85 00 20 	sw (sp+32),r5
 74c:	5b 86 00 1c 	sw (sp+28),r6
 750:	34 0f 00 00 	mvi r15,0
 754:	34 0e 00 00 	mvi r14,0
 758:	2b 8c 00 30 	lw r12,(sp+48)
 75c:	2b 82 00 30 	lw r2,(sp+48)
 760:	34 01 00 00 	mvi r1,0
 764:	5c 41 00 0a 	bne r2,r1,78c <_ZN4Uart6printiEiiiiii+0x70>
 768:	34 01 00 30 	mvi r1,48
 76c:	33 81 00 34 	sb (sp+52),r1
 770:	34 01 00 00 	mvi r1,0
 774:	33 81 00 35 	sb (sp+53),r1
 778:	37 81 00 34 	addi r1,sp,52
 77c:	2b 82 00 24 	lw r2,(sp+36)
 780:	2b 83 00 20 	lw r3,(sp+32)
 784:	f8 00 00 00 	calli 784 <_ZN4Uart6printiEiiiiii+0x68>
 788:	e0 00 00 3e 	bi 880 <_ZN4Uart6printiEiiiiii+0x164>
 78c:	2b 82 00 28 	lw r2,(sp+40)
 790:	34 01 00 00 	mvi r1,0
 794:	44 41 00 0b 	be r2,r1,7c0 <_ZN4Uart6printiEiiiiii+0xa4>
 798:	2b 82 00 2c 	lw r2,(sp+44)
 79c:	34 01 00 0a 	mvi r1,10
 7a0:	5c 41 00 08 	bne r2,r1,7c0 <_ZN4Uart6printiEiiiiii+0xa4>
 7a4:	2b 82 00 30 	lw r2,(sp+48)
 7a8:	34 01 00 00 	mvi r1,0
 7ac:	4c 41 00 05 	bge r2,r1,7c0 <_ZN4Uart6printiEiiiiii+0xa4>
 7b0:	34 0f 00 01 	mvi r15,1
 7b4:	2b 81 00 30 	lw r1,(sp+48)
 7b8:	c8 01 08 00 	sub r1,r0,r1
 7bc:	b8 20 60 00 	mv r12,r1
 7c0:	37 81 00 34 	addi r1,sp,52
 7c4:	34 2b 00 0b 	addi r11,r1,11
 7c8:	34 01 00 00 	mvi r1,0
 7cc:	31 61 00 00 	sb (r11+0),r1
 7d0:	e0 00 00 10 	bi 810 <_ZN4Uart6printiEiiiiii+0xf4>
 7d4:	2b 81 00 2c 	lw r1,(sp+44)
 7d8:	c5 81 08 00 	modu r1,r12,r1
 7dc:	b8 20 68 00 	mv r13,r1
 7e0:	34 01 00 09 	mvi r1,9
 7e4:	4c 2d 00 04 	bge r1,r13,7f4 <_ZN4Uart6printiEiiiiii+0xd8>
 7e8:	2b 81 00 1c 	lw r1,(sp+28)
 7ec:	34 21 ff c6 	addi r1,r1,-58
 7f0:	b5 a1 68 00 	add r13,r13,r1
 7f4:	35 6b ff ff 	addi r11,r11,-1
 7f8:	21 a1 00 ff 	andi r1,r13,0xff
 7fc:	34 21 00 30 	addi r1,r1,48
 800:	20 21 00 ff 	andi r1,r1,0xff
 804:	31 61 00 00 	sb (r11+0),r1
 808:	2b 81 00 2c 	lw r1,(sp+44)
 80c:	8d 81 60 00 	divu r12,r12,r1
 810:	7d 81 00 00 	cmpnei r1,r12,0
 814:	20 22 00 ff 	andi r2,r1,0xff
 818:	34 01 00 00 	mvi r1,0
 81c:	5c 41 ff ee 	bne r2,r1,7d4 <_ZN4Uart6printiEiiiiii+0xb8>
 820:	34 01 00 00 	mvi r1,0
 824:	45 e1 00 12 	be r15,r1,86c <_ZN4Uart6printiEiiiiii+0x150>
 828:	2b 82 00 24 	lw r2,(sp+36)
 82c:	34 01 00 00 	mvi r1,0
 830:	44 41 00 0c 	be r2,r1,860 <_ZN4Uart6printiEiiiiii+0x144>
 834:	2b 81 00 20 	lw r1,(sp+32)
 838:	20 22 00 02 	andi r2,r1,0x2
 83c:	34 01 00 00 	mvi r1,0
 840:	44 41 00 08 	be r2,r1,860 <_ZN4Uart6printiEiiiiii+0x144>
 844:	34 01 00 2d 	mvi r1,45
 848:	f8 00 00 00 	calli 848 <_ZN4Uart6printiEiiiiii+0x12c>
 84c:	35 ce 00 01 	addi r14,r14,1
 850:	2b 81 00 24 	lw r1,(sp+36)
 854:	34 21 ff ff 	addi r1,r1,-1
 858:	5b 81 00 24 	sw (sp+36),r1
 85c:	e0 00 00 04 	bi 86c <_ZN4Uart6printiEiiiiii+0x150>
 860:	35 6b ff ff 	addi r11,r11,-1
 864:	34 01 00 2d 	mvi r1,45
 868:	31 61 00 00 	sb (r11+0),r1
 86c:	b9 60 08 00 	mv r1,r11
 870:	2b 82 00 24 	lw r2,(sp+36)
 874:	2b 83 00 20 	lw r3,(sp+32)
 878:	f8 00 00 00 	calli 878 <_ZN4Uart6printiEiiiiii+0x15c>
 87c:	b4 2e 08 00 	add r1,r1,r14
 880:	2b 8b 00 18 	lw r11,(sp+24)
 884:	2b 8c 00 14 	lw r12,(sp+20)
 888:	2b 8d 00 10 	lw r13,(sp+16)
 88c:	2b 8e 00 0c 	lw r14,(sp+12)
 890:	2b 8f 00 08 	lw r15,(sp+8)
 894:	2b 9d 00 04 	lw ra,(sp+4)
 898:	37 9c 00 3c 	addi sp,sp,60
 89c:	c3 a0 00 00 	ret

000008a0 <_ZN4Uart6printsEPKcii>:
 8a0:	37 9c ff e0 	addi sp,sp,-32
 8a4:	5b 8b 00 14 	sw (sp+20),r11
 8a8:	5b 8c 00 10 	sw (sp+16),r12
 8ac:	5b 8d 00 0c 	sw (sp+12),r13
 8b0:	5b 8e 00 08 	sw (sp+8),r14
 8b4:	5b 9d 00 04 	sw (sp+4),ra
 8b8:	5b 81 00 20 	sw (sp+32),r1
 8bc:	5b 82 00 1c 	sw (sp+28),r2
 8c0:	5b 83 00 18 	sw (sp+24),r3
 8c4:	34 0b 00 00 	mvi r11,0
 8c8:	34 0d 00 20 	mvi r13,32
 8cc:	2b 81 00 1c 	lw r1,(sp+28)
 8d0:	34 02 00 00 	mvi r2,0
 8d4:	4c 41 00 18 	bge r2,r1,934 <_ZN4Uart6printsEPKcii+0x94>
 8d8:	34 0c 00 00 	mvi r12,0
 8dc:	2b 8e 00 20 	lw r14,(sp+32)
 8e0:	e0 00 00 03 	bi 8ec <_ZN4Uart6printsEPKcii+0x4c>
 8e4:	35 8c 00 01 	addi r12,r12,1
 8e8:	35 ce 00 01 	addi r14,r14,1
 8ec:	41 c1 00 00 	lbu r1,(r14+0)
 8f0:	7c 21 00 00 	cmpnei r1,r1,0
 8f4:	20 22 00 ff 	andi r2,r1,0xff
 8f8:	34 01 00 00 	mvi r1,0
 8fc:	5c 41 ff fa 	bne r2,r1,8e4 <_ZN4Uart6printsEPKcii+0x44>
 900:	2b 81 00 1c 	lw r1,(sp+28)
 904:	48 2c 00 04 	bg r1,r12,914 <_ZN4Uart6printsEPKcii+0x74>
 908:	34 01 00 00 	mvi r1,0
 90c:	5b 81 00 1c 	sw (sp+28),r1
 910:	e0 00 00 04 	bi 920 <_ZN4Uart6printsEPKcii+0x80>
 914:	2b 81 00 1c 	lw r1,(sp+28)
 918:	c8 2c 08 00 	sub r1,r1,r12
 91c:	5b 81 00 1c 	sw (sp+28),r1
 920:	2b 81 00 18 	lw r1,(sp+24)
 924:	20 22 00 02 	andi r2,r1,0x2
 928:	34 01 00 00 	mvi r1,0
 92c:	44 41 00 02 	be r2,r1,934 <_ZN4Uart6printsEPKcii+0x94>
 930:	34 0d 00 30 	mvi r13,48
 934:	2b 81 00 18 	lw r1,(sp+24)
 938:	20 21 00 01 	andi r1,r1,0x1
 93c:	20 21 00 ff 	andi r1,r1,0xff
 940:	18 21 00 01 	xori r1,r1,0x1
 944:	20 22 00 ff 	andi r2,r1,0xff
 948:	34 01 00 00 	mvi r1,0
 94c:	44 41 00 15 	be r2,r1,9a0 <_ZN4Uart6printsEPKcii+0x100>
 950:	e0 00 00 07 	bi 96c <_ZN4Uart6printsEPKcii+0xcc>
 954:	21 a1 00 ff 	andi r1,r13,0xff
 958:	f8 00 00 00 	calli 958 <_ZN4Uart6printsEPKcii+0xb8>
 95c:	35 6b 00 01 	addi r11,r11,1
 960:	2b 81 00 1c 	lw r1,(sp+28)
 964:	34 21 ff ff 	addi r1,r1,-1
 968:	5b 81 00 1c 	sw (sp+28),r1
 96c:	2b 81 00 1c 	lw r1,(sp+28)
 970:	68 21 00 00 	cmpgi r1,r1,0
 974:	20 22 00 ff 	andi r2,r1,0xff
 978:	34 01 00 00 	mvi r1,0
 97c:	5c 41 ff f6 	bne r2,r1,954 <_ZN4Uart6printsEPKcii+0xb4>
 980:	e0 00 00 08 	bi 9a0 <_ZN4Uart6printsEPKcii+0x100>
 984:	2b 81 00 20 	lw r1,(sp+32)
 988:	40 21 00 00 	lbu r1,(r1+0)
 98c:	f8 00 00 00 	calli 98c <_ZN4Uart6printsEPKcii+0xec>
 990:	35 6b 00 01 	addi r11,r11,1
 994:	2b 81 00 20 	lw r1,(sp+32)
 998:	34 21 00 01 	addi r1,r1,1
 99c:	5b 81 00 20 	sw (sp+32),r1
 9a0:	2b 81 00 20 	lw r1,(sp+32)
 9a4:	40 21 00 00 	lbu r1,(r1+0)
 9a8:	7c 21 00 00 	cmpnei r1,r1,0
 9ac:	20 22 00 ff 	andi r2,r1,0xff
 9b0:	34 01 00 00 	mvi r1,0
 9b4:	5c 41 ff f4 	bne r2,r1,984 <_ZN4Uart6printsEPKcii+0xe4>
 9b8:	e0 00 00 07 	bi 9d4 <_ZN4Uart6printsEPKcii+0x134>
 9bc:	21 a1 00 ff 	andi r1,r13,0xff
 9c0:	f8 00 00 00 	calli 9c0 <_ZN4Uart6printsEPKcii+0x120>
 9c4:	35 6b 00 01 	addi r11,r11,1
 9c8:	2b 81 00 1c 	lw r1,(sp+28)
 9cc:	34 21 ff ff 	addi r1,r1,-1
 9d0:	5b 81 00 1c 	sw (sp+28),r1
 9d4:	2b 81 00 1c 	lw r1,(sp+28)
 9d8:	68 21 00 00 	cmpgi r1,r1,0
 9dc:	20 22 00 ff 	andi r2,r1,0xff
 9e0:	34 01 00 00 	mvi r1,0
 9e4:	5c 41 ff f6 	bne r2,r1,9bc <_ZN4Uart6printsEPKcii+0x11c>
 9e8:	b9 60 08 00 	mv r1,r11
 9ec:	2b 8b 00 14 	lw r11,(sp+20)
 9f0:	2b 8c 00 10 	lw r12,(sp+16)
 9f4:	2b 8d 00 0c 	lw r13,(sp+12)
 9f8:	2b 8e 00 08 	lw r14,(sp+8)
 9fc:	2b 9d 00 04 	lw ra,(sp+4)
 a00:	37 9c 00 20 	addi sp,sp,32
 a04:	c3 a0 00 00 	ret

Disassembly of section .data:

00000000 <_ZN4Uart5uart0E>:
   0:	70 00 00 00 	cmpgeui r0,r0,0x0

Disassembly of section .bss:

00000000 <buffer>:
	...

00000100 <ndex>:
 100:	00 00 00 00 	srui r0,r0,0

Disassembly of section .rodata:

00000000 <_ZL8hexchars-0xc>:
   0:	0d 0a 00 00 	sh (r8+0),r10
   4:	28 6e 75 6c 	lw r14,(r3+30060)
   8:	6c 29 00 00 	cmpgei r9,r1,0

0000000c <_ZL8hexchars>:
   c:	30 31 32 33 	sb (r1+12851),r17
  10:	34 35 36 37 	addi r21,r1,13879
  14:	38 39 41 42 	ori r25,r1,0x4142
  18:	43 44 45 46 	lbu r4,17734

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43 43 	srui r7,r2,17219
   4:	3a 20 28 47 	ori r0,r17,0x2847
   8:	4e 55 29 20 	bge r18,r21,a488 <_ZN4Uart6printsEPKcii+0x9be8>
   c:	34 2e 35 2e 	addi r14,r1,13614
  10:	Address 0x0000000000000010 is out of bounds.

