	.file	"heap.cpp"
	.section	.text._ZNK4Heap9blockSizeEPNS_10HeapHeaderE,"axG",@progbits,_ZNK4Heap9blockSizeEPNS_10HeapHeaderE,comdat
	.align 4
	.weak	_ZNK4Heap9blockSizeEPNS_10HeapHeaderE
	.type	_ZNK4Heap9blockSizeEPNS_10HeapHeaderE, @function
_ZNK4Heap9blockSizeEPNS_10HeapHeaderE:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	lw       r1, (fp+-4)
	lw       r1, (r1+0)
	or       r2, r1, r0
	lw       r1, (fp+-4)
	sub      r1, r2, r1
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_ZNK4Heap9blockSizeEPNS_10HeapHeaderE, .-_ZNK4Heap9blockSizeEPNS_10HeapHeaderE
	.section	.text._ZNK4Heap10addressMaxEv,"axG",@progbits,_ZNK4Heap10addressMaxEv,comdat
	.align 4
	.weak	_ZNK4Heap10addressMaxEv
	.type	_ZNK4Heap10addressMaxEv, @function
_ZNK4Heap10addressMaxEv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	or       r2, r1, r0
	lw       r1, (fp+0)
	lw       r1, (r1+4)
	add      r1, r2, r1
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZNK4Heap10addressMaxEv, .-_ZNK4Heap10addressMaxEv
	.section	.text
	.align 4
	.global	_ZN4HeapC2EPvi
	.type	_ZN4HeapC2EPvi, @function
_ZN4HeapC2EPvi:
	addi     sp, sp, -20
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 20
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	sw       (fp+-8), r3
	lw       r2, (fp+-4)
	lw       r1, (fp+0)
	sw       (r1+0), r2
	lw       r1, (fp+0)
	lw       r2, (fp+-8)
	sw       (r1+4), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	addi     r2, r0, 0
	sh       (r1+8), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       r3, (fp+-4)
	lw       r2, (fp+-8)
	add      r2, r3, r2
	sw       (r1+0), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	addi     r2, r0, 0
	sw       (r1+4), r2
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 20
	b        ra
	.size	_ZN4HeapC2EPvi, .-_ZN4HeapC2EPvi
	.global	_ZN4HeapC1EPvi
	_ZN4HeapC1EPvi = _ZN4HeapC2EPvi
	.align 4
	.global	_ZN4Heap6mallocEj
	.type	_ZN4Heap6mallocEj, @function
_ZN4Heap6mallocEj:
	addi     sp, sp, -36
	sw       (sp+12), r11
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 36
	add      fp, fp, sp
	sw       (fp+-16), r1
	sw       (fp+-20), r2
	addi     r1, r0, 0
	sb       (fp+-5), r1
	lw       r2, (fp+-20)
	addi     r1, r0, 0
	bne    r2,r1,.L5
	addi     r1, r0, 0
	bi       .L6
.L5:
	lw       r1, (fp+-16)
	lw       r1, (r1+0)
	sw       (fp+0), r1
	addi     r1, r0, -1
	sw       (fp+-4), r1
	bi       .L7
.L8:
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	sw       (fp+0), r1
.L7:
	lw       r1, (fp+0)
	lhu      r1, (r1+8)
	cmpnei   r1, r1, 0
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L8
	lw       r2, (fp+0)
	lw       r1, (fp+-20)
	add      r1, r2, r1
	addi     r11, r1, 12
	lw       r1, (fp+-16)
	calli    _ZNK4Heap10addressMaxEv
	cmpgu    r1, r1, r11
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L9
	lw       r1, (fp+0)
	addi     r2, r0, 1
	sh       (r1+8), r2
	lw       r1, (fp+-16)
	lw       r2, (fp+0)
	calli    _ZNK4Heap9blockSizeEPNS_10HeapHeaderE
	or       r2, r1, r0
	lw       r1, (fp+-20)
	addi     r1, r1, 28
	cmpgeu   r1, r2, r1
	sb       (fp+-5), r1
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	sw       (fp+-12), r1
	lbu      r2, (fp+-5)
	addi     r1, r0, 0
	be     r2,r1,.L10
	lw       r2, (fp+0)
	lw       r1, (fp+-20)
	add      r1, r2, r1
	addi     r1, r1, 12
	or       r2, r1, r0
	lw       r1, (fp+0)
	sw       (r1+0), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	addi     r2, r0, 0
	sh       (r1+8), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       r2, (fp+-12)
	sw       (r1+0), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       r2, (fp+0)
	sw       (r1+4), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       r1, (r1+0)
	or       r11, r1, r0
	lw       r1, (fp+-16)
	calli    _ZNK4Heap10addressMaxEv
	cmpne    r1, r11, r1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	be     r2,r1,.L10
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       r1, (r1+0)
	lw       r2, (fp+0)
	lw       r2, (r2+0)
	sw       (r1+4), r2
.L10:
	lw       r1, (fp+0)
	addi     r1, r1, 12
	sw       (fp+-4), r1
.L9:
	lw       r1, (fp+-4)
.L6:
	lw       r11, (sp+12)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 36
	b        ra
	.size	_ZN4Heap6mallocEj, .-_ZN4Heap6mallocEj
	.align 4
	.global	_ZN4Heap4freeEPv
	.type	_ZN4Heap4freeEPv, @function
