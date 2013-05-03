/* Generated automatically by the program 'build/genpreds'
   from the machine description file '../../src/gcc-4.5.3/gcc/config/lm32/lm32.md'.  */

#ifndef GCC_TM_PREDS_H
#define GCC_TM_PREDS_H

#ifdef HAVE_MACHINE_MODES
extern int general_operand (rtx, enum machine_mode);
extern int address_operand (rtx, enum machine_mode);
extern int register_operand (rtx, enum machine_mode);
extern int pmode_register_operand (rtx, enum machine_mode);
extern int scratch_operand (rtx, enum machine_mode);
extern int immediate_operand (rtx, enum machine_mode);
extern int const_int_operand (rtx, enum machine_mode);
extern int const_double_operand (rtx, enum machine_mode);
extern int nonimmediate_operand (rtx, enum machine_mode);
extern int nonmemory_operand (rtx, enum machine_mode);
extern int push_operand (rtx, enum machine_mode);
extern int pop_operand (rtx, enum machine_mode);
extern int memory_operand (rtx, enum machine_mode);
extern int indirect_operand (rtx, enum machine_mode);
extern int ordered_comparison_operator (rtx, enum machine_mode);
extern int comparison_operator (rtx, enum machine_mode);
extern int const0_operand (rtx, enum machine_mode);
extern int constant_K_operand (rtx, enum machine_mode);
extern int constant_L_operand (rtx, enum machine_mode);
extern int constant_M_operand (rtx, enum machine_mode);
extern int register_or_zero_operand (rtx, enum machine_mode);
extern int register_or_K_operand (rtx, enum machine_mode);
extern int register_or_L_operand (rtx, enum machine_mode);
extern int register_or_int_operand (rtx, enum machine_mode);
extern int reloc_operand (rtx, enum machine_mode);
extern int symbolic_operand (rtx, enum machine_mode);
extern int no_pic_small_symbol (rtx, enum machine_mode);
extern int call_operand (rtx, enum machine_mode);
extern int movsi_rhs_operand (rtx, enum machine_mode);
#endif /* HAVE_MACHINE_MODES */

#define CONSTRAINT_NUM_DEFINED_P 1
enum constraint_num
{
  CONSTRAINT__UNKNOWN = 0,
  CONSTRAINT_J,
  CONSTRAINT_K,
  CONSTRAINT_L,
  CONSTRAINT_M,
  CONSTRAINT_U,
  CONSTRAINT_S,
  CONSTRAINT_Y,
  CONSTRAINT__LIMIT
};

extern enum constraint_num lookup_constraint (const char *);
extern bool constraint_satisfied_p (rtx, enum constraint_num);

#define CONSTRAINT_LEN(c_,s_) 1

#define REG_CLASS_FROM_CONSTRAINT(c_,s_) NO_REGS
#define REG_CLASS_FOR_CONSTRAINT(x_) \
    NO_REGS

extern bool insn_const_int_ok_for_constraint (HOST_WIDE_INT, enum constraint_num);
#define CONST_OK_FOR_CONSTRAINT_P(v_,c_,s_) \
    insn_const_int_ok_for_constraint (v_, lookup_constraint (s_))

#define CONST_DOUBLE_OK_FOR_CONSTRAINT_P(v_,c_,s_) 0

#define EXTRA_CONSTRAINT_STR(v_,c_,s_) \
    constraint_satisfied_p (v_, lookup_constraint (s_))

#define EXTRA_MEMORY_CONSTRAINT(c_,s_) false

#define EXTRA_ADDRESS_CONSTRAINT(c_,s_) false

#endif /* tm-preds.h */
