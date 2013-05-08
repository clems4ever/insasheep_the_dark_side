	.file	"uart.cpp"
	.global	_ZN4Uart5uart0E
	.section	.data
	.align 4
	.type	_ZN4Uart5uart0E, @object
	.size	_ZN4Uart5uart0E, 4
_ZN4Uart5uart0E:
	.long	1879048192
	.global	buffer
	.section	.bss
	.align 4
	.type	buffer, @object
	.size	buffer, 256
buffer:
	.zero	256
	.global	ndex
	.align 4
	.type	ndex, @object
	.size	ndex, 4
ndex:
	.zero	4
	.section	.text
	.align 4
	.global	_ZN4Uart7getcharEv
	.type	_ZN4Uart7getcharEv, @function
_ZN4Uart7getcharEv:
	addi     sp, sp, -8
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 8
	add      fp, fp, sp
	nop
.L2:
	orhi     r1, r0, hi(_ZN4Uart5uart0E)
	ori      r1, r1, lo(_ZN4Uart5uart0E)
	lw       r1, (r1+0)
	lw       r1, (r1+0)
	andi     r1, r1, 1
	andi     r1, r1, 0xff
	xori     r1, r1, 1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L2
	orhi     r1, r0, hi(_ZN4Uart5uart0E)
	ori      r1, r1, lo(_ZN4Uart5uart0E)
	lw       r1, (r1+0)
	lw       r1, (r1+4)
	andi     r1, r1, 0xff
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 8
	b        ra
	.size	_ZN4Uart7getcharEv, .-_ZN4Uart7getcharEv
	.align 4
	.global	_ZN4Uart7putcharEc
	.type	_ZN4Uart7putcharEc, @function
_ZN4Uart7putcharEc:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sb       (fp+0), r1
.L4:
	orhi     r1, r0, hi(_ZN4Uart5uart0E)
	ori      r1, r1, lo(_ZN4Uart5uart0E)
	lw       r1, (r1+0)
	lw       r1, (r1+0)
	andi     r1, r1, 16
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L4
	orhi     r1, r0, hi(_ZN4Uart5uart0E)
	ori      r1, r1, lo(_ZN4Uart5uart0E)
	lw       r1, (r1+0)
	lbu      r2, (fp+0)
	sw       (r1+4), r2
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN4Uart7putcharEc, .-_ZN4Uart7putcharEc
	.align 4
	.global	_ZN4Uart5printEPKc
	.type	_ZN4Uart5printEPKc, @function
_ZN4Uart5printEPKc:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+-4), r1
	lw       r1, (fp+-4)
	sw       (fp+0), r1
	bi       .L6
.L7:
	lw       r1, (fp+0)
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L6:
	lw       r1, (fp+0)
	lbu      r1, (r1+0)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L7
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_ZN4Uart5printEPKc, .-_ZN4Uart5printEPKc
	.section	.rodata
	.align 4
.LC0:
	.string	"\r\n"
	.section	.text
	.align 4
	.global	_ZN4Uart7printlnEPKc
	.type	_ZN4Uart7printlnEPKc, @function
_ZN4Uart7printlnEPKc:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZN4Uart5printEPKc
	orhi     r1, r0, hi(.LC0)
	ori      r1, r1, lo(.LC0)
	calli    _ZN4Uart5printEPKc
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN4Uart7printlnEPKc, .-_ZN4Uart7printlnEPKc
	.align 4
	.global	_ZN4Uart8skiplineEv
	.type	_ZN4Uart8skiplineEv, @function
_ZN4Uart8skiplineEv:
	addi     sp, sp, -8
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 8
	add      fp, fp, sp
	orhi     r1, r0, hi(.LC0)
	ori      r1, r1, lo(.LC0)
	calli    _ZN4Uart5printEPKc
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 8
	b        ra
	.size	_ZN4Uart8skiplineEv, .-_ZN4Uart8skiplineEv
	.align 4
	.global	_ZN4Uart6getstrEPci
	.type	_ZN4Uart6getstrEPci, @function
