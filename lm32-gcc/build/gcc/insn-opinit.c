/* Generated automatically by the program `genopinit'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "tm_p.h"
#include "flags.h"
#include "insn-config.h"
#include "recog.h"
#include "expr.h"
#include "optabs.h"
#include "reload.h"

void
init_all_optabs (void)
{
#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC
  int i, j;
#endif

  convert_optab_handler (zext_optab, HImode, QImode)->insn_code = CODE_FOR_zero_extendqihi2;
  convert_optab_handler (zext_optab, SImode, QImode)->insn_code = CODE_FOR_zero_extendqisi2;
  convert_optab_handler (zext_optab, SImode, HImode)->insn_code = CODE_FOR_zero_extendhisi2;
  optab_handler (add_optab, SImode)->insn_code = CODE_FOR_addsi3;
  optab_handler (sub_optab, SImode)->insn_code = CODE_FOR_subsi3;
  if (HAVE_mulsi3)
    optab_handler (smul_optab, SImode)->insn_code = CODE_FOR_mulsi3;
  if (HAVE_udivsi3)
    optab_handler (udiv_optab, SImode)->insn_code = CODE_FOR_udivsi3;
  if (HAVE_umodsi3)
    optab_handler (umod_optab, SImode)->insn_code = CODE_FOR_umodsi3;
  optab_handler (neg_optab, SImode)->insn_code = CODE_FOR_negsi2;
  optab_handler (one_cmpl_optab, SImode)->insn_code = CODE_FOR_one_cmplsi2;
  optab_handler (and_optab, SImode)->insn_code = CODE_FOR_andsi3;
  optab_handler (ior_optab, SImode)->insn_code = CODE_FOR_iorsi3;
  optab_handler (xor_optab, SImode)->insn_code = CODE_FOR_xorsi3;
  optab_handler (mov_optab, QImode)->insn_code = CODE_FOR_movqi;
  optab_handler (mov_optab, HImode)->insn_code = CODE_FOR_movhi;
  optab_handler (mov_optab, SImode)->insn_code = CODE_FOR_movsi;
  movmem_optab[SImode] = CODE_FOR_movmemsi;
  optab_handler (cstore_optab, SImode)->insn_code = CODE_FOR_cstoresi4;
  optab_handler (cbranch_optab, SImode)->insn_code = CODE_FOR_cbranchsi4;
  optab_handler (ashl_optab, SImode)->insn_code = CODE_FOR_ashlsi3;
  optab_handler (ashr_optab, SImode)->insn_code = CODE_FOR_ashrsi3;
  optab_handler (lshr_optab, SImode)->insn_code = CODE_FOR_lshrsi3;

#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC
  /* This flag says the same insns that convert to a signed fixnum
     also convert validly to an unsigned one.  */
  for (i = 0; i < NUM_MACHINE_MODES; i++)
    for (j = 0; j < NUM_MACHINE_MODES; j++)
      convert_optab_handler (ufixtrunc_optab, i, j)->insn_code
      = convert_optab_handler (sfixtrunc_optab, i, j)->insn_code;
#endif
}
