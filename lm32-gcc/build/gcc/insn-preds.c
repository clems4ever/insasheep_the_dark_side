/* Generated automatically by the program 'build/genpreds'
   from the machine description file '../../src/gcc-4.5.3/gcc/config/lm32/lm32.md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "tree.h"
#include "tm_p.h"
#include "function.h"
#include "insn-config.h"
#include "recog.h"
#include "real.h"
#include "output.h"
#include "flags.h"
#include "hard-reg-set.h"
#include "resource.h"
#include "toplev.h"
#include "reload.h"
#include "regs.h"
#include "tm-constrs.h"

int
const0_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  switch (GET_CODE (op))
    {
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
      break;
    default:
      return false;
    }
  return 
#line 24 "../../src/gcc-4.5.3/gcc/config/lm32/predicates.md"
(op == CONST0_RTX (GET_MODE (op)));
}

int
constant_K_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (GET_CODE (op) == CONST_INT) && (
#line 28 "../../src/gcc-4.5.3/gcc/config/lm32/predicates.md"
(satisfies_constraint_K (op)));
}

int
constant_L_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (GET_CODE (op) == CONST_INT) && (
#line 32 "../../src/gcc-4.5.3/gcc/config/lm32/predicates.md"
(satisfies_constraint_L (op)));
}

int
constant_M_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (GET_CODE (op) == CONST_INT) && (
#line 36 "../../src/gcc-4.5.3/gcc/config/lm32/predicates.md"
(satisfies_constraint_M (op)));
}

int
register_or_zero_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (register_operand (op, mode)) || (const0_operand (op, mode));
}

int
register_or_K_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (register_operand (op, mode)) || (constant_K_operand (op, mode));
}

int
register_or_L_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (register_operand (op, mode)) || (constant_L_operand (op, mode));
}

int
register_or_int_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (register_operand (op, mode)) || (GET_CODE (op) == CONST_INT);
}

int
reloc_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (((GET_CODE (op) == LABEL_REF) || (GET_CODE (op) == SYMBOL_REF)) || (GET_CODE (op) == CONST)) && (
(mode == VOIDmode || GET_MODE (op) == mode));
}

int
symbolic_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == LABEL_REF) || (GET_CODE (op) == SYMBOL_REF)) && (
(mode == VOIDmode || GET_MODE (op) == mode));
}

static inline int
no_pic_small_symbol_1 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
#line 65 "../../src/gcc-4.5.3/gcc/config/lm32/predicates.md"
{
  return !flag_pic && SYMBOL_REF_SMALL_P (op);
}

int
no_pic_small_symbol (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == SYMBOL_REF) && (
(no_pic_small_symbol_1 (op, mode)))) && (
(mode == VOIDmode || GET_MODE (op) == mode));
}

int
call_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == SYMBOL_REF) && (
(mode == VOIDmode || GET_MODE (op) == mode))) || (register_operand (op, mode));
}

int
movsi_rhs_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return (nonimmediate_operand (op, mode)) || ((GET_CODE (op) == CONST_INT) || (((
#line 76 "../../src/gcc-4.5.3/gcc/config/lm32/predicates.md"
(satisfies_constraint_S (op))) || (
#line 77 "../../src/gcc-4.5.3/gcc/config/lm32/predicates.md"
(satisfies_constraint_Y (op)))) && (
(mode == VOIDmode || GET_MODE (op) == mode))));
}

enum constraint_num
lookup_constraint (const char *str)
{
  switch (str[0])
    {
    case 'J':
      return CONSTRAINT_J;
    case 'K':
      return CONSTRAINT_K;
    case 'L':
      return CONSTRAINT_L;
    case 'M':
      return CONSTRAINT_M;
    case 'S':
      return CONSTRAINT_S;
    case 'U':
      return CONSTRAINT_U;
    case 'Y':
      return CONSTRAINT_Y;
    default: break;
    }
  return CONSTRAINT__UNKNOWN;
}

bool
constraint_satisfied_p (rtx op, enum constraint_num c)
{
  switch (c)
    {
    case CONSTRAINT_J: return satisfies_constraint_J (op);
    case CONSTRAINT_K: return satisfies_constraint_K (op);
    case CONSTRAINT_L: return satisfies_constraint_L (op);
    case CONSTRAINT_M: return satisfies_constraint_M (op);
    case CONSTRAINT_U: return satisfies_constraint_U (op);
    case CONSTRAINT_S: return satisfies_constraint_S (op);
    case CONSTRAINT_Y: return satisfies_constraint_Y (op);
    default: break;
    }
  return false;
}

bool
insn_const_int_ok_for_constraint (HOST_WIDE_INT ival, enum constraint_num c)
{
  switch (c)
    {
    case CONSTRAINT_J:
      return 
#line 25 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
(ival == 0);

    case CONSTRAINT_K:
      return 
#line 30 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
(IN_RANGE (ival, -32768, 32767));

    case CONSTRAINT_L:
      return 
#line 35 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
(IN_RANGE (ival, 0, 65535));

    case CONSTRAINT_M:
      return 
#line 40 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
(ival == 1);

    default: break;
    }
  return false;
}

