


.global irq_enable, irq_disable, irq_mask, interruption_handler 
.global raise, handle_interruptions, handle_scall


irq_enable:
		// Enables interruptions (global flag)
		mvi r1, 1
		wcsr IE, r1
		ret

irq_mask:
		// Masks all but the 8 first interruptions
		mvi r1, 0x0000000f
		wcsr IM, r1
		ret

		// Disable interruptions
irq_disable:
		mvi r1, 0
		wcsr IE, r1
		ret



handle_interruptions:
	addi sp, sp, -16
	sw (sp+4), ra
	sw (sp+8), r1
	sw (sp+12), r2
	sw (sp+16), r3

	// Read interruptions pending register
	rcsr r1, IP

	// Test IRQ0
	mvi r3, 0x1
	and r2, r1, r3  
	bne r2, r3, test_irq1
	calli irq0

	// Test IRQ1
	test_irq1:
	mvi r3, 0x2
	and r2, r1, r3 
	bne r2, r3, end_irq
	calli irq1

	end_irq:
	mvi r1, 0x3
	wcsr IP, r1
	
	lw ra, (sp+4)
	lw r1, (sp+8)
	lw r2, (sp+12)
	lw r3, (sp+16)
	addi sp, sp, 16
	ret



handle_scall:




raise:


