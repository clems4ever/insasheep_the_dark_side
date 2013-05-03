/* Generated automatically by the program 'build/genpreds'
   from the machine description file '../../src/gcc-4.5.3/gcc/config/lm32/lm32.md'.  */

#ifndef GCC_TM_CONSTRS_H
#define GCC_TM_CONSTRS_H

static inline bool
satisfies_constraint_J (rtx op)
{
  HOST_WIDE_INT ival = 0;
  if (CONST_INT_P (op))
    ival = INTVAL (op);
  return (GET_CODE (op) == CONST_INT) && (
#line 25 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
(ival == 0));
}
static inline bool
satisfies_constraint_K (rtx op)
{
  HOST_WIDE_INT ival = 0;
  if (CONST_INT_P (op))
    ival = INTVAL (op);
  return (GET_CODE (op) == CONST_INT) && (
#line 30 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
(IN_RANGE (ival, -32768, 32767)));
}
static inline bool
satisfies_constraint_L (rtx op)
{
  HOST_WIDE_INT ival = 0;
  if (CONST_INT_P (op))
    ival = INTVAL (op);
  return (GET_CODE (op) == CONST_INT) && (
#line 35 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
(IN_RANGE (ival, 0, 65535)));
}
static inline bool
satisfies_constraint_M (rtx op)
{
  HOST_WIDE_INT ival = 0;
  if (CONST_INT_P (op))
    ival = INTVAL (op);
  return (GET_CODE (op) == CONST_INT) && (
#line 40 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
(ival == 1));
}
static inline bool
satisfies_constraint_U (rtx op)
{
  HOST_WIDE_INT ival = 0;
  if (CONST_INT_P (op))
    ival = INTVAL (op);
  return (GET_CODE (op) == CONST_INT) && (
#line 45 "../../src/gcc-4.5.3/gcc/config/lm32/constraints.md"
((ival & 0xffff) == 0
		    && (ival >> 31 == -1 || ival >> 31 == 0)));
}
static inline bool
satisfies_constraint_S (rtx op)
{
  enum machine_mode mode = GET_MODE (op);
  return no_pic_small_symbol (op, mode);
}
static inline bool
satisfies_constraint_Y (rtx op)
{
  return (GET_CODE (op) == HIGH) && (((GET_CODE (XEXP (op, 0)) == SYMBOL_REF) || (GET_CODE (XEXP (op, 0)) == LABEL_REF)) || (GET_CODE (XEXP (op, 0)) == CONST));
}
#endif /* tm-constrs.h */
