	.file	"terminal.c"
	.section	.text
	.align 4
	.global	_Z6rebootv
	.type	_Z6rebootv, @function
_Z6rebootv:
	addi     sp, sp, -8
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 8
	add      fp, fp, sp
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 8
	b        ra
	.size	_Z6rebootv, .-_Z6rebootv
	.section	.rodata
	.align 4
.LC0:
	.string	"Jump to kernel"
	.section	.text
	.align 4
	.global	_Z14jump_to_kernelv
	.type	_Z14jump_to_kernelv, @function
_Z14jump_to_kernelv:
	addi     sp, sp, -8
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 8
	add      fp, fp, sp
	orhi     r1, r0, hi(.LC0)
	ori      r1, r1, lo(.LC0)
	calli    _ZN4Uart7printlnEPKc
	orhi     r1, r0, hi(1073741824)
	ori      r1, r1, 4864
	calli    jump
.L3:
	bi       .L3
	.size	_Z14jump_to_kernelv, .-_Z14jump_to_kernelv
	.section	.rodata
	.align 4
.LC1:
	.string	"Write memory"
	.section	.text
	.align 4
	.global	_Z9vga_blackv
	.type	_Z9vga_blackv, @function
_Z9vga_blackv:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	orhi     r1, r0, hi(1082130432)
	sw       (fp+-4), r1
	orhi     r1, r0, hi(.LC1)
	ori      r1, r1, lo(.LC1)
	calli    _ZN4Uart7printlnEPKc
	addi     r1, r0, 0
	sw       (fp+0), r1
	bi       .L5
.L6:
	lw       r1, (fp+0)
	add      r1, r1, r1
	lw       r2, (fp+-4)
	add      r1, r2, r1
	addi     r2, r0, 0
	sh       (r1+0), r2
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L5:
	lw       r2, (fp+0)
	orhi     r1, r0, hi(196608)
	ori      r1, r1, 43391
	cmpge    r1, r1, r2
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L6
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Z9vga_blackv, .-_Z9vga_blackv
	.align 4
	.global	_Z9vga_whitev
	.type	_Z9vga_whitev, @function
_Z9vga_whitev:
	addi     sp, sp, -20
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 20
	add      fp, fp, sp
	orhi     r1, r0, hi(1082130432)
	sw       (fp+-8), r1
	orhi     r1, r0, hi(.LC1)
	ori      r1, r1, lo(.LC1)
	calli    _ZN4Uart7printlnEPKc
	addi     r1, r0, 0
	sw       (fp+-4), r1
	bi       .L8
.L14:
	addi     r1, r0, 0
	sw       (fp+0), r1
	bi       .L9
.L13:
	lw       r1, (fp+0)
	addi     r2, r0, 0
	bg     r2,r1,.L10
	lw       r2, (fp+0)
	addi     r1, r0, 267
	bg     r2,r1,.L10
	lw       r1, (fp+-4)
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r2, r1, r1
	add      r2, r2, r2
	add      r1, r1, r2
	add      r2, r1, r1
	add      r2, r2, r2
	add      r2, r1, r2
	lw       r1, (fp+0)
	add      r1, r2, r1
	lw       r2, (fp+-8)
	add      r1, r2, r1
	addi     r2, r0, 1
	sb       (r1+0), r2
.L10:
	lw       r1, (fp+0)
	addi     r2, r0, 267
	bge    r2,r1,.L11
	lw       r2, (fp+0)
	addi     r1, r0, 531
	bg     r2,r1,.L11
	lw       r1, (fp+-4)
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r2, r1, r1
	add      r2, r2, r2
	add      r1, r1, r2
	add      r2, r1, r1
	add      r2, r2, r2
	add      r2, r1, r2
	lw       r1, (fp+0)
	add      r1, r2, r1
	lw       r2, (fp+-8)
	add      r1, r2, r1
	addi     r2, r0, 7
	sb       (r1+0), r2
