	.file	"test.cpp"
	.section	.text
	.align 4
	.global	__dso_handle
	.type	__dso_handle, @function
__dso_handle:
	addi     sp, sp, -8
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 8
	add      fp, fp, sp
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 8
	b        ra
	.size	__dso_handle, .-__dso_handle
	.align 4
	.global	__cxa_atexit
	.type	__cxa_atexit, @function
__cxa_atexit:
	addi     sp, sp, -8
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 8
	add      fp, fp, sp
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 8
	b        ra
	.size	__cxa_atexit, .-__cxa_atexit
	.ident	"GCC: (GNU) 4.5.3"
