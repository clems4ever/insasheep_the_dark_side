/* Generated automatically by the program `genemit'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "tm_p.h"
#include "function.h"
#include "expr.h"
#include "optabs.h"
#include "real.h"
#include "dfp.h"
#include "flags.h"
#include "output.h"
#include "insn-config.h"
#include "hard-reg-set.h"
#include "recog.h"
#include "resource.h"
#include "reload.h"
#include "toplev.h"
#include "regs.h"
#include "tm-constrs.h"
#include "ggc.h"
#include "basic-block.h"
#include "integrate.h"

#define FAIL return (end_sequence (), _val)
#define DONE return (_val = get_insns (), end_sequence (), _val)

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:234 */
rtx
gen_movsi_got (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (1,
		operand1),
	2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:242 */
rtx
gen_movsi_gotoff_hi16 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (1,
		operand1),
	3));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:250 */
rtx
gen_movsi_gotoff_lo16 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (1,
		gen_rtx_PLUS (SImode,
	operand1,
	operand2)),
	4));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:295 */
rtx
gen_movsi_insn (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:326 */
rtx
gen_zero_extendqihi2 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (HImode,
	operand1));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:346 */
rtx
gen_zero_extendqisi2 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (SImode,
	operand1));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:366 */
rtx
gen_zero_extendhisi2 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (SImode,
	operand1));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:461 */
rtx
gen_jump (rtx operand0 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_LABEL_REF (VOIDmode,
	operand0));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:468 */
rtx
gen_indirect_jump (rtx operand0 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0);
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:631 */
rtx
gen_return_internal (rtx operand0 ATTRIBUTE_UNUSED)
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_USE (VOIDmode,
	operand0),
		gen_rtx_RETURN (VOIDmode)));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:639 */
rtx
gen_return (void)
{
  return gen_rtx_RETURN (VOIDmode);
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:669 */
rtx
gen_tablejumpsi (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0),
		gen_rtx_USE (VOIDmode,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1))));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:681 */
rtx
gen_addsi3 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:692 */
rtx
gen_subsi3 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:701 */
rtx
gen_mulsi3 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:712 */
rtx
gen_udivsi3 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:721 */
rtx
gen_umodsi3 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UMOD (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:734 */
rtx
gen_negsi2 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (SImode,
	operand1));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:742 */
rtx
gen_one_cmplsi2 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NOT (SImode,
	operand1));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:754 */