.L11:
	lw       r1, (fp+0)
	addi     r2, r0, 531
	bge    r2,r1,.L12
	lw       r2, (fp+0)
	addi     r1, r0, 799
	bg     r2,r1,.L12
	lw       r1, (fp+-4)
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r1, r1, r1
	add      r2, r1, r1
	add      r2, r2, r2
	add      r1, r1, r2
	add      r2, r1, r1
	add      r2, r2, r2
	add      r2, r1, r2
	lw       r1, (fp+0)
	add      r1, r2, r1
	lw       r2, (fp+-8)
	add      r1, r2, r1
	addi     r2, r0, 4
	sb       (r1+0), r2
.L12:
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L9:
	lw       r1, (fp+0)
	addi     r2, r0, 799
	cmpge    r1, r2, r1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L13
	lw       r1, (fp+-4)
	addi     r1, r1, 1
	sw       (fp+-4), r1
.L8:
	lw       r1, (fp+-4)
	addi     r2, r0, 599
	cmpge    r1, r2, r1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L14
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 20
	b        ra
	.size	_Z9vga_whitev, .-_Z9vga_whitev
	.section	.rodata
	.align 4
.LC2:
	.string	"Try to write in RAM at the address "
	.align 4
.LC3:
	.string	"Try to dump memory, it should return the numbers from 0 to 9"
	.section	.text
	.align 4
	.global	_Z7ramtestv
	.type	_Z7ramtestv, @function
_Z7ramtestv:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	orhi     r1, r0, hi(1073741824)
	ori      r1, r1, 16384
	sw       (fp+-4), r1
	orhi     r1, r0, hi(.LC2)
	ori      r1, r1, lo(.LC2)
	calli    _ZN4Uart5printEPKc
	lw       r1, (fp+-4)
	calli    _ZN4Uart8printhexEi
	calli    _ZN4Uart8skiplineEv
	addi     r1, r0, 0
	sw       (fp+0), r1
	bi       .L16
.L17:
	lw       r1, (fp+0)
	lw       r2, (fp+-4)
	add      r1, r2, r1
	lw       r2, (fp+0)
	andi     r2, r2, 0xff
	sb       (r1+0), r2
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L16:
	lw       r1, (fp+0)
	addi     r2, r0, 9
	cmpge    r1, r2, r1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L17
	orhi     r1, r0, hi(.LC3)
	ori      r1, r1, lo(.LC3)
	calli    _ZN4Uart7printlnEPKc
	addi     r1, r0, 0
	sw       (fp+0), r1
	bi       .L18
.L19:
	lw       r1, (fp+0)
	lw       r2, (fp+-4)
	add      r1, r2, r1
	lbu      r1, (r1+0)
	calli    _ZN4Uart8printhexEi
	calli    _ZN4Uart8skiplineEv
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L18:
	lw       r1, (fp+0)
	addi     r2, r0, 9
	cmpge    r1, r2, r1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L19
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Z7ramtestv, .-_Z7ramtestv
	.section	.rodata
	.align 4
.LC4:
	.string	"Try to write in Flash at the address "
	.align 4
.LC5:
	.string	"Unlock the block"
	.global	__ashlsi3
	.global	__ashrsi3
	.align 4
.LC6:
	.string	"write status = "
	.section	.text
	.align 4
	.global	_Z9flashtestv
	.type	_Z9flashtestv, @function
