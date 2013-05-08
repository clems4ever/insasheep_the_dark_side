


.global irq_enable, irq_disable, irq_mask, interruption_handler 
//.global _irq0, _irq1
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
	addi sp, sp, -8
	sw (sp+4), ra
	sw (sp+8), r1
	
	calli irq0
	mvi r1, 0x1
	wcsr IP, r1
	
	lw ra, (sp+4)
	lw r1, (sp+8)
	addi sp, sp, 8
	ret



handle_scall:




raise:


// UART
_irq0:
	addi sp, sp, -4
	sw (sp+4), ra
	calli irq0
	lw ra, (sp+4)
	addi sp, sp, 4
	ret



_irq1:

	ret