_ZN4Uart6getstrEPci:
	addi     sp, sp, -24
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 24
	add      fp, fp, sp
	sw       (fp+-8), r1
	sw       (fp+-12), r2
	addi     r1, r0, 0
	sw       (fp+0), r1
.L14:
	calli    _ZN4Uart7getcharEv
	sb       (fp+-1), r1
	lbu      r2, (fp+-1)
	addi     r1, r0, 13
	be     r2,r1,.L11
	lbu      r1, (fp+-1)
	calli    _ZN4Uart7putcharEc
.L11:
	lw       r1, (fp+0)
	lw       r2, (fp+-8)
	add      r1, r2, r1
	lbu      r2, (fp+-1)
	sb       (r1+0), r2
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
	lbu      r2, (fp+-1)
	addi     r1, r0, 13
	be     r2,r1,.L12
	lw       r2, (fp+0)
	lw       r1, (fp+-12)
	bge    r2,r1,.L12
	addi     r1, r0, 1
	bi       .L13
.L12:
	addi     r1, r0, 0
.L13:
	addi     r2, r0, 0
	bne    r1,r2,.L14
	lw       r1, (fp+0)
	addi     r1, r1, -1
	lw       r2, (fp+-8)
	add      r1, r2, r1
	addi     r2, r0, 0
	sb       (r1+0), r2
	calli    _ZN4Uart8skiplineEv
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 24
	b        ra
	.size	_ZN4Uart6getstrEPci, .-_ZN4Uart6getstrEPci
	.global	__lshrsi3
	.global	__ashrsi3
	.align 4
	.global	_ZN4Uart8printhexEi
	.type	_ZN4Uart8printhexEi, @function
_ZN4Uart8printhexEi:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	addi     r2, r0, 28
	calli    __lshrsi3
	or       r2, r1, r0
	orhi     r1, r0, hi(_ZL8hexchars)
	ori      r1, r1, lo(_ZL8hexchars)
	add      r1, r1, r2
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       r1, (fp+0)
	addi     r2, r0, 24
	calli    __ashrsi3
	andi     r2, r1, 15
	orhi     r1, r0, hi(_ZL8hexchars)
	ori      r1, r1, lo(_ZL8hexchars)
	add      r1, r1, r2
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       r1, (fp+0)
	addi     r2, r0, 20
	calli    __ashrsi3
	andi     r2, r1, 15
	orhi     r1, r0, hi(_ZL8hexchars)
	ori      r1, r1, lo(_ZL8hexchars)
	add      r1, r1, r2
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       r1, (fp+0)
	addi     r2, r0, 16
	calli    __ashrsi3
	andi     r2, r1, 15
	orhi     r1, r0, hi(_ZL8hexchars)
	ori      r1, r1, lo(_ZL8hexchars)
	add      r1, r1, r2
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       r1, (fp+0)
	addi     r2, r0, 12
	calli    __ashrsi3
	andi     r2, r1, 15
	orhi     r1, r0, hi(_ZL8hexchars)
	ori      r1, r1, lo(_ZL8hexchars)
	add      r1, r1, r2
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       r1, (fp+0)
	sri      r1, r1, 1
	sri      r1, r1, 1
	sri      r1, r1, 1
	sri      r1, r1, 1
	sri      r1, r1, 1
	sri      r1, r1, 1
	sri      r1, r1, 1
	sri      r1, r1, 1
	andi     r2, r1, 15
	orhi     r1, r0, hi(_ZL8hexchars)
	ori      r1, r1, lo(_ZL8hexchars)
	add      r1, r1, r2
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       r1, (fp+0)
	sri      r1, r1, 1
	sri      r1, r1, 1
	sri      r1, r1, 1
	sri      r1, r1, 1
	andi     r2, r1, 15
	orhi     r1, r0, hi(_ZL8hexchars)
	ori      r1, r1, lo(_ZL8hexchars)
	add      r1, r1, r2
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       r1, (fp+0)
	andi     r2, r1, 15
	orhi     r1, r0, hi(_ZL8hexchars)
	ori      r1, r1, lo(_ZL8hexchars)
	add      r1, r1, r2
	lbu      r1, (r1+0)
	calli    _ZN4Uart7putcharEc
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN4Uart8printhexEi, .-_ZN4Uart8printhexEi
	.align 4
	.global	_ZN4Uart6printfEPKcz
	.type	_ZN4Uart6printfEPKcz, @function
