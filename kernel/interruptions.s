	.file	"interruptions.cpp"
	.global	__gxx_personality_sj0
	.global	_Unwind_SjLj_Register
	.global	_Unwind_SjLj_Unregister
	.section	.text
	.align 4
	.global	irq0
	.type	irq0, @function
irq0:
	addi     sp, sp, -136
	sw       (sp+68), r11
	sw       (sp+64), r12
	sw       (sp+60), r13
	sw       (sp+56), r14
	sw       (sp+52), r15
	sw       (sp+48), r16
	sw       (sp+44), r17
	sw       (sp+40), r18
	sw       (sp+36), r19
	sw       (sp+32), r20
	sw       (sp+28), r21
	sw       (sp+24), r22
	sw       (sp+20), r23
	sw       (sp+16), r24
	sw       (sp+12), r25
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 136
	add      fp, fp, sp
	orhi     r1, r0, hi(__gxx_personality_sj0)
	ori      r1, r1, lo(__gxx_personality_sj0)
	sw       (fp+-32), r1
	orhi     r1, r0, hi(.LLSDA30)
	ori      r1, r1, lo(.LLSDA30)
	sw       (fp+-28), r1
	addi     r1, fp, -24
	addi     r2, fp, 4
	sw       (r1+0), r2
	orhi     r2, r0, hi(.L3)
	ori      r2, r2, lo(.L3)
	sw       (r1+4), r2
	sw       (r1+8), sp
	addi     r1, fp, -56
	calli    _Unwind_SjLj_Register
	addi     r1, r0, -1
	sw       (fp+-52), r1
	calli    _ZN4Uart7getcharEv
	sb       (fp+3), r1
	addi     r1, r0, 8
	calli    _Znwj
	sw       (fp+-60), r1
	lw       r1, (fp+-60)
	lbu      r2, (fp+3)
	addi     r3, r0, 1
	sw       (fp+-52), r3
	calli    _ZN9UartEventC1Ec
	lw       r1, (fp+-60)
	sw       (fp+-4), r1
	lw       r1, (fp+-4)
	addi     r2, r0, -1
	sw       (fp+-52), r2
	calli    _ZN6Kernel9pushEventEP5Event
	addi     r1, fp, -56
	calli    _Unwind_SjLj_Unregister
	lw       r11, (sp+68)
	lw       r12, (sp+64)
	lw       r13, (sp+60)
	lw       r14, (sp+56)
	lw       r15, (sp+52)
	lw       r16, (sp+48)
	lw       r17, (sp+44)
	lw       r18, (sp+40)
	lw       r19, (sp+36)
	lw       r20, (sp+32)
	lw       r21, (sp+28)
	lw       r22, (sp+24)
	lw       r23, (sp+20)
	lw       r24, (sp+16)
	lw       r25, (sp+12)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 136
	b        ra
.L3:
	addi     fp, fp, -4
	lw       r1, (fp+-48)
	sw       (fp+-64), r1
	lw       r1, (fp+-60)
	calli    _ZdlPv
	lw       r1, (fp+-64)
	addi     r2, r0, -1
	sw       (fp+-52), r2
	calli    _Unwind_SjLj_Resume
	.size	irq0, .-irq0
	.section	.gcc_except_table,"a",@progbits
.LLSDA30:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE30-.LLSDACSB30
.LLSDACSB30:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE30:
	.section	.text
	.ident	"GCC: (GNU) 4.5.3"
