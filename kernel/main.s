	.file	"main.cpp"
	.section	.rodata
	.align 4
.LC0:
	.string	"========= INSA BOOTLOADER ======== %s "
	.align 4
.LC1:
	.string	"salute23"
	.section	.text
	.align 4
	.global	main
	.type	main, @function
main:
	addi     sp, sp, -16
	sw       (sp+8), fp
	sw       (sp+4), ra
	addi     fp, r0, 16
	add      fp, fp, sp
	sw       (fp+0), r1
	sw       (fp+-4), r2
	orhi     r1, r0, hi(.LC0)
	ori      r1, r1, lo(.LC0)
	orhi     r2, r0, hi(.LC1)
	ori      r2, r2, lo(.LC1)
	calli    _ZN4Uart8printflnEPKcz
	calli    _ZN6Kernel4loopEv
	addi     r1, r0, 0
	lw       fp, (sp+8)
	lw       ra, (sp+4)
	addi     sp, sp, 16
	b        ra
	.size	main, .-main
	.ident	"GCC: (GNU) 4.5.3"
