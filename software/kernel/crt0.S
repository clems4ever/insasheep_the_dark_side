
.section .text, "ax", @progbits
.global _start
.global jump, halt

.align 4
.extern start_ctors
.extern end_ctors 
.extern start_dtors
.extern end_dtors    

.equ SIGTRAP, 0
.equ SIGSEGV, 1
.equ SIGFPE, 2
.equ SIGINT, 3



_start:
/* Exception handlers */
_reset_handler:
		xor r0, r0, r0
		wcsr IE, r0
		// If exception, goto _reset_handler
		mvhi r1, hi(_reset_handler)
		ori r1, r1, lo(_reset_handler)
		wcsr EBA, r1
		bi _crt0
		nop
		nop

_breakpoint_handler:
		sw (sp+0), ra
		calli _save_all
		mvi r1, SIGTRAP
		calli raise
		bi _restore_all_and_bret
		nop
		nop
		nop

_instruction_bus_error_handler:
		sw (sp+0), ra
		calli _save_all
		mvi r1, SIGSEGV
		calli raise
		bi _restore_all_and_eret
		nop
		nop
		nop

_watchpoint_handler:
		sw (sp+0), ra
		calli _save_all
		mvi r1, SIGTRAP
		calli raise
		bi _restore_all_and_bret
		nop
		nop
		nop

_data_bus_error_handler:
		sw (sp+0), ra
		calli _save_all
		mvi r1, SIGSEGV
		calli raise
		bi _restore_all_and_eret
		nop
		nop
		nop

_divide_by_zero_handler:
		sw (sp+0), ra
		calli _save_all
		mvi r1, SIGFPE
		calli raise
		bi _restore_all_and_eret
		nop
		nop
		nop

_interrupt_handler:
		sw (sp+0), ra
		calli _save_all
		nop
		calli handle_interruptions 
		bi _restore_all_and_eret
		nop
		nop
		nop

_system_call_handler:
		sw (sp+0), ra
		calli _save_all
		mv r1, sp
		calli handle_scall
		bi _restore_all_and_eret
		nop
		nop
		nop




// Beginning of the program
_crt0:
		/* Setup stack and global pointer */
		mvhi sp, hi(_fstack)
		ori sp, sp, lo(_fstack)
		mvhi gp, hi(_gp)
		ori gp, gp, lo(_gp)

		/* Clear BSS */
		mvhi r1, hi(_fbss)
		ori r1, r1, lo(_fbss)
		mvhi r3, hi(_ebss)
		ori r3, r3, lo(_ebss)
		.clearBSS:
		be r1, r3, .callMain
		sw (r1+0), r0
		addi r1, r1, 4
		bi .clearBSS


		// Call main from _start => no parameters
		.callMain:
		
		mvhi  r1, hi(start_ctors)
		ori  r1, r1, lo(start_ctors)
		mvhi r2, hi(end_ctors)
		ori r2, r2, lo(end_ctors)
		bi  .ctors_until_end
		.call_constructor:
		addi sp, sp, -8
		sw (sp+0x4), r1
		sw (sp+0x8), r2
		
		lw r1, (r1+0x0)
		call r1
		
		lw r1, (sp+0x4)
		lw r2, (sp+0x8)
		addi sp, sp, 8
		
		addi  r1, r1, 4
		.ctors_until_end:
		bgu r2, r1, .call_constructor

		// Enables interruptions (global flag)
		mvi r1, 1
		// Clear all pending irq
		wcsr IP, r1
		wcsr IE, r1
		// Mask all but the 4 first irq
		mvi r1, 0x0000000f
		wcsr IM, r1
		
		mvi r1, 0
		mvi r2, 0
		mvi r3, 0
		calli main
		
halt:
		bi halt

jump:
		// Invalidate cache instruction
		wcsr ICC, r0
		nop
		nop
		nop
		nop
		call r1



