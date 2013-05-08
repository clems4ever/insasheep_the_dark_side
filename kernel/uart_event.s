	.file	"uart_event.cpp"
	.section	.text
	.align 4
	.global	_ZN9UartEventC2Ec
	.type	_ZN9UartEventC2Ec, @function
_ZN9UartEventC2Ec:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	or       r1, r2, r0
	sb       (fp+-4), r1
	lw       r1, (fp+0)
	addi     r2, r0, 0
	calli    _ZN5EventC2ENS_9EventTypeE
	lw       r1, (fp+0)
	lbu      r2, (fp+-4)
	sb       (r1+4), r2
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_ZN9UartEventC2Ec, .-_ZN9UartEventC2Ec
	.global	_ZN9UartEventC1Ec
	_ZN9UartEventC1Ec = _ZN9UartEventC2Ec
	.align 4
	.global	_ZNK9UartEvent6getKeyEv
	.type	_ZNK9UartEvent6getKeyEv, @function
_ZNK9UartEvent6getKeyEv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	lbu      r1, (r1+4)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZNK9UartEvent6getKeyEv, .-_ZNK9UartEvent6getKeyEv
	.ident	"GCC: (GNU) 4.5.3"