_Z9flashtestv:
	addi     sp, sp, -24
	sw       (sp+12), r11
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 24
	add      fp, fp, sp
	orhi     r1, r0, hi(1342177280)
	ori      r1, r1, 16
	sw       (fp+-4), r1
	orhi     r1, r0, hi(.LC4)
	ori      r1, r1, lo(.LC4)
	calli    _ZN4Uart5printEPKc
	lw       r1, (fp+-4)
	calli    _ZN4Uart8printhexEi
	calli    _ZN4Uart8skiplineEv
	orhi     r1, r0, hi(.LC5)
	ori      r1, r1, lo(.LC5)
	calli    _ZN4Uart7printlnEPKc
	lw       r1, (fp+-4)
	calli    unlock_block
	orhi     r1, r0, hi(.LC1)
	ori      r1, r1, lo(.LC1)
	calli    _ZN4Uart7printlnEPKc
	addi     r1, r0, 0
	sw       (fp+0), r1
	bi       .L21
.L22:
	lw       r1, (fp+0)
	add      r1, r1, r1
	add      r1, r1, r1
	or       r2, r1, r0
	orhi     r1, r0, hi(1342177280)
	ori      r1, r1, 16
	add      r11, r2, r1
	lw       r1, (fp+0)
	addi     r2, r0, 16
	calli    __ashlsi3
	addi     r2, r0, 16
	calli    __ashrsi3
	or       r2, r1, r0
	or       r1, r11, r0
	calli    flash_write
	sh       (fp+-6), r1
	orhi     r1, r0, hi(.LC6)
	ori      r1, r1, lo(.LC6)
	calli    _ZN4Uart5printEPKc
	lhu      r1, (fp+-6)
	addi     r2, r0, 16
	calli    __ashlsi3
	addi     r2, r0, 16
	calli    __ashrsi3
	calli    _ZN4Uart8printhexEi
	calli    _ZN4Uart8skiplineEv
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L21:
	lw       r1, (fp+0)
	addi     r2, r0, 9
	cmpge    r1, r2, r1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L22
	orhi     r1, r0, hi(.LC3)
	ori      r1, r1, lo(.LC3)
	calli    _ZN4Uart7printlnEPKc
	addi     r1, r0, 0
	sw       (fp+0), r1
	bi       .L23
.L24:
	lw       r1, (fp+-4)
	lw       r2, (fp+-4)
	addi     r2, r2, 2
	sw       (fp+-4), r2
	calli    flash_read
	calli    _ZN4Uart8printhexEi
	calli    _ZN4Uart8skiplineEv
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L23:
	lw       r1, (fp+0)
	addi     r2, r0, 9
	cmpge    r1, r2, r1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L24
	lw       r11, (sp+12)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 24
	b        ra
	.size	_Z9flashtestv, .-_Z9flashtestv
	.section	.rodata
	.align 4
.LC7:
	.string	"INSoC bootloader helper"
	.align 4
.LC8:
	.string	"help\t\t\tdiplays this help"
	.align 4
.LC9:
	.string	"reboot\t\t\treboots the system"
	.align 4
.LC10:
	.string	"kernel\t\t\tjumps to kernel"
	.align 4
.LC11:
	.string	"ramtest\t\t\tperforms a memory test with the RAM memory"
	.align 4
.LC12:
	.string	"flashtest\t\tperforms a memory test with the Flash memory"
	.section	.text
	.align 4
	.global	_Z4helpv
	.type	_Z4helpv, @function
_Z4helpv:
	addi     sp, sp, -8
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 8
	add      fp, fp, sp
	orhi     r1, r0, hi(.LC7)
	ori      r1, r1, lo(.LC7)
	calli    _ZN4Uart7printlnEPKc
	calli    _ZN4Uart8skiplineEv
	orhi     r1, r0, hi(.LC8)
	ori      r1, r1, lo(.LC8)
	calli    _ZN4Uart7printlnEPKc
	orhi     r1, r0, hi(.LC9)
	ori      r1, r1, lo(.LC9)
	calli    _ZN4Uart7printlnEPKc
	orhi     r1, r0, hi(.LC10)
	ori      r1, r1, lo(.LC10)
	calli    _ZN4Uart7printlnEPKc
	orhi     r1, r0, hi(.LC11)
	ori      r1, r1, lo(.LC11)
	calli    _ZN4Uart7printlnEPKc
	orhi     r1, r0, hi(.LC12)
	ori      r1, r1, lo(.LC12)
	calli    _ZN4Uart7printlnEPKc
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 8
	b        ra
	.size	_Z4helpv, .-_Z4helpv
	.section	.rodata
	.align 4