_ZN4Uart6printfEPKcz:
	addi     sp, sp, -44
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+4), r1
	sw       (fp+8), r2
	sw       (fp+12), r3
	sw       (fp+16), r4
	sw       (fp+20), r5
	sw       (fp+24), r6
	sw       (fp+28), r7
	sw       (fp+32), r8
	orhi     r1, r0, hi(ndex)
	ori      r1, r1, lo(ndex)
	addi     r2, r0, 0
	sw       (r1+0), r2
	addi     r1, fp, 8
	sw       (fp+0), r1
	lw       r2, (fp+0)
	lw       r1, (fp+4)
	calli    _ZN4Uart5printEPKcPv
	orhi     r1, r0, hi(buffer)
	ori      r1, r1, lo(buffer)
	calli    _ZN4Uart5printEPKc
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 44
	b        ra
	.size	_ZN4Uart6printfEPKcz, .-_ZN4Uart6printfEPKcz
	.align 4
	.global	_ZN4Uart8printflnEPKcz
	.type	_ZN4Uart8printflnEPKcz, @function
_ZN4Uart8printflnEPKcz:
	addi     sp, sp, -44
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+4), r1
	sw       (fp+8), r2
	sw       (fp+12), r3
	sw       (fp+16), r4
	sw       (fp+20), r5
	sw       (fp+24), r6
	sw       (fp+28), r7
	sw       (fp+32), r8
	orhi     r1, r0, hi(ndex)
	ori      r1, r1, lo(ndex)
	addi     r2, r0, 0
	sw       (r1+0), r2
	addi     r1, fp, 8
	sw       (fp+0), r1
	lw       r2, (fp+0)
	lw       r1, (fp+4)
	calli    _ZN4Uart5printEPKcPv
	orhi     r1, r0, hi(buffer)
	ori      r1, r1, lo(buffer)
	calli    _ZN4Uart7printlnEPKc
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 44
	b        ra
	.size	_ZN4Uart8printflnEPKcz, .-_ZN4Uart8printflnEPKcz
	.align 4
	.global	_ZN4Uart9printcharEc
	.type	_ZN4Uart9printcharEc, @function
_ZN4Uart9printcharEc:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sb       (fp+0), r1
	lbu      r1, (fp+0)
	calli    _ZN4Uart7putcharEc
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN4Uart9printcharEc, .-_ZN4Uart9printcharEc
	.section	.rodata
	.align 4
.LC1:
	.string	"(null)"
	.section	.text
	.align 4
	.global	_ZN4Uart5printEPKcPv
	.type	_ZN4Uart5printEPKcPv, @function
_ZN4Uart5printEPKcPv:
	addi     sp, sp, -36
	sw       (sp+24), r11
	sw       (sp+20), r12
	sw       (sp+16), r13
	sw       (sp+12), r14
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 36
	add      fp, fp, sp
	sw       (fp+-4), r1
	sw       (fp+-8), r2
	addi     r11, r0, 0
	bi       .L20
.L40:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 37
	bne    r2,r1,.L21
	lw       r1, (fp+-4)
	addi     r1, r1, 1
	sw       (fp+-4), r1
	addi     r12, r0, 0
	or       r13, r12, r0
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 0
	be     r2,r1,.L41
.L22:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 37
	be     r2,r1,.L42
