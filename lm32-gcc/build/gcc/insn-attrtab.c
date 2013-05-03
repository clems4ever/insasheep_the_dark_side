/* Generated automatically by the program `genattrtab'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "insn-attr.h"
#include "tm_p.h"
#include "insn-config.h"
#include "recog.h"
#include "regs.h"
#include "real.h"
#include "output.h"
#include "toplev.h"
#include "flags.h"
#include "function.h"

#define operands recog_data.operand

int
insn_current_length (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 26:  /* *bgeu */
    case 25:  /* *bgtu */
    case 24:  /* *bge */
    case 23:  /* *bgt */
    case 22:  /* *bne */
    case 21:  /* *beq */
      extract_insn_cached (insn);
      if ((abs ((INSN_ADDRESSES_SET_P () ? INSN_ADDRESSES (INSN_UID (GET_CODE (operands[2]) == LABEL_REF ? XEXP (operands[2], 0) : operands[2])) : 0) - (insn_current_reference_address (insn)))) < (32768))
        {
	  return 4;
        }
      else
        {
	  return 8;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
      extract_insn_cached (insn);
      if (get_attr_type (insn) == TYPE_CBRANCH)
        {
	  if ((abs ((INSN_ADDRESSES_SET_P () ? INSN_ADDRESSES (INSN_UID (GET_CODE (operands[2]) == LABEL_REF ? XEXP (operands[2], 0) : operands[2])) : 0) - (insn_current_reference_address (insn)))) < (32768))
	    {
	      return 4;
	    }
	  else
	    {
	      return 8;
	    }
        }
      else
        {
	  return 0;
        }

    default:
      return 0;

    }
}

int
insn_variable_length_p (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 26:  /* *bgeu */
    case 25:  /* *bgtu */
    case 24:  /* *bge */
    case 23:  /* *bgt */
    case 22:  /* *bne */
    case 21:  /* *beq */
      return 1;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
      if (get_attr_type (insn) == TYPE_CBRANCH)
        {
	  return 1;
        }
      else
        {
	  return 0;
        }

    default:
      return 0;

    }
}

int
insn_min_length (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 50:  /* blockage */
      return 0;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 4;

    }
}

int
insn_default_length (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 26:  /* *bgeu */
    case 25:  /* *bgtu */
    case 24:  /* *bge */
    case 23:  /* *bgt */
    case 22:  /* *bne */
    case 21:  /* *beq */
      return 8;

    case 50:  /* blockage */
      return 0;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
      if (get_attr_type (insn) == TYPE_CBRANCH)
        {
	  return 8;
        }
      else
        {
	  return 4;
        }

    default:
      return 4;

    }
}

int
bypass_p (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 0;

    }
}

int
insn_default_latency (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 50:  /* blockage */
      return 0;

    case 48:  /* lshrsi3_1bit */
    case 47:  /* *lshrsi3 */
    case 46:  /* ashrsi3_1bit */
    case 45:  /* *ashrsi3 */
    case 44:  /* *ashlsi3 */
    case 36:  /* umodsi3 */
    case 35:  /* udivsi3 */
    case 18:  /* *sgeu */
    case 17:  /* *sgtu */
    case 16:  /* *sge */
    case 15:  /* *sgt */
    case 14:  /* *sne */
    case 13:  /* *seq */
      return 2;

    case 12:  /* zero_extendhisi2 */
    case 11:  /* *extendhisi2 */
    case 10:  /* zero_extendqisi2 */
    case 9:  /* *extendqisi2 */
    case 8:  /* zero_extendqihi2 */
    case 7:  /* *extendqihi2 */
    case 6:  /* movsi_insn */
    case 5:  /* *movhi_insn */
    case 4:  /* *movqi_insn */
      extract_constrain_insn_cached (insn);
      if (which_alternative != 0)
        {
	  return 1;
        }
      else
        {
	  return 3;
        }

    case 34:  /* mulsi3 */
    case 1:  /* movsi_gotoff_hi16 */
    case 0:  /* movsi_got */
      return 3;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
      if ((get_attr_type (insn) == TYPE_STORE) || ((get_attr_type (insn) == TYPE_ARITH) || ((get_attr_type (insn) == TYPE_CALL) || ((get_attr_type (insn) == TYPE_ICALL) || ((get_attr_type (insn) == TYPE_UBRANCH) || ((get_attr_type (insn) == TYPE_UIBRANCH) || (get_attr_type (insn) == TYPE_CBRANCH)))))))
        {
	  return 1;
        }
      else if ((get_attr_type (insn) == TYPE_COMPARE) || ((get_attr_type (insn) == TYPE_SHIFT) || (get_attr_type (insn) == TYPE_DIVIDE)))
        {
	  return 2;
        }
      else if ((get_attr_type (insn) == TYPE_LOAD) || (get_attr_type (insn) == TYPE_MULTIPLY))
        {
	  return 3;
        }
      else
        {
	  return 0;
        }

    default:
      return 1;

    }
}

