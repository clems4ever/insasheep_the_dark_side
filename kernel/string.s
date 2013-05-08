	.file	"string.c"
	.section	.text
	.align 4
	.global	_Z6strlenPKc
	.type	_Z6strlenPKc, @function
_Z6strlenPKc:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+-4), r1
	addi     r1, r0, 0
	sw       (fp+0), r1
	bi       .L2
.L3:
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L2:
	lw       r1, (fp+-4)
	lbu      r1, (r1+0)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L3
	lw       r1, (fp+0)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Z6strlenPKc, .-_Z6strlenPKc
	.align 4
	.global	_Z6strcpyPcPKc
	.type	_Z6strcpyPcPKc, @function
_Z6strcpyPcPKc:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	bi       .L5
.L6:
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	lw       r1, (fp+0)
	sb       (r1+0), r2
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
	lw       r1, (fp+-4)
	addi     r1, r1, 1
	sw       (fp+-4), r1
.L5:
	lw       r1, (fp+-4)
	lbu      r1, (r1+0)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L6
	lw       r1, (fp+0)
	addi     r2, r0, 0
	sb       (r1+0), r2
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Z6strcpyPcPKc, .-_Z6strcpyPcPKc
	.align 4
	.global	_Z6strcmpPKcS0_
	.type	_Z6strcmpPKcS0_, @function
_Z6strcmpPKcS0_:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	bi       .L8
.L11:
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
	lw       r1, (fp+-4)
	addi     r1, r1, 1
	sw       (fp+-4), r1
.L8:
	lw       r1, (fp+0)
	lbu      r2, (r1+0)
	lw       r1, (fp+-4)
	lbu      r1, (r1+0)
	bne    r2,r1,.L9
	lw       r1, (fp+0)
	lbu      r2, (r1+0)
	addi     r1, r0, 0
	be     r2,r1,.L9
	addi     r1, r0, 1
	bi       .L10
.L9:
	addi     r1, r0, 0
.L10:
	addi     r2, r0, 0
	bne    r1,r2,.L11
	lw       r1, (fp+0)
	lbu      r2, (r1+0)
	addi     r1, r0, 0
	bne    r2,r1,.L12
	lw       r1, (fp+-4)
	lbu      r2, (r1+0)
	addi     r1, r0, 0
	bne    r2,r1,.L12
	addi     r1, r0, 0
	bi       .L13
.L12:
	lw       r1, (fp+0)
	lbu      r1, (r1+0)
	lw       r2, (fp+-4)
	lbu      r2, (r2+0)
	bgeu   r2,r1,.L14
	addi     r1, r0, 1
	bi       .L13
.L14:
	addi     r1, r0, -1
.L13:
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Z6strcmpPKcS0_, .-_Z6strcmpPKcS0_
	.ident	"GCC: (GNU) 4.5.3"
