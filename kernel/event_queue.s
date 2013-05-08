	.file	"event_queue.cpp"
	.section	.text._ZN5QueueIP5EventEC2Ev,"axG",@progbits,_ZN5QueueIP5EventEC5Ev,comdat
	.align 4
	.weak	_ZN5QueueIP5EventEC2Ev
	.type	_ZN5QueueIP5EventEC2Ev, @function
_ZN5QueueIP5EventEC2Ev:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZN10LinkedListIP5EventEC2Ev
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN5QueueIP5EventEC2Ev, .-_ZN5QueueIP5EventEC2Ev
	.weak	_ZN5QueueIP5EventEC1Ev
	_ZN5QueueIP5EventEC1Ev = _ZN5QueueIP5EventEC2Ev
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
	.section	.rodata
	.align 4
.LC0:
	.string	"EventQueue initialized"
	.global	__gxx_personality_sj0
	.global	_Unwind_SjLj_Register
	.global	_Unwind_SjLj_Unregister
	.section	.text
	.align 4
	.global	_ZN10EventQueueC2Ev
	.type	_ZN10EventQueueC2Ev, @function
_ZN10EventQueueC2Ev:
	addi     sp, sp, -128
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
	addi     fp, r0, 128
	add      fp, fp, sp
	sw       (fp+0), r1
	orhi     r1, r0, hi(__gxx_personality_sj0)
	ori      r1, r1, lo(__gxx_personality_sj0)
	sw       (fp+-28), r1
	orhi     r1, r0, hi(.LLSDA34)
	ori      r1, r1, lo(.LLSDA34)
	sw       (fp+-24), r1
	addi     r1, fp, -20
	addi     r2, fp, 4
	sw       (r1+0), r2
	orhi     r2, r0, hi(.L6)
	ori      r2, r2, lo(.L6)
	sw       (r1+4), r2
	sw       (r1+8), sp
	addi     r1, fp, -52
	calli    _Unwind_SjLj_Register
	lw       r1, (fp+0)
	calli    _ZN5QueueIP5EventEC1Ev
	orhi     r1, r0, hi(.LC0)
	addi     r2, r0, 1
	sw       (fp+-48), r2
	ori      r1, r1, lo(.LC0)
	calli    _ZN4Uart8printflnEPKcz
	bi       .L8
.L6:
	addi     fp, fp, -4
	lw       r1, (fp+-44)
	sw       (fp+-56), r1
	lw       r1, (fp+0)
	addi     r2, r0, 0
	sw       (fp+-48), r2
	calli    _ZN5QueueIP5EventED1Ev
	lw       r1, (fp+-56)
	addi     r2, r0, -1
	sw       (fp+-48), r2
	calli    _Unwind_SjLj_Resume
.L8:
	addi     r1, fp, -52
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
	addi     sp, sp, 128
	b        ra
	.size	_ZN10EventQueueC2Ev, .-_ZN10EventQueueC2Ev
	.section	.gcc_except_table,"a",@progbits
.LLSDA34:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE34-.LLSDACSB34
.LLSDACSB34:
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE34:
	.section	.text
	.global	_ZN10EventQueueC1Ev
	_ZN10EventQueueC1Ev = _ZN10EventQueueC2Ev
	.align 4
	.global	_ZN10EventQueue4initEv
	.type	_ZN10EventQueue4initEv, @function
_ZN10EventQueue4initEv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN10EventQueue4initEv, .-_ZN10EventQueue4initEv
	.align 4
	.global	_ZN10EventQueue5readyEv
	.type	_ZN10EventQueue5readyEv, @function
_ZN10EventQueue5readyEv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZNK5QueueIP5EventE4sizeEv
	cmpgi    r1, r1, 0
	andi     r1, r1, 0xff
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN10EventQueue5readyEv, .-_ZN10EventQueue5readyEv
	.align 4
	.global	_ZN10EventQueue3popEv
	.type	_ZN10EventQueue3popEv, @function
_ZN10EventQueue3popEv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZN5QueueIP5EventE3popEv
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN10EventQueue3popEv, .-_ZN10EventQueue3popEv
	.align 4
	.global	_ZN10EventQueue4pushEP5Event
	.type	_ZN10EventQueue4pushEP5Event, @function
_ZN10EventQueue4pushEP5Event:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	lw       r1, (fp+0)
	addi     r2, fp, -4
	calli    _ZN5QueueIP5EventE4pushERKS1_
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_ZN10EventQueue4pushEP5Event, .-_ZN10EventQueue4pushEP5Event
	.section	.text._ZN10LinkedListIP5EventEC2Ev,"axG",@progbits,_ZN10LinkedListIP5EventEC5Ev,comdat
	.align 4
	.weak	_ZN10LinkedListIP5EventEC2Ev
	.type	_ZN10LinkedListIP5EventEC2Ev, @function
