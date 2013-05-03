/* Generated automatically by the program `genconditions' from the target
   machine description file.  */

#include "bconfig.h"
#include "system.h"

/* It is necessary, but not entirely safe, to include the headers below
   in a generator program.  As a defensive measure, don't do so when the
   table isn't going to have anything in it.  */
#if GCC_VERSION >= 3001

/* Do not allow checking to confuse the issue.  */
#undef ENABLE_CHECKING
#undef ENABLE_TREE_CHECKING
#undef ENABLE_RTL_CHECKING
#undef ENABLE_RTL_FLAG_CHECKING
#undef ENABLE_GC_CHECKING
#undef ENABLE_GC_ALWAYS_COLLECT

#include "coretypes.h"
#include "tm.h"
#include "insn-constants.h"
#include "rtl.h"
#include "tm_p.h"
#include "function.h"

/* Fake - insn-config.h doesn't exist yet.  */
#define MAX_RECOG_OPERANDS 10
#define MAX_DUP_OPERANDS 10
#define MAX_INSNS_PER_SPLIT 5

#include "regs.h"
#include "recog.h"
#include "real.h"
#include "output.h"
#include "flags.h"
#include "hard-reg-set.h"
#include "resource.h"
#include "toplev.h"
#include "reload.h"
#include "tm-constrs.h"

#include "except.h"

/* Dummy external declarations.  */
extern rtx insn;
extern rtx ins1;
extern rtx operands[];

#endif /* gcc >= 3.0.1 */

/* Structure definition duplicated from gensupport.h rather than
   drag in that file and its dependencies.  */
struct c_test
{
  const char *expr;
  int value;
};

/* This table lists each condition found in the machine description.
   Each condition is mapped to its truth value (0 or 1), or -1 if that
   cannot be calculated at compile time.
   If we don't have __builtin_constant_p, or it's not acceptable in array
   initializers, fall back to assuming that all conditions potentially
   vary at run time.  It works in 3.0.1 and later; 3.0 only when not
   optimizing.  */

#if GCC_VERSION >= 3001
static const struct c_test insn_conditions[] = {

#line 359 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "TARGET_SIGN_EXTEND_ENABLED || (GET_CODE (operands[1]) != REG)",
    __builtin_constant_p 
#line 359 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_SIGN_EXTEND_ENABLED || (GET_CODE (operands[1]) != REG))
    ? (int) 
#line 359 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_SIGN_EXTEND_ENABLED || (GET_CODE (operands[1]) != REG))
    : -1 },
#line 705 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "TARGET_MULTIPLY_ENABLED",
    __builtin_constant_p 
#line 705 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_MULTIPLY_ENABLED)
    ? (int) 
#line 705 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_MULTIPLY_ENABLED)
    : -1 },
#line 254 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "flag_pic",
    __builtin_constant_p 
#line 254 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(flag_pic)
    ? (int) 
#line 254 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(flag_pic)
    : -1 },
#line 271 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "lm32_move_ok (QImode, operands)",
    __builtin_constant_p 
#line 271 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (QImode, operands))
    ? (int) 
#line 271 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (QImode, operands))
    : -1 },
#line 641 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "lm32_can_use_return ()",
    __builtin_constant_p 
#line 641 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_can_use_return ())
    ? (int) 
#line 641 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_can_use_return ())
    : -1 },
#line 298 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "lm32_move_ok (SImode, operands)",
    __builtin_constant_p 
#line 298 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (SImode, operands))
    ? (int) 
#line 298 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (SImode, operands))
    : -1 },
#line 284 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "lm32_move_ok (HImode, operands)",
    __builtin_constant_p 
#line 284 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (HImode, operands))
    ? (int) 
#line 284 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(lm32_move_ok (HImode, operands))
    : -1 },
#line 263 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "!flag_pic",
    __builtin_constant_p 
#line 263 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(!flag_pic)
    ? (int) 
#line 263 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(!flag_pic)
    : -1 },
#line 946 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "!TARGET_BARREL_SHIFT_ENABLED",
    __builtin_constant_p 
#line 946 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(!TARGET_BARREL_SHIFT_ENABLED)
    ? (int) 
#line 946 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(!TARGET_BARREL_SHIFT_ENABLED)
    : -1 },
#line 725 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "TARGET_DIVIDE_ENABLED",
    __builtin_constant_p 
#line 725 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_DIVIDE_ENABLED)
    ? (int) 
#line 725 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_DIVIDE_ENABLED)
    : -1 },
#line 935 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
  { "TARGET_BARREL_SHIFT_ENABLED",
    __builtin_constant_p 
#line 935 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_BARREL_SHIFT_ENABLED)
    ? (int) 
#line 935 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
(TARGET_BARREL_SHIFT_ENABLED)
    : -1 },

};
#endif /* gcc >= 3.0.1 */

int
main(void)
{
  unsigned int i;
  const char *p;
  puts ("(define_conditions [");
#if GCC_VERSION >= 3001
  for (i = 0; i < ARRAY_SIZE (insn_conditions); i++)
    {
      printf ("  (%d \"", insn_conditions[i].value);
      for (p = insn_conditions[i].expr; *p; p++)
        {
          switch (*p)
	     {
	     case '\\':
	     case '\"': putchar ('\\'); break;
	     default: break;
	     }
          putchar (*p);
        }
      puts ("\")");
    }
#endif /* gcc >= 3.0.1 */
  puts ("])");
  fflush (stdout);
return ferror (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE;
}
