

.global _save_all, _restore_all_and_eret, _restore_all_and_bret

_save_all:
addi sp, sp, -56
/* Save all caller save registers onto the stack */
sw (sp+4), r1
sw (sp+8), r2
sw (sp+12), r3
sw (sp+16), r4
sw (sp+20), r5
sw (sp+24), r6
sw (sp+28), r7
sw (sp+32), r8
sw (sp+36), r9
sw (sp+40), r10
sw (sp+48), ea
sw (sp+52), ba
/* ra needs to be moved from initial stack location */
lw r1, (sp+56)
sw (sp+44), r1
ret
/* Restore all registers and return from exception */
_restore_all_and_eret:
lw r1, (sp+4)
lw r2, (sp+8)
lw r3, (sp+12)
lw r4, (sp+16)
lw r5, (sp+20)
lw r6, (sp+24)
lw r7, (sp+28)
lw r8, (sp+32)
lw r9, (sp+36)
lw r10, (sp+40)
lw ra, (sp+44)
lw ea, (sp+48)
lw ba, (sp+52)
addi sp, sp, 56
eret
/* Restore all registers and return from breakpoint */
_restore_all_and_bret:
lw r1, (sp+4)
lw r2, (sp+8)
lw r3, (sp+12)
lw r4, (sp+16)
lw r5, (sp+20)
lw r6, (sp+24)
lw r7, (sp+28)
lw r8, (sp+32)
lw r9, (sp+36)
lw r10, (sp+40)
lw ra, (sp+44)
lw ea, (sp+48)
lw ba, (sp+52)
addi sp, sp, 56
bret