int
internal_dfa_insn_code (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 50:  /* blockage */
      return 4;

    case 48:  /* lshrsi3_1bit */
    case 47:  /* *lshrsi3 */
    case 46:  /* ashrsi3_1bit */
    case 45:  /* *ashrsi3 */
    case 44:  /* *ashlsi3 */
    case 36:  /* umodsi3 */
    case 35:  /* udivsi3 */
    case 18:  /* *sgeu */
    case 17:  /* *sgtu */
    case 16:  /* *sge */
    case 15:  /* *sgt */
    case 14:  /* *sne */
    case 13:  /* *seq */
      return 1;

    case 12:  /* zero_extendhisi2 */
    case 11:  /* *extendhisi2 */
    case 10:  /* zero_extendqisi2 */
    case 9:  /* *extendqisi2 */
    case 8:  /* zero_extendqihi2 */
    case 7:  /* *extendqihi2 */
    case 6:  /* movsi_insn */
    case 5:  /* *movhi_insn */
    case 4:  /* *movqi_insn */
      extract_constrain_insn_cached (insn);
      if (which_alternative != 0)
        {
	  return 0;
        }
      else
        {
	  return 2;
        }

    case 34:  /* mulsi3 */
    case 1:  /* movsi_gotoff_hi16 */
    case 0:  /* movsi_got */
      return 2;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
      if ((get_attr_type (insn) == TYPE_STORE) || ((get_attr_type (insn) == TYPE_ARITH) || ((get_attr_type (insn) == TYPE_CALL) || ((get_attr_type (insn) == TYPE_ICALL) || ((get_attr_type (insn) == TYPE_UBRANCH) || ((get_attr_type (insn) == TYPE_UIBRANCH) || (get_attr_type (insn) == TYPE_CBRANCH)))))))
        {
	  return 0;
        }
      else if ((get_attr_type (insn) == TYPE_COMPARE) || ((get_attr_type (insn) == TYPE_SHIFT) || (get_attr_type (insn) == TYPE_DIVIDE)))
        {
	  return 1;
        }
      else if ((get_attr_type (insn) == TYPE_LOAD) || (get_attr_type (insn) == TYPE_MULTIPLY))
        {
	  return 2;
        }
      else
        {
	  return 4;
        }

    default:
      return 0;

    }
}

enum attr_type
get_attr_type (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 6:  /* movsi_insn */
    case 5:  /* *movhi_insn */
    case 4:  /* *movqi_insn */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_ARITH;
        }
      else if (((1 << which_alternative) & 0xc))
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_ARITH;
        }

    case 7:  /* *extendqihi2 */
    case 8:  /* zero_extendqihi2 */
    case 9:  /* *extendqisi2 */
    case 10:  /* zero_extendqisi2 */
    case 11:  /* *extendhisi2 */
    case 12:  /* zero_extendhisi2 */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return TYPE_LOAD;
        }
      else
        {
	  return TYPE_ARITH;
        }

    case 27:  /* *call */
    case 28:  /* *call_value */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return TYPE_CALL;
        }
      else
        {
	  return TYPE_ICALL;
        }

    case 21:  /* *beq */
    case 22:  /* *bne */
    case 23:  /* *bgt */
    case 24:  /* *bge */
    case 25:  /* *bgtu */
    case 26:  /* *bgeu */
      return TYPE_CBRANCH;

    case 20:  /* indirect_jump */
    case 29:  /* return_internal */
    case 30:  /* return */
      return TYPE_UIBRANCH;

    case 19:  /* jump */
    case 31:  /* tablejumpsi */
      return TYPE_UBRANCH;

    case 35:  /* udivsi3 */
    case 36:  /* umodsi3 */
      return TYPE_DIVIDE;

    case 34:  /* mulsi3 */
      return TYPE_MULTIPLY;

    case 44:  /* *ashlsi3 */
    case 45:  /* *ashrsi3 */
    case 46:  /* ashrsi3_1bit */
    case 47:  /* *lshrsi3 */
    case 48:  /* lshrsi3_1bit */
      return TYPE_SHIFT;

    case 13:  /* *seq */
    case 14:  /* *sne */
    case 15:  /* *sgt */
    case 16:  /* *sge */
    case 17:  /* *sgtu */
    case 18:  /* *sgeu */
      return TYPE_COMPARE;

    case 0:  /* movsi_got */
    case 1:  /* movsi_gotoff_hi16 */
      return TYPE_LOAD;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    case 50:  /* blockage */
      return TYPE_UNKNOWN;

    default:
      return TYPE_ARITH;

    }
}

EXPORTED_CONST int length_unit_log = 2;
