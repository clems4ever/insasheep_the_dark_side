	.file	"event.cpp"
	.section	.text
	.align 4
	.global	_ZN5EventC2ENS_9EventTypeE
	.type	_ZN5EventC2ENS_9EventTypeE, @function
_ZN5EventC2ENS_9EventTypeE:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	lw       r1, (fp+0)
	lw       r2, (fp+-4)
	sw       (r1+0), r2
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_ZN5EventC2ENS_9EventTypeE, .-_ZN5EventC2ENS_9EventTypeE
	.global	_ZN5EventC1ENS_9EventTypeE
	_ZN5EventC1ENS_9EventTypeE = _ZN5EventC2ENS_9EventTypeE
	.align 4
	.global	_ZNK5Event12getEventTypeEv
	.type	_ZNK5Event12getEventTypeEv, @function
_ZNK5Event12getEventTypeEv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZNK5Event12getEventTypeEv, .-_ZNK5Event12getEventTypeEv
	.ident	"GCC: (GNU) 4.5.3"