.L24:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 45
	bne    r2,r1,.L26
	lw       r1, (fp+-4)
	addi     r1, r1, 1
	sw       (fp+-4), r1
	addi     r12, r0, 1
	bi       .L26
.L27:
	lw       r1, (fp+-4)
	addi     r1, r1, 1
	sw       (fp+-4), r1
	ori      r12, r12, 2
.L26:
	lw       r1, (fp+-4)
	lbu      r1, (r1+0)
	cmpei    r1, r1, 48
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L27
	bi       .L28
.L31:
	or       r1, r13, r0
	add      r1, r1, r1
	add      r2, r1, r1
	add      r2, r2, r2
	add      r13, r1, r2
	lw       r1, (fp+-4)
	lbu      r1, (r1+0)
	addi     r1, r1, -48
	add      r13, r13, r1
	lw       r1, (fp+-4)
	addi     r1, r1, 1
	sw       (fp+-4), r1
.L28:
	lw       r1, (fp+-4)
	lbu      r1, (r1+0)
	addi     r2, r0, 47
	bgeu   r2,r1,.L29
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 57
	bgu    r2,r1,.L29
	addi     r1, r0, 1
	bi       .L30
.L29:
	addi     r1, r0, 0
.L30:
	addi     r2, r0, 0
	bne    r1,r2,.L31
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 115
	bne    r2,r1,.L32
	lw       r1, (fp+-8)
	addi     r2, r1, 4
	sw       (fp+-8), r2
	lw       r1, (r1+0)
	or       r14, r1, r0
	addi     r1, r0, 0
	be     r14,r1,.L33
	or       r1, r14, r0
	bi       .L34
.L33:
	orhi     r1, r0, hi(.LC1)
	ori      r1, r1, lo(.LC1)
.L34:
	or       r2, r13, r0
	or       r3, r12, r0
	calli    _ZN4Uart6printsEPKcii
	add      r11, r11, r1
	bi       .L35
.L32:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 100
	bne    r2,r1,.L36
	lw       r1, (fp+-8)
	addi     r2, r1, 4
	sw       (fp+-8), r2
	lw       r1, (r1+0)
	addi     r2, r0, 10
	addi     r3, r0, 1
	or       r4, r13, r0
	or       r5, r12, r0
	addi     r6, r0, 97
	calli    _ZN4Uart6printiEiiiiii
	add      r11, r11, r1
	bi       .L35
.L36:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 120
	bne    r2,r1,.L37
	lw       r1, (fp+-8)
	addi     r2, r1, 4
	sw       (fp+-8), r2
	lw       r1, (r1+0)
	addi     r2, r0, 16
	addi     r3, r0, 0
	or       r4, r13, r0
	or       r5, r12, r0
	addi     r6, r0, 97
	calli    _ZN4Uart6printiEiiiiii
	add      r11, r11, r1
	bi       .L35
.L37:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 88
	bne    r2,r1,.L38
	lw       r1, (fp+-8)
	addi     r2, r1, 4
	sw       (fp+-8), r2
	lw       r1, (r1+0)
	addi     r2, r0, 16
	addi     r3, r0, 0
	or       r4, r13, r0
	or       r5, r12, r0
	addi     r6, r0, 65
	calli    _ZN4Uart6printiEiiiiii
	add      r11, r11, r1
	bi       .L35
.L38:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 117
	bne    r2,r1,.L39
	lw       r1, (fp+-8)
	addi     r2, r1, 4
	sw       (fp+-8), r2
	lw       r1, (r1+0)
	addi     r2, r0, 10
	addi     r3, r0, 0
	or       r4, r13, r0
	or       r5, r12, r0
	addi     r6, r0, 97
	calli    _ZN4Uart6printiEiiiiii
	add      r11, r11, r1
	bi       .L35
