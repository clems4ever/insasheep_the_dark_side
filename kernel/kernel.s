	.file	"kernel.cpp"
	.global	_ZN6Kernel6m_heapE
	.section	.bss
	.align 4
	.type	_ZN6Kernel6m_heapE, @object
	.size	_ZN6Kernel6m_heapE, 8
_ZN6Kernel6m_heapE:
	.zero	8
	.global	_ZN6Kernel13m_event_queueE
	.align 4
	.type	_ZN6Kernel13m_event_queueE, @object
	.size	_ZN6Kernel13m_event_queueE, 12
_ZN6Kernel13m_event_queueE:
	.zero	12
	.section	.rodata
	.align 4
.LC0:
	.string	"%c"
	.section	.text
	.align 4
	.global	_ZN6Kernel4loopEv
	.type	_ZN6Kernel4loopEv, @function
_ZN6Kernel4loopEv:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	bi       .L3
.L4:
	nop
	bi       .L3
.L5:
	nop
.L3:
	orhi     r1, r0, hi(_ZN6Kernel13m_event_queueE)
	ori      r1, r1, lo(_ZN6Kernel13m_event_queueE)
	calli    _ZN10EventQueue5readyEv
	or       r2, r1, r0
	addi     r1, r0, 0
	be     r2,r1,.L4
	orhi     r1, r0, hi(_ZN6Kernel13m_event_queueE)
	ori      r1, r1, lo(_ZN6Kernel13m_event_queueE)
	calli    _ZN10EventQueue3popEv
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZNK5Event12getEventTypeEv
	cmpei    r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L5
	lw       r1, (fp+0)
	calli    _ZNK9UartEvent6getKeyEv
	sb       (fp+-1), r1
	lbu      r2, (fp+-1)
	orhi     r1, r0, hi(.LC0)
	ori      r1, r1, lo(.LC0)
	calli    _ZN4Uart6printfEPKcz
	lw       r1, (fp+0)
	calli    _ZdlPv
	bi       .L3
	.size	_ZN6Kernel4loopEv, .-_ZN6Kernel4loopEv
	.align 4
	.global	_ZN6Kernel9pushEventEP5Event
	.type	_ZN6Kernel9pushEventEP5Event, @function
_ZN6Kernel9pushEventEP5Event:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	orhi     r1, r0, hi(_ZN6Kernel13m_event_queueE)
	ori      r1, r1, lo(_ZN6Kernel13m_event_queueE)
	lw       r2, (fp+0)
	calli    _ZN10EventQueue4pushEP5Event
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN6Kernel9pushEventEP5Event, .-_ZN6Kernel9pushEventEP5Event
	.section	.text._ZN5QueueIP5EventED2Ev,"axG",@progbits,_ZN5QueueIP5EventED5Ev,comdat
	.align 4
	.weak	_ZN5QueueIP5EventED2Ev
	.type	_ZN5QueueIP5EventED2Ev, @function
_ZN5QueueIP5EventED2Ev:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZN10LinkedListIP5EventED2Ev
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN5QueueIP5EventED2Ev, .-_ZN5QueueIP5EventED2Ev
	.weak	_ZN5QueueIP5EventED1Ev
	_ZN5QueueIP5EventED1Ev = _ZN5QueueIP5EventED2Ev
	.section	.text._ZN10EventQueueD2Ev,"axG",@progbits,_ZN10EventQueueD5Ev,comdat
	.align 4
	.weak	_ZN10EventQueueD2Ev
	.type	_ZN10EventQueueD2Ev, @function
_ZN10EventQueueD2Ev:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZN5QueueIP5EventED1Ev
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN10EventQueueD2Ev, .-_ZN10EventQueueD2Ev
	.weak	_ZN10EventQueueD1Ev
	_ZN10EventQueueD1Ev = _ZN10EventQueueD2Ev
	.section	.text
	.align 4
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	lw       r2, (fp+0)
	addi     r1, r0, 1
	bne    r2,r1,.L11
	lw       r2, (fp+-4)
	ori      r1, r0, 65535
	bne    r2,r1,.L11
	orhi     r1, r0, hi(_ZN6Kernel6m_heapE)
	ori      r1, r1, lo(_ZN6Kernel6m_heapE)
	orhi     r2, r0, hi(1081081856)
	orhi     r3, r0, hi(1048576)
	calli    _ZN4HeapC1EPvi
	orhi     r1, r0, hi(_ZN6Kernel13m_event_queueE)
	ori      r1, r1, lo(_ZN6Kernel13m_event_queueE)
	calli    _ZN10EventQueueC1Ev
	orhi     r1, r0, hi(_ZN10EventQueueD1Ev)
	ori      r1, r1, lo(_ZN10EventQueueD1Ev)
	orhi     r2, r0, hi(_ZN6Kernel13m_event_queueE)
	ori      r2, r2, lo(_ZN6Kernel13m_event_queueE)
	orhi     r3, r0, hi(__dso_handle)
	ori      r3, r3, lo(__dso_handle)
	calli    __cxa_atexit
.L11:
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZN10LinkedListIP5EventED2Ev,"axG",@progbits,_ZN10LinkedListIP5EventED5Ev,comdat
	.align 4
	.weak	_ZN10LinkedListIP5EventED2Ev
	.type	_ZN10LinkedListIP5EventED2Ev, @function
_ZN10LinkedListIP5EventED2Ev:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZN10LinkedListIP5EventE5clearEv
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN10LinkedListIP5EventED2Ev, .-_ZN10LinkedListIP5EventED2Ev
	.weak	_ZN10LinkedListIP5EventED1Ev
	_ZN10LinkedListIP5EventED1Ev = _ZN10LinkedListIP5EventED2Ev
	.section	.text._ZN10LinkedListIP5EventE5clearEv,"axG",@progbits,_ZN10LinkedListIP5EventE5clearEv,comdat
	.align 4
	.weak	_ZN10LinkedListIP5EventE5clearEv
	.type	_ZN10LinkedListIP5EventE5clearEv, @function
_ZN10LinkedListIP5EventE5clearEv:
	addi     sp, sp, -20
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 20
	add      fp, fp, sp
	sw       (fp+-8), r1
	lw       r1, (fp+-8)
	lw       r1, (r1+4)
	sw       (fp+0), r1
	bi       .L16
.L17:
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	sw       (fp+-4), r1
	lw       r1, (fp+0)
	calli    _ZdlPv
	lw       r1, (fp+-4)
	sw       (fp+0), r1
.L16:
	lw       r1, (fp+0)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L17
	lw       r1, (fp+-8)
	addi     r2, r0, 0
	sw       (r1+0), r2
	lw       r1, (fp+-8)
	addi     r2, r0, 0
	sw       (r1+4), r2
	lw       r1, (fp+-8)
	addi     r2, r0, 0
	sw       (r1+8), r2
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 20
	b        ra
	.size	_ZN10LinkedListIP5EventE5clearEv, .-_ZN10LinkedListIP5EventE5clearEv
	.section	.text
	.align 4
	.type	_GLOBAL__I__ZN6Kernel6m_heapE, @function
_GLOBAL__I__ZN6Kernel6m_heapE:
	addi     sp, sp, -8
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 8
	add      fp, fp, sp
	addi     r1, r0, 1
	ori      r2, r0, 65535
	calli    _Z41__static_initialization_and_destruction_0ii
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 8
	b        ra
	.size	_GLOBAL__I__ZN6Kernel6m_heapE, .-_GLOBAL__I__ZN6Kernel6m_heapE
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__I__ZN6Kernel6m_heapE
	.ident	"GCC: (GNU) 4.5.3"
