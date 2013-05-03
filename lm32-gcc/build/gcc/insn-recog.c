/* Generated automatically by the program `genrecog' from the target
   machine description file.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
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



/* `recog' contains a decision tree that recognizes whether the rtx
   X0 is a valid instruction.

   recog returns -1 if the rtx is not valid.  If the rtx is valid, recog
   returns a nonnegative number which is the insn code number for the
   pattern that matched.  This is the same as the order in the machine
   description of the entry that matched.  This number can be used as an
   index into `insn_data' and other tables.

   The third argument to recog is an optional pointer to an int.  If
   present, recog will accept a pattern if it matches except for missing
   CLOBBER expressions at the end.  In that case, the value pointed to by
   the optional pointer will be set to the number of CLOBBERs that need
   to be added (it should be initialized to zero by the caller).  If it
   is set nonzero, the caller should allocate a PARALLEL of the
   appropriate size, copy the initial entries, and call add_clobbers
   (found in insn-emit.c) to fill in the CLOBBERs.


   The function split_insns returns 0 if the rtl could not
   be split or the split rtl as an INSN list if it can be.

   The function peephole2_insns returns 0 if the rtl could not
   be matched. If there was a match, the new rtl is returned in an INSN list,
   and LAST_INSN will point to the last recognized insn in the old sequence.
*/