.L39:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 99
	bne    r2,r1,.L35
	lw       r1, (fp+-8)
	addi     r2, r1, 4
	sw       (fp+-8), r2
	lw       r1, (r1+0)
	andi     r1, r1, 0xff
	sb       (fp+0), r1
	addi     r1, r0, 0
	sb       (fp+1), r1
	or       r1, fp, r0
	or       r2, r13, r0
	or       r3, r12, r0
	calli    _ZN4Uart6printsEPKcii
	add      r11, r11, r1
	bi       .L35
.L42:
	nop
.L21:
	lw       r1, (fp+-4)
	lbu      r1, (r1+0)
	calli    _ZN4Uart9printcharEc
	addi     r11, r11, 1
.L35:
	lw       r1, (fp+-4)
	addi     r1, r1, 1
	sw       (fp+-4), r1
.L20:
	lw       r1, (fp+-4)
	lbu      r1, (r1+0)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L40
	bi       .L23
.L41:
	nop
.L23:
	orhi     r1, r0, hi(ndex)
	ori      r1, r1, lo(ndex)
	lw       r2, (r1+0)
	orhi     r1, r0, hi(buffer)
	ori      r1, r1, lo(buffer)
	add      r1, r1, r2
	addi     r2, r0, 0
	sb       (r1+0), r2
	or       r1, r11, r0
	lw       r11, (sp+24)
	lw       r12, (sp+20)
	lw       r13, (sp+16)
	lw       r14, (sp+12)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 36
	b        ra
	.size	_ZN4Uart5printEPKcPv, .-_ZN4Uart5printEPKcPv
	.global	__umodsi3
	.global	__udivsi3
	.align 4
	.global	_ZN4Uart6printiEiiiiii
	.type	_ZN4Uart6printiEiiiiii, @function
_ZN4Uart6printiEiiiiii:
	addi     sp, sp, -64
	sw       (sp+28), r11
	sw       (sp+24), r12
	sw       (sp+20), r13
	sw       (sp+16), r14
	sw       (sp+12), r15
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 64
	add      fp, fp, sp
	sw       (fp+-12), r1
	sw       (fp+-16), r2
	sw       (fp+-20), r3
	sw       (fp+-24), r4
	sw       (fp+-28), r5
	sw       (fp+-32), r6
	addi     r15, r0, 0
	addi     r14, r0, 0
	lw       r12, (fp+-12)
	lw       r2, (fp+-12)
	addi     r1, r0, 0
	bne    r2,r1,.L44
	addi     r1, r0, 48
	sb       (fp+-8), r1
	addi     r1, r0, 0
	sb       (fp+-7), r1
	addi     r1, fp, -8
	lw       r2, (fp+-24)
	lw       r3, (fp+-28)
	calli    _ZN4Uart6printsEPKcii
	bi       .L45
.L44:
	lw       r2, (fp+-20)
	addi     r1, r0, 0
	be     r2,r1,.L46
	lw       r2, (fp+-16)
	addi     r1, r0, 10
	bne    r2,r1,.L46
	lw       r2, (fp+-12)
	addi     r1, r0, 0
	bge    r2,r1,.L46
	addi     r15, r0, 1
	lw       r1, (fp+-12)
	sub      r1, r0, r1
	or       r12, r1, r0
.L46:
	addi     r1, fp, -8
	addi     r11, r1, 11
	addi     r1, r0, 0
	sb       (r11+0), r1
	bi       .L47
.L49:
	lw       r2, (fp+-16)
	or       r1, r12, r0
	calli    __umodsi3
	or       r13, r1, r0
	addi     r1, r0, 9
	bge    r1,r13,.L48
	lw       r1, (fp+-32)
	addi     r1, r1, -58
	add      r13, r13, r1
.L48:
	addi     r11, r11, -1
	andi     r1, r13, 0xff
	addi     r1, r1, 48
	andi     r1, r1, 0xff
	sb       (r11+0), r1
	lw       r2, (fp+-16)
	or       r1, r12, r0
	calli    __udivsi3
	or       r12, r1, r0