_ZN4Heap4freeEPv:
	addi     sp, sp, -20
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 20
	add      fp, fp, sp
	sw       (fp+-4), r1
	sw       (fp+-8), r2
	lw       r1, (fp+-8)
	addi     r1, r1, -12
	sw       (fp+0), r1
	lw       r1, (fp+0)
	addi     r2, r0, 0
	sh       (r1+8), r2
	lw       r1, (fp+0)
	lw       r2, (r1+0)
	addi     r1, r0, 0
	be     r2,r1,.L12
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lhu      r2, (r1+8)
	addi     r1, r0, 0
	bne    r2,r1,.L12
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       r2, (r1+0)
	lw       r1, (fp+0)
	sw       (r1+0), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	or       r2, r1, r0
	lw       r1, (fp+-4)
	lw       r1, (r1+0)
	or       r3, r1, r0
	lw       r1, (fp+-4)
	lw       r1, (r1+4)
	add      r1, r3, r1
	bgeu   r2,r1,.L12
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       r2, (fp+0)
	sw       (r1+4), r2
.L12:
	lw       r1, (fp+0)
	lw       r2, (r1+4)
	addi     r1, r0, 0
	be     r2,r1,.L11
	lw       r1, (fp+0)
	lw       r1, (r1+4)
	lhu      r2, (r1+8)
	addi     r1, r0, 0
	bne    r2,r1,.L11
	lw       r1, (fp+0)
	lw       r1, (r1+4)
	lw       r2, (fp+0)
	lw       r2, (r2+0)
	sw       (r1+0), r2
	lw       r1, (fp+0)
	lw       r1, (r1+0)
	lw       r2, (fp+0)
	lw       r2, (r2+4)
	sw       (r1+4), r2
.L11:
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 20
	b        ra
	.size	_ZN4Heap4freeEPv, .-_ZN4Heap4freeEPv
	.section	.rodata
	.align 4
.LC0:
	.string	"%d, @ = %x, u = %d, s = %d, next = %x, prev = %x"
	.align 4
.LC1:
	.string	"Heap error!"
	.section	.text
	.align 4
	.global	_ZN4Heap5debugEv
	.type	_ZN4Heap5debugEv, @function
_ZN4Heap5debugEv:
	addi     sp, sp, -20
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 20
	add      fp, fp, sp
	sw       (fp+-8), r1
	addi     r1, r0, 0
	sw       (fp+0), r1
	lw       r1, (fp+-8)
	lw       r1, (r1+0)
	sw       (fp+-4), r1
	bi       .L15
.L18:
	lw       r1, (fp+-4)
	lhu      r1, (r1+8)
	or       r4, r1, r0
	lw       r1, (fp+-4)
	lw       r1, (r1+0)
	or       r2, r1, r0
	lw       r1, (fp+-4)
	sub      r5, r2, r1
	lw       r1, (fp+-4)
	lw       r6, (r1+0)
	lw       r1, (fp+-4)
	lw       r7, (r1+4)
	orhi     r1, r0, hi(.LC0)
	ori      r1, r1, lo(.LC0)
	lw       r2, (fp+0)
	lw       r3, (fp+-4)
	calli    _ZN4Uart8printflnEPKcz
	lw       r1, (fp+-4)
	lw       r1, (r1+0)
	sw       (fp+-4), r1
	lw       r1, (fp+-4)
	lw       r2, (r1+0)
	lw       r1, (fp+-4)
	bne    r2,r1,.L16
	orhi     r1, r0, hi(.LC1)
	ori      r1, r1, lo(.LC1)
	calli    _ZN4Uart8printflnEPKcz
	bi       .L14
.L16:
	lw       r1, (fp+0)
	addi     r1, r1, 1
	sw       (fp+0), r1
.L15:
	lw       r1, (fp+-4)
	lw       r2, (fp+-8)
	lw       r2, (r2+0)
	or       r3, r2, r0
	lw       r2, (fp+-8)
	lw       r2, (r2+4)
	add      r2, r3, r2
	cmpgu    r1, r2, r1
	andi     r2, r1, 0xff
	addi     r1, r0, 0
	bne    r2,r1,.L18
.L14:
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 20
	b        ra
	.size	_ZN4Heap5debugEv, .-_ZN4Heap5debugEv
	.align 4
	.global	_Znwj
	.type	_Znwj, @function
_Znwj:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+-4), r1
	orhi     r1, r0, hi(_ZN6Kernel6m_heapE)
	ori      r1, r1, lo(_ZN6Kernel6m_heapE)
	lw       r2, (fp+-4)
	calli    _ZN4Heap6mallocEj
	sw       (fp+0), r1
	lw       r1, (fp+0)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Znwj, .-_Znwj
	.align 4
	.global	_Znaj
	.type	_Znaj, @function
_Znaj:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+-4), r1
	orhi     r1, r0, hi(_ZN6Kernel6m_heapE)
	ori      r1, r1, lo(_ZN6Kernel6m_heapE)
	lw       r2, (fp+-4)
	calli    _ZN4Heap6mallocEj
	sw       (fp+0), r1
	lw       r1, (fp+0)
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	_Znaj, .-_Znaj
	.align 4
	.global	_ZdlPv
	.type	_ZdlPv, @function
_ZdlPv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	orhi     r1, r0, hi(_ZN6Kernel6m_heapE)
	ori      r1, r1, lo(_ZN6Kernel6m_heapE)
	lw       r2, (fp+0)
	calli    _ZN4Heap4freeEPv
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZdlPv, .-_ZdlPv
	.align 4
	.global	_ZdaPv
	.type	_ZdaPv, @function
_ZdaPv:
	addi     sp, sp, -12
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 12
	add      fp, fp, sp
	sw       (fp+0), r1
	orhi     r1, r0, hi(_ZN6Kernel6m_heapE)
	ori      r1, r1, lo(_ZN6Kernel6m_heapE)
	lw       r2, (fp+0)
	calli    _ZN4Heap4freeEPv
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 12
	b        ra
	.size	_ZdaPv, .-_ZdaPv
	.ident	"GCC: (GNU) 4.5.3"