_ZN10LinkedListIP5EventEC2Ev:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	addi     r2, r0, 0
	sw       (r1+4), r2
	lw       r1, (fp+0)
	addi     r2, r0, 0
	sw       (r1+8), r2
	lw       r1, (fp+0)
	addi     r2, r0, 0
	sw       (r1+0), r2
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN10LinkedListIP5EventEC2Ev, .-_ZN10LinkedListIP5EventEC2Ev
	.weak	_ZN10LinkedListIP5EventEC1Ev
	_ZN10LinkedListIP5EventEC1Ev = _ZN10LinkedListIP5EventEC2Ev
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
	.section	.text._ZNK5QueueIP5EventE4sizeEv,"axG",@progbits,_ZNK5QueueIP5EventE4sizeEv,comdat
	.align 4
	.weak	_ZNK5QueueIP5EventE4sizeEv
	.type	_ZNK5QueueIP5EventE4sizeEv, @function
_ZNK5QueueIP5EventE4sizeEv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZNK10LinkedListIP5EventE5countEv
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZNK5QueueIP5EventE4sizeEv, .-_ZNK5QueueIP5EventE4sizeEv
	.section	.text._ZN5QueueIP5EventE3popEv,"axG",@progbits,_ZN5QueueIP5EventE3popEv,comdat
	.align 4
	.weak	_ZN5QueueIP5EventE3popEv
	.type	_ZN5QueueIP5EventE3popEv, @function
_ZN5QueueIP5EventE3popEv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	calli    _ZN10LinkedListIP5EventE8takeLastEv
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZN5QueueIP5EventE3popEv, .-_ZN5QueueIP5EventE3popEv
	.section	.text._ZN5QueueIP5EventE4pushERKS1_,"axG",@progbits,_ZN5QueueIP5EventE4pushERKS1_,comdat
	.align 4
	.weak	_ZN5QueueIP5EventE4pushERKS1_
	.type	_ZN5QueueIP5EventE4pushERKS1_, @function
_ZN5QueueIP5EventE4pushERKS1_:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	lw       r1, (fp+0)
	lw       r2, (fp+-4)
	calli    _ZN10LinkedListIP5EventE8addFirstERKS1_
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_ZN5QueueIP5EventE4pushERKS1_, .-_ZN5QueueIP5EventE4pushERKS1_
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
	bi       .L20
.L21:
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	sw       (fp+-4), r1
	lw       r1, (fp+0)
	calli    _ZdlPv
	lw       r1, (fp+-4)
	sw       (fp+0), r1
.L20:
	lw       r1, (fp+0)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L21
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
	.section	.text._ZNK10LinkedListIP5EventE5countEv,"axG",@progbits,_ZNK10LinkedListIP5EventE5countEv,comdat
	.align 4
	.weak	_ZNK10LinkedListIP5EventE5countEv
	.type	_ZNK10LinkedListIP5EventE5countEv, @function
_ZNK10LinkedListIP5EventE5countEv:
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
	.size	_ZNK10LinkedListIP5EventE5countEv, .-_ZNK10LinkedListIP5EventE5countEv
	.section	.text._ZN10LinkedListIP5EventE8takeLastEv,"axG",@progbits,_ZN10LinkedListIP5EventE8takeLastEv,comdat
	.align 4
	.weak	_ZN10LinkedListIP5EventE8takeLastEv
	.type	_ZN10LinkedListIP5EventE8takeLastEv, @function
_ZN10LinkedListIP5EventE8takeLastEv:
	addi     sp, sp, -20
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 20
	add      fp, fp, sp
	sw       (fp+-8), r1
	lw       r1, (fp+-8)
	lw       r1, (r1+8)
	sw       (fp+0), r1
	lw       r1, (fp+0)
	lw       r1, (r1+8)
	sw       (fp+-4), r1
	lw       r1, (fp+-8)
	lw       r2, (fp+0)
	calli    _ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE
	lw       r1, (fp+-4)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 20
	b        ra
	.size	_ZN10LinkedListIP5EventE8takeLastEv, .-_ZN10LinkedListIP5EventE8takeLastEv
	.section	.text._ZN10LinkedListIP5EventE8addFirstERKS1_,"axG",@progbits,_ZN10LinkedListIP5EventE8addFirstERKS1_,comdat
	.align 4
	.weak	_ZN10LinkedListIP5EventE8addFirstERKS1_
	.type	_ZN10LinkedListIP5EventE8addFirstERKS1_, @function
_ZN10LinkedListIP5EventE8addFirstERKS1_:
	addi     sp, sp, -20
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 20
	add      fp, fp, sp
	sw       (fp+-4), r1
	sw       (fp+-8), r2
	lw       r1, (fp+-4)
	lw       r2, (fp+-8)
	addi     r3, r0, 0
	addi     r4, r0, 0
	calli    _ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_
	sw       (fp+0), r1
	lw       r1, (fp+-4)
	lw       r2, (r1+0)
	addi     r1, r0, 0
	bne    r2,r1,.L25
	lw       r1, (fp+-4)
	lw       r2, (fp+0)
	sw       (r1+8), r2
	bi       .L26