.L47:
	cmpnei   r1, r12, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L49
	addi     r1, r0, 0
	be     r15,r1,.L50
	lw       r2, (fp+-24)
	addi     r1, r0, 0
	be     r2,r1,.L51
	lw       r1, (fp+-28)
	andi     r2, r1, 2
	addi     r1, r0, 0
	be     r2,r1,.L51
	addi     r1, r0, 45
	calli    _ZN4Uart9printcharEc
	addi     r14, r14, 1
	lw       r1, (fp+-24)
	addi     r1, r1, -1
	sw       (fp+-24), r1
	bi       .L50
.L51:
	addi     r11, r11, -1
	addi     r1, r0, 45
	sb       (r11+0), r1
.L50:
	or       r1, r11, r0
	lw       r2, (fp+-24)
	lw       r3, (fp+-28)
	calli    _ZN4Uart6printsEPKcii
	add      r1, r1, r14
.L45:
	lw       r11, (sp+28)
	lw       r12, (sp+24)
	lw       r13, (sp+20)
	lw       r14, (sp+16)
	lw       r15, (sp+12)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 64
	b        ra
	.size	_ZN4Uart6printiEiiiiii, .-_ZN4Uart6printiEiiiiii
	.align 4
	.global	_ZN4Uart6printsEPKcii
	.type	_ZN4Uart6printsEPKcii, @function
_ZN4Uart6printsEPKcii:
	addi     sp, sp, -36
	sw       (sp+24), r11
	sw       (sp+20), r12
	sw       (sp+16), r13
	sw       (sp+12), r14
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 36
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	sw       (fp+-8), r3
	addi     r11, r0, 0
	addi     r13, r0, 32
	lw       r1, (fp+-4)
	addi     r2, r0, 0
	bge    r2,r1,.L54
	addi     r12, r0, 0
	lw       r14, (fp+0)
	bi       .L55
.L56:
	addi     r12, r12, 1
	addi     r14, r14, 1
.L55:
	lbu      r1, (r14+0)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L56
	lw       r1, (fp+-4)
	bg     r1,r12,.L57
	addi     r1, r0, 0
	sw       (fp+-4), r1
	bi       .L58
.L57:
	lw       r1, (fp+-4)
	sub      r1, r1, r12
	sw       (fp+-4), r1
.L58:
	lw       r1, (fp+-8)
	andi     r2, r1, 2
	addi     r1, r0, 0
	be     r2,r1,.L54
	addi     r13, r0, 48
.L54:
	lw       r1, (fp+-8)
	andi     r1, r1, 1
	andi     r1, r1, 0xff
	xori     r1, r1, 1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L62
	bi       .L60
.L61:
	andi     r1, r13, 0xff
	calli    _ZN4Uart9printcharEc
	addi     r11, r11, 1
	lw       r1, (fp+-4)
	addi     r1, r1, -1
	sw       (fp+-4), r1
.L60:
	lw       r1, (fp+-4)
	cmpgi    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L61
	bi       .L62
.L63:
	lw       r1, (fp+0)
	lbu      r1, (r1+0)
	calli    _ZN4Uart9printcharEc
	addi     r11, r11, 1
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L62:
	lw       r1, (fp+0)
	lbu      r1, (r1+0)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L63
	bi       .L64
.L65:
	andi     r1, r13, 0xff
	calli    _ZN4Uart9printcharEc
	addi     r11, r11, 1
	lw       r1, (fp+-4)
	addi     r1, r1, -1
	sw       (fp+-4), r1
.L64:
	lw       r1, (fp+-4)
	cmpgi    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L65
	or       r1, r11, r0
	lw       r11, (sp+24)
	lw       r12, (sp+20)
	lw       r13, (sp+16)
	lw       r14, (sp+12)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 36
	b        ra
	.size	_ZN4Uart6printsEPKcii, .-_ZN4Uart6printsEPKcii
	.section	.rodata
	.align 4
	.type	_ZL8hexchars, @object
	.size	_ZL8hexchars, 16
_ZL8hexchars:
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.ident	"GCC: (GNU) 4.5.3"