rtx
gen_andsi3 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_AND (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:765 */
rtx
gen_iorsi3 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IOR (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:776 */
rtx
gen_xorsi3 (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:893 */
rtx
gen_ashrsi3_1bit (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:942 */
rtx
gen_lshrsi3_1bit (rtx operand0 ATTRIBUTE_UNUSED,
	rtx operand1 ATTRIBUTE_UNUSED,
	rtx operand2 ATTRIBUTE_UNUSED)
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (SImode,
	operand1,
	operand2));
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:977 */
rtx
gen_nop (void)
{
  return const0_rtx;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:991 */
rtx
gen_blockage (void)
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	1);
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:100 */
rtx
gen_movqi (rtx operand0,
	rtx operand1)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;
#line 104 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{
  if (can_create_pseudo_p ())
    {
      if (GET_CODE (operand0) == MEM)
        {
          /* Source operand for store must be in a register.  */
          operands[1] = force_reg (QImode, operands[1]);
        }
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:116 */
rtx
gen_movhi (rtx operand0,
	rtx operand1)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;
#line 120 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{
  if (can_create_pseudo_p ())
    {
      if (GET_CODE (operands[0]) == MEM)
        {
          /* Source operand for store must be in a register.  */
          operands[1] = force_reg (HImode, operands[1]);
        }
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:132 */
rtx
gen_movsi (rtx operand0,
	rtx operand1)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;
#line 136 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{
  if (can_create_pseudo_p ())
    {
      if (GET_CODE (operands[0]) == MEM 
	  || (GET_CODE (operands[0]) == SUBREG 
	      && GET_CODE (SUBREG_REG (operands[0])) == MEM))
        {
          /* Source operand for store must be in a register.  */
          operands[1] = force_reg (SImode, operands[1]);
        }
    }

  if (flag_pic && symbolic_operand (operands[1], SImode)) 
    {
      if (GET_CODE (operands[1]) == LABEL_REF
          || (GET_CODE (operands[1]) == SYMBOL_REF 
              && SYMBOL_REF_LOCAL_P (operands[1])
              && !SYMBOL_REF_WEAK (operands[1])))
        {
          emit_insn (gen_movsi_gotoff_hi16 (operands[0], operands[1]));
          emit_insn (gen_addsi3 (operands[0], 
                                 operands[0], 
                                 pic_offset_table_rtx));
          emit_insn (gen_movsi_gotoff_lo16 (operands[0], 
                                            operands[0], 
                                            operands[1]));
        } 
      else 
        emit_insn (gen_movsi_got (operands[0], operands[1]));
      crtl->uses_pic_offset_table = 1;
      DONE;
    }         
  else if (flag_pic && GET_CODE (operands[1]) == CONST) 
    {
      rtx op = XEXP (operands[1], 0);
      if (GET_CODE (op) == PLUS)
        {
          rtx arg0 = XEXP (op, 0);
          rtx arg1 = XEXP (op, 1);
          if (GET_CODE (arg0) == LABEL_REF
              || (GET_CODE (arg0) == SYMBOL_REF 
                  && SYMBOL_REF_LOCAL_P (arg0)
                  && !SYMBOL_REF_WEAK (arg0)))
            {
              emit_insn (gen_movsi_gotoff_hi16 (operands[0], arg0));
              emit_insn (gen_addsi3 (operands[0], 
                                     operands[0], 
                                     pic_offset_table_rtx));
              emit_insn (gen_movsi_gotoff_lo16 (operands[0], 
                                                operands[0], 
                                                arg0));
            } 
          else 
            emit_insn (gen_movsi_got (operands[0], arg0));
          emit_insn (gen_addsi3 (operands[0], operands[0], arg1));
          crtl->uses_pic_offset_table = 1;
          DONE;
        }     
    }
  else if (!flag_pic && reloc_operand (operands[1], GET_MODE (operands[1]))) 
    {
      emit_insn (gen_rtx_SET (SImode, operands[0], gen_rtx_HIGH (SImode, operands[1])));
      emit_insn (gen_rtx_SET (SImode, operands[0], gen_rtx_LO_SUM (SImode, operands[0], operands[1])));
      DONE;
    }  
  else if (GET_CODE (operands[1]) == CONST_INT)
    {
      if (!(satisfies_constraint_K (operands[1]) 
          || satisfies_constraint_L (operands[1])
          || satisfies_constraint_U (operands[1])))      
        {
          emit_insn (gen_movsi_insn (operands[0], 
                                     GEN_INT (INTVAL (operands[1]) & ~0xffff)));
          emit_insn (gen_iorsi3 (operands[0], 
                                 operands[0], 
                                 GEN_INT (INTVAL (operands[1]) & 0xffff)));
          DONE;
        }
    }    
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:218 */
rtx
gen_movmemsi (rtx operand0,
	rtx operand1,
	rtx operand2,
	rtx operand3)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;
#line 224 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  if (!lm32_expand_block_move (operands))
    FAIL;
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	operand1),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3))));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:380 */
rtx
gen_cstoresi4 (rtx operand0,
	rtx operand1,
	rtx operand2,
	rtx operand3)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;
#line 386 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  lm32_expand_scc (operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_fmt_ee (GET_CODE (operand1), SImode,
		operand2,
		operand3)));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:479 */
rtx
gen_cbranchsi4 (rtx operand0,
	rtx operand1,
	rtx operand2,
	rtx operand3)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;
#line 487 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{   
  lm32_expand_conditional_branch (operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_fmt_ee (GET_CODE (operand0), VOIDmode,
		operand1,
		operand2),
	gen_rtx_LABEL_REF (VOIDmode,
	operand3),
	pc_rtx)));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:581 */
rtx
gen_call (rtx operand0,
	rtx operand1)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;
#line 587 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{
  rtx addr = XEXP (operands[0], 0);
  if (!CONSTANT_ADDRESS_P (addr))
    XEXP (operands[0], 0) = force_reg (Pmode, addr);
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	operand0,
	operand1),
		gen_hard_reg_clobber (SImode, 29))));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:605 */
rtx
gen_call_value (rtx operand0,
	rtx operand1,
	rtx operand2)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
#line 612 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{
  rtx addr = XEXP (operands[1], 0);
  if (!CONSTANT_ADDRESS_P (addr))
    XEXP (operands[1], 0) = force_reg (Pmode, addr); 
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	operand1,
	operand2)),
		gen_hard_reg_clobber (SImode, 29))));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:650 */
