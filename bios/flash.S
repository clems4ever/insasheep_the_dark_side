
.global unlock_block, flash_write, flash_read
.global flash_erase_block
.global flash_get_status

unlock_block:
	// Saves R2
	addi sp, sp, -4
	sw (sp+0x4), r2
	
	mvi r2, 0x0060
	sh (r1+0x0), r2
	mvi r2, 0x00D0
	sh (r1+0x0), r2
	
/*	addi sp, sp, -0x4
	sw (sp+0x4), ra
	calli flash_get_status
	lw ra, (sp+0x4)
	addi sp, sp, 0x4
*/
	// Restores R2
	lw r2, (sp+0x4)
	addi sp, sp, 4

ret

flash_write:
	//Stores r2, r3, r4
	addi sp, sp, -12
	sw (sp+0x4), r3
	sw (sp+0x8), r4
	sw (sp+0xc), r5
	
	// bit alterable write
	mvi r3, 0x0042
	sh (r1+0x0), r3
	// Write data
	sh (r1+0x0), r2

	addi sp, sp, -0x4
	sw (sp+0x4), ra
	calli flash_get_status
	lw ra, (sp+0x4)
	addi sp, sp, 0x4
	
	//Restores r2 and r3
	lw r3, (sp+0x4)
	lw r4, (sp+0x8)
	lw r5, (sp+0xc)
	addi sp, sp, 12
	ret

// Arg 1 is address value
flash_read:
	// Stores r2
	addi sp, sp, -4
	sw (sp+0x4), r2

	mvi r2, 0xFF
	sh (r1+0x0), r2 
	// Reads data
	lhu r1, (r1+0x0)

	// Restores r2
	lw r2, (sp+0x4)
	addi sp, sp, 4
	ret

flash_erase_block:
	// Saves R2
	addi sp, sp, -4
	sw (sp+0x4), r2
	
	mvi r2, 0x0020
	sh (r1+0x0), r2
	mvi r2, 0x00D0
	sh (r1+0x0), r2

	addi sp, sp, -0x4
	sw (sp+0x4), ra
	calli flash_get_status
	lw ra, (sp+0x4)
	addi sp, sp, 0x4

	// Restores R2
	lw r2, (sp+0x4)
	addi sp, sp, 4
	ret
	
flash_get_status:
	//Stores r2, r3, r4
	addi sp, sp, -12
	sw (sp+0x4), r3
	sw (sp+0x8), r4
	sw (sp+0xc), r5
	
	mvi r3, 0x80
	waste_time:
	// Gets the status bit
	lh r4, (r1+0x0)
	// Mask teh status bit
	andi r5, r4, 0x80
	// While operation jump to waste_time
	bne r5, r3,  waste_time
	mv r1, r4
	
	mvi r3, 0x0050
	sh (r1+0x0), r3


	//Restores r2 and r3
	lw r3, (sp+0x4)
	lw r4, (sp+0x8)
	lw r5, (sp+0xc)
	addi sp, sp, 12
ret