.L25:
	lw       r1, (fp+-4)
	lw       r1, (r1+4)
	lw       r2, (fp+0)
	sw       (r1+4), r2
	lw       r1, (fp+-4)
	lw       r2, (r1+4)
	lw       r1, (fp+0)
	sw       (r1+0), r2
.L26:
	lw       r1, (fp+-4)
	lw       r2, (fp+0)
	sw       (r1+4), r2
	lw       r1, (fp+-4)
	lw       r1, (r1+0)
	addi     r2, r1, 1
	lw       r1, (fp+-4)
	sw       (r1+0), r2
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 20
	b        ra
	.size	_ZN10LinkedListIP5EventE8addFirstERKS1_, .-_ZN10LinkedListIP5EventE8addFirstERKS1_
	.section	.text._ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE,"axG",@progbits,_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE,comdat
	.align 4
	.weak	_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE
	.type	_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE, @function
_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE:
	addi     sp, sp, -24
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 24
	add      fp, fp, sp
	sw       (fp+-8), r1
	sw       (fp+-12), r2
	lw       r2, (fp+-12)
	addi     r1, r0, 0
	be     r2,r1,.L35
	lw       r1, (fp+-8)
	lw       r2, (r1+0)
	addi     r1, r0, 0
	be     r2,r1,.L36
.L29:
	lw       r1, (fp+-8)
	lw       r2, (r1+0)
	addi     r1, r0, 1
	bne    r2,r1,.L31
	lw       r1, (fp+-12)
	calli    _ZdlPv
	lw       r1, (fp+-8)
	addi     r2, r0, 0
	sw       (r1+4), r2
	lw       r1, (fp+-8)
	addi     r2, r0, 0
	sw       (r1+8), r2
	lw       r1, (fp+-8)
	addi     r2, r0, 0
	sw       (r1+0), r2
	bi       .L27
.L31:
	lw       r1, (fp+-12)
	lw       r1, (r1+4)
	sw       (fp+0), r1
	lw       r1, (fp+-12)
	lw       r1, (r1+0)
	sw       (fp+-4), r1
	lw       r1, (fp+-8)
	lw       r2, (r1+4)
	lw       r1, (fp+-12)
	bne    r2,r1,.L32
	lw       r1, (fp+-8)
	lw       r2, (fp+-4)
	sw       (r1+4), r2
	lw       r1, (fp+-8)
	lw       r1, (r1+4)
	addi     r2, r0, 0
	sw       (r1+4), r2
	bi       .L33
.L32:
	lw       r1, (fp+-8)
	lw       r2, (r1+8)
	lw       r1, (fp+-12)
	bne    r2,r1,.L34
	lw       r1, (fp+-8)
	lw       r2, (fp+0)
	sw       (r1+8), r2
	lw       r1, (fp+-8)
	lw       r1, (r1+8)
	addi     r2, r0, 0
	sw       (r1+0), r2
	bi       .L33
.L34:
	lw       r1, (fp+0)
	lw       r2, (fp+-4)
	sw       (r1+0), r2
	lw       r1, (fp+-4)
	lw       r2, (fp+0)
	sw       (r1+4), r2
.L33:
	lw       r1, (fp+-12)
	calli    _ZdlPv
	lw       r1, (fp+-8)
	lw       r1, (r1+0)
	addi     r2, r1, -1
	lw       r1, (fp+-8)
	sw       (r1+0), r2
	bi       .L27
.L35:
	nop
	bi       .L27
.L36:
	nop
.L27:
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 24
	b        ra
	.size	_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE, .-_ZN10LinkedListIP5EventE11destroyNodeEPNS2_4NodeE
	.section	.text._ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_,"axG",@progbits,_ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_,comdat
	.align 4
	.weak	_ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_
	.type	_ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_, @function
_ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_:
	addi     sp, sp, -28
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 28
	add      fp, fp, sp
	sw       (fp+-4), r1
	sw       (fp+-8), r2
	sw       (fp+-12), r3
	sw       (fp+-16), r4
	addi     r1, r0, 12
	calli    _Znwj
	sw       (fp+0), r1
	lw       r1, (fp+-8)
	lw       r2, (r1+0)
	lw       r1, (fp+0)
	sw       (r1+8), r2
	lw       r1, (fp+0)
	lw       r2, (fp+-12)
	sw       (r1+4), r2
	lw       r1, (fp+0)
	lw       r2, (fp+-16)
	sw       (r1+0), r2
	lw       r1, (fp+0)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 28
	b        ra
	.size	_ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_, .-_ZN10LinkedListIP5EventE10createNodeERKS1_PNS2_4NodeES6_
	.ident	"GCC: (GNU) 4.5.3"
