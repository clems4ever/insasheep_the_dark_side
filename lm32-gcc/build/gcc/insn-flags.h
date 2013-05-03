/* Generated automatically by the program `genflags'
   from the machine description file `md'.  */

#ifndef GCC_INSN_FLAGS_H
#define GCC_INSN_FLAGS_H

#define HAVE_movsi_got (flag_pic)
#define HAVE_movsi_gotoff_hi16 (flag_pic)
#define HAVE_movsi_gotoff_lo16 (flag_pic)
#define HAVE_movsi_insn (lm32_move_ok (SImode, operands))
#define HAVE_zero_extendqihi2 1
#define HAVE_zero_extendqisi2 1
#define HAVE_zero_extendhisi2 1
#define HAVE_jump 1
#define HAVE_indirect_jump 1
#define HAVE_return_internal 1
#define HAVE_return (lm32_can_use_return ())
#define HAVE_tablejumpsi 1
#define HAVE_addsi3 1
#define HAVE_subsi3 1
#define HAVE_mulsi3 (TARGET_MULTIPLY_ENABLED)
#define HAVE_udivsi3 (TARGET_DIVIDE_ENABLED)
#define HAVE_umodsi3 (TARGET_DIVIDE_ENABLED)
#define HAVE_negsi2 1
#define HAVE_one_cmplsi2 1
#define HAVE_andsi3 1
#define HAVE_iorsi3 1
#define HAVE_xorsi3 1
#define HAVE_ashrsi3_1bit (!TARGET_BARREL_SHIFT_ENABLED)
#define HAVE_lshrsi3_1bit (!TARGET_BARREL_SHIFT_ENABLED)
#define HAVE_nop 1
#define HAVE_blockage 1
#define HAVE_movqi 1
#define HAVE_movhi 1
#define HAVE_movsi 1
#define HAVE_movmemsi 1
#define HAVE_cstoresi4 1
#define HAVE_cbranchsi4 1
#define HAVE_call 1
#define HAVE_call_value 1
#define HAVE_tablejump 1
#define HAVE_ashlsi3 1
#define HAVE_ashrsi3 1
#define HAVE_lshrsi3 1
#define HAVE_prologue 1
#define HAVE_epilogue 1
extern rtx        gen_movsi_got         (rtx, rtx);
extern rtx        gen_movsi_gotoff_hi16 (rtx, rtx);
extern rtx        gen_movsi_gotoff_lo16 (rtx, rtx, rtx);
extern rtx        gen_movsi_insn        (rtx, rtx);
extern rtx        gen_zero_extendqihi2  (rtx, rtx);
extern rtx        gen_zero_extendqisi2  (rtx, rtx);
extern rtx        gen_zero_extendhisi2  (rtx, rtx);
extern rtx        gen_jump              (rtx);
extern rtx        gen_indirect_jump     (rtx);
extern rtx        gen_return_internal   (rtx);
extern rtx        gen_return            (void);
extern rtx        gen_tablejumpsi       (rtx, rtx);
extern rtx        gen_addsi3            (rtx, rtx, rtx);
extern rtx        gen_subsi3            (rtx, rtx, rtx);
extern rtx        gen_mulsi3            (rtx, rtx, rtx);
extern rtx        gen_udivsi3           (rtx, rtx, rtx);
extern rtx        gen_umodsi3           (rtx, rtx, rtx);
extern rtx        gen_negsi2            (rtx, rtx);
extern rtx        gen_one_cmplsi2       (rtx, rtx);
extern rtx        gen_andsi3            (rtx, rtx, rtx);
extern rtx        gen_iorsi3            (rtx, rtx, rtx);
extern rtx        gen_xorsi3            (rtx, rtx, rtx);
extern rtx        gen_ashrsi3_1bit      (rtx, rtx, rtx);
extern rtx        gen_lshrsi3_1bit      (rtx, rtx, rtx);
extern rtx        gen_nop               (void);
extern rtx        gen_blockage          (void);
extern rtx        gen_movqi             (rtx, rtx);
extern rtx        gen_movhi             (rtx, rtx);
extern rtx        gen_movsi             (rtx, rtx);
extern rtx        gen_movmemsi          (rtx, rtx, rtx, rtx);
extern rtx        gen_cstoresi4         (rtx, rtx, rtx, rtx);
extern rtx        gen_cbranchsi4        (rtx, rtx, rtx, rtx);
#define GEN_CALL(A, B, C, D) gen_call ((A), (B))
extern rtx        gen_call              (rtx, rtx);
#define GEN_CALL_VALUE(A, B, C, D, E) gen_call_value ((A), (B), (C))
extern rtx        gen_call_value        (rtx, rtx, rtx);
extern rtx        gen_tablejump         (rtx, rtx);
extern rtx        gen_ashlsi3           (rtx, rtx, rtx);
extern rtx        gen_ashrsi3           (rtx, rtx, rtx);
extern rtx        gen_lshrsi3           (rtx, rtx, rtx);
extern rtx        gen_prologue          (void);
extern rtx        gen_epilogue          (void);

#endif /* GCC_INSN_FLAGS_H */