rtx
gen_tablejump (rtx operand0,
	rtx operand1)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;
#line 654 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{
  rtx target = operands[0];
  if (flag_pic)
    {
      /* For PIC, the table entry is relative to the start of the table.  */
      rtx label = gen_reg_rtx (SImode);
      target = gen_reg_rtx (SImode);
      emit_move_insn (label, gen_rtx_LABEL_REF (SImode, operands[1]));
      emit_insn (gen_addsi3 (target, operands[0], label));
    }
  emit_jump_insn (gen_tablejumpsi (target, operands[1]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0));
  emit_insn (gen_rtx_USE (VOIDmode,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:813 */
rtx
gen_ashlsi3 (rtx operand0,
	rtx operand1,
	rtx operand2)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
#line 818 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  if (!TARGET_BARREL_SHIFT_ENABLED)
    {
      if (!optimize_size 
          && satisfies_constraint_L (operands[2])
          && INTVAL (operands[2]) <= 8)
        {
          int i;
          int shifts = INTVAL (operands[2]);
          rtx one = GEN_INT (1);
          
          if (shifts == 0)
            emit_move_insn (operands[0], operands[1]);
          else
            emit_insn (gen_addsi3 (operands[0], operands[1], operands[1]));
          for (i = 1; i < shifts; i++) 
            emit_insn (gen_addsi3 (operands[0], operands[0], operands[0]));
          DONE;                  
        }
      else
        FAIL;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (SImode,
	operand1,
	operand2)));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:853 */
rtx
gen_ashrsi3 (rtx operand0,
	rtx operand1,
	rtx operand2)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
#line 858 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  if (!TARGET_BARREL_SHIFT_ENABLED)
    {
      if (!optimize_size 
          && satisfies_constraint_L (operands[2])
          && INTVAL (operands[2]) <= 8)
        {
          int i;
          int shifts = INTVAL (operands[2]);
          rtx one = GEN_INT (1);
          
          if (shifts == 0)
            emit_move_insn (operands[0], operands[1]);
          else
            emit_insn (gen_ashrsi3_1bit (operands[0], operands[1], one));
          for (i = 1; i < shifts; i++) 
            emit_insn (gen_ashrsi3_1bit (operands[0], operands[0], one));
          DONE;                  
        }
      else
        FAIL;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (SImode,
	operand1,
	operand2)));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:902 */
rtx
gen_lshrsi3 (rtx operand0,
	rtx operand1,
	rtx operand2)
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
#line 907 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  if (!TARGET_BARREL_SHIFT_ENABLED)
    {
      if (!optimize_size 
          && satisfies_constraint_L (operands[2])
          && INTVAL (operands[2]) <= 8)
        {
          int i;
          int shifts = INTVAL (operands[2]);
          rtx one = GEN_INT (1);
          
          if (shifts == 0)
            emit_move_insn (operands[0], operands[1]);
          else
            emit_insn (gen_lshrsi3_1bit (operands[0], operands[1], one));
          for (i = 1; i < shifts; i++) 
            emit_insn (gen_lshrsi3_1bit (operands[0], operands[0], one));
          DONE;                  
        }
      else
        FAIL;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (SImode,
	operand1,
	operand2)));
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:955 */
rtx
gen_prologue (void)
{
  rtx _val = 0;
  start_sequence ();
  {
#line 958 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{
  lm32_expand_prologue ();
  DONE;
}
  }
  emit_insn (const1_rtx);
  _val = get_insns ();
  end_sequence ();
  return _val;
}

/* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:964 */
rtx
gen_epilogue (void)
{
  rtx _val = 0;
  start_sequence ();
  {
#line 967 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"

{
  lm32_expand_epilogue ();
  DONE;
}
  }
  emit_jump_insn (gen_rtx_RETURN (VOIDmode));
  _val = get_insns ();
  end_sequence ();
  return _val;
}



void
add_clobbers (rtx pattern ATTRIBUTE_UNUSED, int insn_code_number)
{
  switch (insn_code_number)
    {
    case 28:
    case 27:
      XVECEXP (pattern, 0, 1) = gen_hard_reg_clobber (SImode, 29);
      break;

    default:
      gcc_unreachable ();
    }
}


int
added_clobbers_hard_reg_p (int insn_code_number)
{
  switch (insn_code_number)
    {
    case 28:
    case 27:
      return 1;

    default:
      gcc_unreachable ();
    }
}