static int
recog_1 (rtx x0 ATTRIBUTE_UNUSED,
	rtx insn ATTRIBUTE_UNUSED,
	int *pnum_clobbers ATTRIBUTE_UNUSED)
{
  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  rtx x1 ATTRIBUTE_UNUSED;
  rtx x2 ATTRIBUTE_UNUSED;
  rtx x3 ATTRIBUTE_UNUSED;
  rtx x4 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  x1 = XEXP (x0, 0);
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2;
    }
 L296: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L33;
    }
 L298: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L46;
    }
  goto ret0;

 L2: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L299;
  x1 = XEXP (x0, 0);
  goto L296;

 L299: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case UNSPEC:
      goto L303;
    case LO_SUM:
      goto L20;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L296;

 L303: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x1, 0) == 1)
    goto L306;
  x1 = XEXP (x0, 0);
  goto L296;

 L306: ATTRIBUTE_UNUSED_LABEL
  switch (XINT (x1, 1))
    {
    case 2L:
      goto L3;
    case 3L:
      goto L8;
    case 4L:
      goto L13;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L296;

 L3: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  operands[1] = x2;
  goto L4;

 L4: ATTRIBUTE_UNUSED_LABEL
  if (
#line 237 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(flag_pic))
    {
      return 0;  /* movsi_got */
    }
  x1 = XEXP (x0, 0);
  goto L296;

 L8: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  operands[1] = x2;
  goto L9;

 L9: ATTRIBUTE_UNUSED_LABEL
  if (
#line 245 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(flag_pic))
    {
      return 1;  /* movsi_gotoff_hi16 */
    }
  x1 = XEXP (x0, 0);
  goto L296;

 L13: ATTRIBUTE_UNUSED_LABEL
  x2 = XVECEXP (x1, 0, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == PLUS)
    goto L14;
  x1 = XEXP (x0, 0);
  goto L296;

 L14: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L15;
    }
  x1 = XEXP (x0, 0);
  goto L296;

 L15: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L16;

 L16: ATTRIBUTE_UNUSED_LABEL
  if (
#line 254 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(flag_pic))
    {
      return 2;  /* movsi_gotoff_lo16 */
    }
  x1 = XEXP (x0, 0);
  goto L296;

 L20: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L21;
    }
  x1 = XEXP (x0, 0);
  goto L296;

 L21: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (reloc_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L22;
    }
  x1 = XEXP (x0, 0);
  goto L296;

 L22: ATTRIBUTE_UNUSED_LABEL
  if (
#line 263 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(!flag_pic))
    {
      return 3;  /* *movsi_lo_sum */
    }
  x1 = XEXP (x0, 0);
  goto L296;

 L33: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (movsi_rhs_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L34;
    }
  x1 = XEXP (x0, 0);
  goto L298;

 L34: ATTRIBUTE_UNUSED_LABEL
  if (
#line 298 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (SImode, operands)))
    {
      return 6;  /* movsi_insn */
    }
  x1 = XEXP (x0, 0);
  goto L298;

 L46: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L309;
  goto ret0;

 L309: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case SIGN_EXTEND:
      goto L47;
    case ZERO_EXTEND:
      goto L52;
    case EQ:
      goto L65;
    case NE:
      goto L70;
    case GT:
      goto L75;
    case GE:
      goto L80;
    case GTU:
      goto L85;
    case GEU:
      goto L90;
    case PLUS:
      goto L196;
    case MINUS:
      goto L201;
    case MULT:
      goto L206;
    case UDIV:
      goto L212;
    case UMOD:
      goto L218;
    case NEG:
      goto L224;
    case NOT:
      goto L247;
    case AND:
      goto L232;
    case IOR:
      goto L237;
    case XOR:
      goto L242;
    case ASHIFT:
      goto L259;
    case ASHIFTRT:
      goto L265;
    case LSHIFTRT:
      goto L277;
    default:
     break;
   }
  goto ret0;

 L47: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case QImode:
      goto L330;
    case HImode:
      goto L331;
    default:
      break;
    }
  goto ret0;

 L330: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L48;
    }
  goto ret0;

 L48: ATTRIBUTE_UNUSED_LABEL
  if (
#line 339 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_SIGN_EXTEND_ENABLED || (GET_CODE (operands[1]) != REG)))
    {
      return 9;  /* *extendqisi2 */
    }
  goto ret0;

 L331: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L57;
    }
  goto ret0;

 L57: ATTRIBUTE_UNUSED_LABEL
  if (
#line 359 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_SIGN_EXTEND_ENABLED || (GET_CODE (operands[1]) != REG)))
    {
      return 11;  /* *extendhisi2 */
    }
  goto ret0;

 L52: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case QImode:
      goto L332;
    case HImode:
      goto L333;
    default:
      break;
    }
  goto ret0;

 L332: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      return 10;  /* zero_extendqisi2 */
    }
  goto ret0;

 L333: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x2, HImode))
    {
      operands[1] = x2;
      return 12;  /* zero_extendhisi2 */
    }
  goto ret0;

 L65: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L66;
    }
  goto ret0;

 L66: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_K_operand (x2, SImode))
    {
      operands[2] = x2;
      return 13;  /* *seq */
    }
  goto ret0;

 L70: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L71;
    }
  goto ret0;

 L71: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_K_operand (x2, SImode))
    {
      operands[2] = x2;
      return 14;  /* *sne */
    }
  goto ret0;

 L75: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L76;
    }
  goto ret0;

 L76: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_K_operand (x2, SImode))
    {
      operands[2] = x2;
      return 15;  /* *sgt */
    }
  goto ret0;

 L80: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L81;
    }
  goto ret0;

 L81: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_K_operand (x2, SImode))
    {
      operands[2] = x2;
      return 16;  /* *sge */
    }
  goto ret0;

 L85: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L86;
    }
  goto ret0;

 L86: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_L_operand (x2, SImode))
    {
      operands[2] = x2;
      return 17;  /* *sgtu */
    }
  goto ret0;

 L90: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L91;
    }
  goto ret0;

 L91: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_L_operand (x2, SImode))
    {
      operands[2] = x2;
      return 18;  /* *sgeu */
    }
  goto ret0;

 L196: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L197;
    }
  goto ret0;

 L197: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_K_operand (x2, SImode))
    {
      operands[2] = x2;
      return 32;  /* addsi3 */
    }
  goto ret0;

 L201: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L202;
    }
  goto ret0;

 L202: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[2] = x2;
      return 33;  /* subsi3 */
    }
  goto ret0;

 L206: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L207;
    }
  goto ret0;

 L207: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_K_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L208;
    }
  goto ret0;

 L208: ATTRIBUTE_UNUSED_LABEL
  if (
#line 705 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_MULTIPLY_ENABLED))
    {
      return 34;  /* mulsi3 */
    }
  goto ret0;

 L212: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L213;
    }
  goto ret0;

 L213: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L214;
    }
  goto ret0;

 L214: ATTRIBUTE_UNUSED_LABEL
  if (
#line 716 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_DIVIDE_ENABLED))
    {
      return 35;  /* udivsi3 */
    }
  goto ret0;

 L218: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L219;
    }
  goto ret0;

 L219: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L220;
    }
  goto ret0;

 L220: ATTRIBUTE_UNUSED_LABEL
  if (
#line 725 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_DIVIDE_ENABLED))
    {
      return 36;  /* umodsi3 */
    }
  goto ret0;

 L224: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      return 37;  /* negsi2 */
    }
  goto ret0;

 L247: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L334;
 L228: ATTRIBUTE_UNUSED_LABEL
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      return 38;  /* one_cmplsi2 */
    }
  goto ret0;

 L334: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case IOR:
      goto L248;
    case XOR:
      goto L254;
    default:
     break;
   }
  goto L228;

 L248: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L249;
    }
  goto L228;

 L249: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_or_L_operand (x3, SImode))
    {
      operands[2] = x3;
      return 42;  /* *norsi3 */
    }
  goto L228;

 L254: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L255;
    }
  goto L228;

 L255: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_or_L_operand (x3, SImode))
    {
      operands[2] = x3;
      return 43;  /* *xnorsi3 */
    }
  goto L228;

 L232: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L233;
    }
  goto ret0;

 L233: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_L_operand (x2, SImode))
    {
      operands[2] = x2;
      return 39;  /* andsi3 */
    }
  goto ret0;

 L237: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L238;
    }
  goto ret0;

 L238: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_L_operand (x2, SImode))
    {
      operands[2] = x2;
      return 40;  /* iorsi3 */
    }
  goto ret0;

 L242: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L243;
    }
  goto ret0;

 L243: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_L_operand (x2, SImode))
    {
      operands[2] = x2;
      return 41;  /* xorsi3 */
    }
  goto ret0;

 L259: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L260;
    }
  goto ret0;

 L260: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_L_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L261;
    }
  goto ret0;

 L261: ATTRIBUTE_UNUSED_LABEL
  if (
#line 846 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_BARREL_SHIFT_ENABLED))
    {
      return 44;  /* *ashlsi3 */
    }
  goto ret0;

 L265: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L266;
    }
  goto ret0;

 L266: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_L_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L267;
    }
 L272: ATTRIBUTE_UNUSED_LABEL
  if (constant_M_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L273;
    }
  goto ret0;

 L267: ATTRIBUTE_UNUSED_LABEL
  if (
#line 886 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_BARREL_SHIFT_ENABLED))
    {
      return 45;  /* *ashrsi3 */
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 1);
  goto L272;

 L273: ATTRIBUTE_UNUSED_LABEL
  if (
#line 897 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(!TARGET_BARREL_SHIFT_ENABLED))
    {
      return 46;  /* ashrsi3_1bit */
    }
  goto ret0;

 L277: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_or_zero_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L278;
    }
  goto ret0;

 L278: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_or_L_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L279;
    }
 L284: ATTRIBUTE_UNUSED_LABEL
  if (constant_M_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L285;
    }
  goto ret0;

 L279: ATTRIBUTE_UNUSED_LABEL
  if (
#line 935 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_BARREL_SHIFT_ENABLED))
    {
      return 47;  /* *lshrsi3 */
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 1);
  goto L284;

 L285: ATTRIBUTE_UNUSED_LABEL
  if (
#line 946 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(!TARGET_BARREL_SHIFT_ENABLED))
    {
      return 48;  /* lshrsi3_1bit */
    }
  goto ret0;
 ret0:
  return -1;
}

int
recog (rtx x0 ATTRIBUTE_UNUSED,
	rtx insn ATTRIBUTE_UNUSED,
	int *pnum_clobbers ATTRIBUTE_UNUSED)
{
  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  rtx x1 ATTRIBUTE_UNUSED;
  rtx x2 ATTRIBUTE_UNUSED;
  rtx x3 ATTRIBUTE_UNUSED;
  rtx x4 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;
  recog_data.insn = NULL_RTX;

  switch (GET_CODE (x0))
    {
    case SET:
      goto L1;
    case PARALLEL:
      goto L289;
    case CALL:
      goto L161;
    case RETURN:
      goto L290;
    case CONST_INT:
      goto L291;
    case UNSPEC_VOLATILE:
      goto L292;
    default:
     break;
   }
  goto ret0;

 L1: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 0);
  switch (GET_MODE (x1))
    {
    case SImode:
      goto L293;
    case QImode:
      goto L294;
    case HImode:
      goto L295;
    default:
      break;
    }
 L93: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == PC)
    goto L98;
  if (register_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L176;
    }
  goto ret0;

 L293: ATTRIBUTE_UNUSED_LABEL
  tem = recog_1 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  goto L93;

 L294: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L25;
    }
  goto L93;

 L25: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, QImode))
    {
      operands[1] = x1;
      goto L26;
    }
  x1 = XEXP (x0, 0);
  goto L93;

 L26: ATTRIBUTE_UNUSED_LABEL
  if (
#line 271 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (QImode, operands)))
    {
      return 4;  /* *movqi_insn */
    }
  x1 = XEXP (x0, 0);
  goto L93;

 L295: ATTRIBUTE_UNUSED_LABEL
  if (nonimmediate_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L29;
    }
 L297: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L37;
    }
  goto L93;

 L29: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, HImode))
    {
      operands[1] = x1;
      goto L30;
    }
  x1 = XEXP (x0, 0);
  goto L297;

 L30: ATTRIBUTE_UNUSED_LABEL
  if (
#line 284 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (HImode, operands)))
    {
      return 5;  /* *movhi_insn */
    }
  x1 = XEXP (x0, 0);
  goto L297;

 L37: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == HImode)
    goto L336;
  x1 = XEXP (x0, 0);
  goto L93;

 L336: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case SIGN_EXTEND:
      goto L38;
    case ZERO_EXTEND:
      goto L43;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L93;

 L38: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L39;
    }
  x1 = XEXP (x0, 0);
  goto L93;

 L39: ATTRIBUTE_UNUSED_LABEL
  if (
#line 319 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_SIGN_EXTEND_ENABLED || (GET_CODE (operands[1]) != REG)))
    {
      return 7;  /* *extendqihi2 */
    }
  x1 = XEXP (x0, 0);
  goto L93;

 L43: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      return 8;  /* zero_extendqihi2 */
    }
  x1 = XEXP (x0, 0);
  goto L93;

 L98: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      return 20;  /* indirect_jump */
    }
  switch (GET_CODE (x1))
    {
    case LABEL_REF:
      goto L95;
    case IF_THEN_ELSE:
      goto L102;
    default:
     break;
   }
  goto ret0;

 L95: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  operands[0] = x2;
  return 19;  /* jump */

 L102: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L338;
  goto ret0;

 L338: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case EQ:
      goto L103;
    case NE:
      goto L112;
    case GT:
      goto L121;
    case GE:
      goto L130;
    case GTU:
      goto L139;
    case GEU:
      goto L148;
    default:
     break;
   }
  goto ret0;

 L103: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L104;
    }
  goto ret0;

 L104: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L105;
    }
  goto ret0;

 L105: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L106;
  goto ret0;

 L106: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[2] = x3;
  goto L107;

 L107: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 21;  /* *beq */
    }
  goto ret0;

 L112: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L113;
    }
  goto ret0;

 L113: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L114;
    }
  goto ret0;

 L114: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L115;
  goto ret0;

 L115: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[2] = x3;
  goto L116;

 L116: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 22;  /* *bne */
    }
  goto ret0;

 L121: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L122;
    }
  goto ret0;

 L122: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L123;
    }
  goto ret0;

 L123: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L124;
  goto ret0;

 L124: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[2] = x3;
  goto L125;

 L125: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 23;  /* *bgt */
    }
  goto ret0;

 L130: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L131;
    }
  goto ret0;

 L131: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L132;
    }
  goto ret0;

 L132: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L133;
  goto ret0;

 L133: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[2] = x3;
  goto L134;

 L134: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 24;  /* *bge */
    }
  goto ret0;

 L139: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L140;
    }
  goto ret0;

 L140: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L141;
    }
  goto ret0;

 L141: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L142;
  goto ret0;

 L142: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[2] = x3;
  goto L143;

 L143: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 25;  /* *bgtu */
    }
  goto ret0;

 L148: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L149;
    }
  goto ret0;

 L149: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_or_zero_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L150;
    }
  goto ret0;

 L150: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L151;
  goto ret0;

 L151: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[2] = x3;
  goto L152;

 L152: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 26;  /* *bgeu */
    }
  goto ret0;

 L176: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == CALL)
    goto L177;
  goto ret0;

 L177: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == MEM)
    goto L178;
  goto ret0;

 L178: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (call_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L179;
    }
  goto ret0;

 L179: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[2] = x2;
  goto L180;

 L180: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 28;  /* *call_value */
    }
  goto ret0;

 L289: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x0, 0) == 2)
    goto L154;
  goto ret0;

 L154: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  switch (GET_CODE (x1))
    {
    case CALL:
      goto L155;
    case SET:
      goto L188;
    case USE:
      goto L183;
    default:
     break;
   }
  goto ret0;

 L155: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == MEM)
    goto L156;
  goto ret0;

 L156: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (call_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L157;
    }
  goto ret0;

 L157: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L158;

 L158: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L159;
  goto ret0;

 L159: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    {
      return 27;  /* *call */
    }
  goto ret0;

 L188: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == PC)
    goto L189;
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L168;
    }
  goto ret0;

 L189: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L190;
    }
  goto ret0;

 L190: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L191;
  goto ret0;

 L191: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == LABEL_REF)
    goto L192;
  goto ret0;

 L192: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  return 31;  /* tablejumpsi */

 L168: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L169;
  goto ret0;

 L169: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == MEM)
    goto L170;
  goto ret0;

 L170: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (call_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L171;
    }
  goto ret0;

 L171: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L172;

 L172: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L173;
  goto ret0;

 L173: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 29)
    {
      return 28;  /* *call_value */
    }
  goto ret0;

 L183: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L184;
    }
  goto ret0;

 L184: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == RETURN)
    {
      return 29;  /* return_internal */
    }
  goto ret0;

 L161: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 0);
  if (GET_MODE (x1) == SImode
      && GET_CODE (x1) == MEM)
    goto L162;
  goto ret0;

 L162: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (call_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L163;
    }
  goto ret0;

 L163: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  operands[1] = x1;
  goto L164;

 L164: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 27;  /* *call */
    }
  goto ret0;

 L290: ATTRIBUTE_UNUSED_LABEL
  if (
#line 641 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_can_use_return ()))
    {
      return 30;  /* return */
    }
  goto ret0;

 L291: ATTRIBUTE_UNUSED_LABEL
  if (XWINT (x0, 0) == 0L)
    {
      return 49;  /* nop */
    }
  goto ret0;

 L292: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x0, 0) == 1
      && XINT (x0, 1) == 1)
    goto L288;
  goto ret0;

 L288: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  if (x1 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    {
      return 50;  /* blockage */
    }
  goto ret0;
 ret0:
  return -1;
}

rtx
split_insns (rtx x0 ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  rtx x1 ATTRIBUTE_UNUSED;
  rtx x2 ATTRIBUTE_UNUSED;
  rtx x3 ATTRIBUTE_UNUSED;
  rtx x4 ATTRIBUTE_UNUSED;
  rtx tem ATTRIBUTE_UNUSED;
  recog_data.insn = NULL_RTX;
  goto ret0;
 ret0:
  return 0;
}