.LC13:
	.string	">> "
	.section	.text
	.align 4
	.global	_Z10getCommandPci
	.type	_Z10getCommandPci, @function
_Z10getCommandPci:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	orhi     r1, r0, hi(.LC13)
	ori      r1, r1, lo(.LC13)
	calli    _ZN4Uart5printEPKc
	lw       r1, (fp+0)
	lw       r2, (fp+-4)
	calli    _ZN4Uart6getstrEPci
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Z10getCommandPci, .-_Z10getCommandPci
	.section	.rodata
	.align 4
.LC14:
	.string	"reboot"
	.align 4
.LC15:
	.string	"kernel"
	.align 4
.LC16:
	.string	"help"
	.align 4
.LC17:
	.string	"ramtest"
	.align 4
.LC18:
	.string	"flashtest"
	.align 4
.LC19:
	.string	"halt"
	.align 4
.LC20:
	.string	"white"
	.align 4
.LC21:
	.string	"black"
	.align 4
.LC22:
	.string	"Unknown command... %s"
	.section	.text
	.align 4
	.global	_Z12parseCommandPKc
	.type	_Z12parseCommandPKc, @function
_Z12parseCommandPKc:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	orhi     r2, r0, hi(.LC14)
	ori      r2, r2, lo(.LC14)
	calli    _Z6strcmpPKcS0_
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L28
	calli    _Z6rebootv
	bi       .L27
.L28:
	lw       r1, (fp+0)
	orhi     r2, r0, hi(.LC15)
	ori      r2, r2, lo(.LC15)
	calli    _Z6strcmpPKcS0_
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L30
	calli    _Z14jump_to_kernelv
	bi       .L27
.L30:
	lw       r1, (fp+0)
	orhi     r2, r0, hi(.LC16)
	ori      r2, r2, lo(.LC16)
	calli    _Z6strcmpPKcS0_
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L31
	calli    _Z4helpv
	bi       .L27
.L31:
	lw       r1, (fp+0)
	orhi     r2, r0, hi(.LC17)
	ori      r2, r2, lo(.LC17)
	calli    _Z6strcmpPKcS0_
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L32
	calli    _Z7ramtestv
	bi       .L27
.L32:
	lw       r1, (fp+0)
	orhi     r2, r0, hi(.LC18)
	ori      r2, r2, lo(.LC18)
	calli    _Z6strcmpPKcS0_
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L33
	calli    _Z9flashtestv
	bi       .L27
.L33:
	lw       r1, (fp+0)
	orhi     r2, r0, hi(.LC19)
	ori      r2, r2, lo(.LC19)
	calli    _Z6strcmpPKcS0_
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L34
	calli    halt
	bi       .L27
.L34:
	lw       r1, (fp+0)
	orhi     r2, r0, hi(.LC20)
	ori      r2, r2, lo(.LC20)
	calli    _Z6strcmpPKcS0_
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L35
	calli    _Z9vga_whitev
	bi       .L27
.L35:
	lw       r1, (fp+0)
	orhi     r2, r0, hi(.LC21)
	ori      r2, r2, lo(.LC21)
	calli    _Z6strcmpPKcS0_
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L36
	calli    _Z9vga_blackv
	bi       .L27
.L36:
	orhi     r1, r0, hi(.LC22)
	ori      r1, r1, lo(.LC22)
	lw       r2, (fp+0)
	calli    _ZN4Uart8printflnEPKcz
.L27:
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_Z12parseCommandPKc, .-_Z12parseCommandPKc
	.ident	"GCC: (GNU) 4.5.3"
