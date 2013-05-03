/* Generated automatically by the program `genoutput'
   from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "flags.h"
#include "ggc.h"
#include "rtl.h"
#include "expr.h"
#include "insn-codes.h"
#include "tm_p.h"
#include "function.h"
#include "regs.h"
#include "hard-reg-set.h"
#include "real.h"
#include "insn-config.h"

#include "conditions.h"
#include "insn-attr.h"

#include "recog.h"

#include "toplev.h"
#include "output.h"
#include "target.h"
#include "tm-constrs.h"

static const char * const output_4[] = {
  "lbu      %0, %1",
  "or       %0, %1, r0",
  "sb       %0, %1",
  "sb       %0, r0",
  "addi     %0, r0, %1",
};

static const char * const output_5[] = {
  "lhu      %0, %1",
  "or       %0, %1, r0",
  "sh       %0, %1",
  "sh       %0, r0",
  "addi     %0, r0, %1",
  "ori      %0, r0, %1",
};

static const char * const output_6[] = {
  "lw       %0, %1",
  "or       %0, %1, r0",
  "sw       %0, %1",
  "sw       %0, r0",
  "addi     %0, r0, %1",
  "ori      %0, r0, %1",
  "orhi     %0, r0, hi(%1)",
  "mva      %0, gp(%1)",
  "orhi     %0, r0, hi(%1)",
};

static const char * const output_7[] = {
  "lb       %0, %1",
  "sextb    %0, %1",
};

static const char * const output_8[] = {
  "lbu      %0, %1",
  "andi     %0, %1, 0xff",
};

static const char * const output_9[] = {
  "lb       %0, %1",
  "sextb    %0, %1",
};

static const char * const output_10[] = {
  "lbu      %0, %1",
  "andi     %0, %1, 0xff",
};

static const char * const output_11[] = {
  "lh       %0, %1",
  "sexth    %0, %1",
};

static const char * const output_12[] = {
  "lhu      %0, %1",
  "andi     %0, %1, 0xffff",
};

static const char * const output_13[] = {
  "cmpe     %0, %z1, %2",
  "cmpei    %0, %z1, %2",
};

static const char * const output_14[] = {
  "cmpne    %0, %z1, %2",
  "cmpnei   %0, %z1, %2",
};

static const char * const output_15[] = {
  "cmpg     %0, %z1, %2",
  "cmpgi    %0, %z1, %2",
};

static const char * const output_16[] = {
  "cmpge    %0, %z1, %2",
  "cmpgei   %0, %z1, %2",
};

static const char * const output_17[] = {
  "cmpgu    %0, %z1, %2",
  "cmpgui   %0, %z1, %2",
};

static const char * const output_18[] = {
  "cmpgeu   %0, %z1, %2",
  "cmpgeui  %0, %z1, %2",
};

static const char *
output_21 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 500 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  return get_attr_length (insn) == 4
        ? "be     %z0,%z1,%2"
        : "bne    %z0,%z1,8\n\tbi     %2";
}
}

static const char *
output_22 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 514 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  return get_attr_length (insn) == 4
        ? "bne    %z0,%z1,%2"
        : "be     %z0,%z1,8\n\tbi     %2";
}
}

static const char *
output_23 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 528 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  return get_attr_length (insn) == 4
        ? "bg     %z0,%z1,%2"
        : "bge    %z1,%z0,8\n\tbi     %2";
}
}

static const char *
output_24 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 542 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  return get_attr_length (insn) == 4
        ? "bge    %z0,%z1,%2"
        : "bg     %z1,%z0,8\n\tbi     %2";
}
}

static const char *
output_25 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 556 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  return get_attr_length (insn) == 4
        ? "bgu    %z0,%z1,%2"
        : "bgeu   %z1,%z0,8\n\tbi     %2";
}
}

static const char *
output_26 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 570 "../../src/gcc-4.5.3/gcc/config/lm32/lm32.md"
{
  return get_attr_length (insn) == 4
        ? "bgeu   %z0,%z1,%2"
        : "bgu    %z1,%z0,8\n\tbi     %2";
}
}

static const char * const output_27[] = {
  "call     %0",
  "calli    %0",
};

static const char * const output_28[] = {
  "call     %1",
  "calli    %1",
};

static const char * const output_32[] = {
  "add      %0, %z1, %2",
  "addi     %0, %z1, %2",
};

static const char * const output_34[] = {
  "mul      %0, %z1, %2",
  "muli     %0, %z1, %2",
};

static const char * const output_39[] = {
  "and      %0, %z1, %2",
  "andi     %0, %z1, %2",
};

static const char * const output_40[] = {
  "or       %0, %z1, %2",
  "ori      %0, %z1, %2",
};

static const char * const output_41[] = {
  "xor      %0, %z1, %2",
  "xori     %0, %z1, %2",
};

static const char * const output_42[] = {
  "nor      %0, %z1, %2",
  "nori     %0, %z1, %2",
};

static const char * const output_43[] = {
  "xnor     %0, %z1, %2",
  "xnori    %0, %z1, %2",
};

static const char * const output_44[] = {
  "sl       %0, %z1, %2",
  "sli      %0, %z1, %2",
};

static const char * const output_45[] = {
  "sr       %0, %z1, %2",
  "sri      %0, %z1, %2",
};

static const char * const output_47[] = {
  "sru      %0, %z1, %2",
  "srui     %0, %z1, %2",
};



static const struct insn_operand_data operand_data[] = 
{
  {
    0,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=r",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=r",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "0",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=r",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "0",
    SImode,
    0,
    1
  },
  {
    reloc_operand,
    "i",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=r,r,m,m,r",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "m,r,r,J,n",
    QImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=r,r,m,m,r,r",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "m,r,r,J,K,L",
    HImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "=r,r,m,m,r,r,r,r,r",
    SImode,
    0,
    1
  },
  {
    movsi_rhs_operand,
    "m,r,r,J,K,L,U,S,Y",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=r,r",
    HImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "m,r",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=r,r",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "m,r",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=r,r",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "m,r",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=r,r",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "%rJ,rJ",
    SImode,
    0,
    1
  },
  {
    register_or_K_operand,
    "r,K",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=r,r",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "rJ,rJ",
    SImode,
    0,
    1
  },
  {
    register_or_K_operand,
    "r,K",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=r,r",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "rJ,rJ",
    SImode,
    0,
    1
  },
  {
    register_or_L_operand,
    "r,L",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "r",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "rJ",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "rJ",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    call_operand,
    "r,s",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=r,r",
    VOIDmode,
    0,
    1
  },
  {
    call_operand,
    "r,s",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "r",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=r",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "rJ",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "rJ",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=r",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "rJ",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "r",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=r,r",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "%rJ,rJ",
    SImode,
    0,
    1
  },
  {
    register_or_L_operand,
    "r,L",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=r",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "rJ",
    SImode,
    0,
    1
  },
  {
    constant_M_operand,
    "M",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "",
    BLKmode,
    0,
    1
  },
  {
    general_operand,
    "",
    BLKmode,
    0,
    1
  },
  {
    0,
    "",
    SImode,
    0,
    1
  },
  {
    const_int_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    ordered_comparison_operator,
    "",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_or_int_operand,
    "",
    SImode,
    0,
    1
  },
  {
    comparison_operator,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    nonmemory_operand,
    "",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_or_zero_operand,
    "",
    SImode,
    0,
    1
  },
  {
    register_or_L_operand,
    "",
    SImode,
    0,
    1
  },
};


#if GCC_VERSION >= 2007
__extension__
#endif

const struct insn_data insn_data[] = 
{
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:234 */
  {
    "movsi_got",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "lw       %0, (gp+got(%1))",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_movsi_got,
    &operand_data[1],
    2,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:242 */
  {
    "movsi_gotoff_hi16",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "orhi     %0, r0, gotoffhi16(%1)",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_movsi_gotoff_hi16,
    &operand_data[1],
    2,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:250 */
  {
    "movsi_gotoff_lo16",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "addi     %0, %1, gotofflo16(%2)",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_movsi_gotoff_lo16,
    &operand_data[3],
    3,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:259 */
  {
    "*movsi_lo_sum",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "ori      %0, %0, lo(%2)",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    0,
    &operand_data[6],
    3,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:268 */
  {
    "*movqi_insn",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_4 },
#else
    { 0, output_4, 0 },
#endif
    0,
    &operand_data[9],
    2,
    0,
    5,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:281 */
  {
    "*movhi_insn",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_5 },
#else
    { 0, output_5, 0 },
#endif
    0,
    &operand_data[11],
    2,
    0,
    6,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:295 */
  {
    "movsi_insn",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_6 },
#else
    { 0, output_6, 0 },
#endif
    (insn_gen_fn) gen_movsi_insn,
    &operand_data[13],
    2,
    0,
    9,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:316 */
  {
    "*extendqihi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_7 },
#else
    { 0, output_7, 0 },
#endif
    0,
    &operand_data[15],
    2,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:326 */
  {
    "zero_extendqihi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_8 },
#else
    { 0, output_8, 0 },
#endif
    (insn_gen_fn) gen_zero_extendqihi2,
    &operand_data[15],
    2,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:336 */
  {
    "*extendqisi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_9 },
#else
    { 0, output_9, 0 },
#endif
    0,
    &operand_data[17],
    2,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:346 */
  {
    "zero_extendqisi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_10 },
#else
    { 0, output_10, 0 },
#endif
    (insn_gen_fn) gen_zero_extendqisi2,
    &operand_data[17],
    2,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:356 */
  {
    "*extendhisi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_11 },
#else
    { 0, output_11, 0 },
#endif
    0,
    &operand_data[19],
    2,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:366 */
  {
    "zero_extendhisi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_12 },
#else
    { 0, output_12, 0 },
#endif
    (insn_gen_fn) gen_zero_extendhisi2,
    &operand_data[19],
    2,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:391 */
  {
    "*seq",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_13 },
#else
    { 0, output_13, 0 },
#endif
    0,
    &operand_data[21],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:402 */
  {
    "*sne",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_14 },
#else
    { 0, output_14, 0 },
#endif
    0,
    &operand_data[21],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:413 */
  {
    "*sgt",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_15 },
#else
    { 0, output_15, 0 },
#endif
    0,
    &operand_data[24],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:424 */
  {
    "*sge",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_16 },
#else
    { 0, output_16, 0 },
#endif
    0,
    &operand_data[24],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:435 */
  {
    "*sgtu",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_17 },
#else
    { 0, output_17, 0 },
#endif
    0,
    &operand_data[27],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:446 */
  {
    "*sgeu",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_18 },
#else
    { 0, output_18, 0 },
#endif
    0,
    &operand_data[27],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:461 */
  {
    "jump",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "bi       %0",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_jump,
    &operand_data[2],
    1,
    0,
    0,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:468 */
  {
    "indirect_jump",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "b        %0",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_indirect_jump,
    &operand_data[30],
    1,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:493 */
  {
    "*beq",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_21 },
#else
    { 0, 0, output_21 },
#endif
    0,
    &operand_data[31],
    3,
    0,
    1,
    3
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:507 */
  {
    "*bne",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_22 },
#else
    { 0, 0, output_22 },
#endif
    0,
    &operand_data[31],
    3,
    0,
    1,
    3
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:521 */
  {
    "*bgt",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_23 },
#else
    { 0, 0, output_23 },
#endif
    0,
    &operand_data[31],
    3,
    0,
    1,
    3
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:535 */
  {
    "*bge",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_24 },
#else
    { 0, 0, output_24 },
#endif
    0,
    &operand_data[31],
    3,
    0,
    1,
    3
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:549 */
  {
    "*bgtu",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_25 },
#else
    { 0, 0, output_25 },
#endif
    0,
    &operand_data[31],
    3,
    0,
    1,
    3
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:563 */
  {
    "*bgeu",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_26 },
#else
    { 0, 0, output_26 },
#endif
    0,
    &operand_data[31],
    3,
    0,
    1,
    3
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:594 */
  {
    "*call",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_27 },
#else
    { 0, output_27, 0 },
#endif
    0,
    &operand_data[34],
    2,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:619 */
  {
    "*call_value",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_28 },
#else
    { 0, output_28, 0 },
#endif
    0,
    &operand_data[36],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:631 */
  {
    "return_internal",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "b        %0",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_return_internal,
    &operand_data[30],
    1,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:639 */
  {
    "return",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "ret",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_return,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:669 */
  {
    "tablejumpsi",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "b        %0",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_tablejumpsi,
    &operand_data[39],
    2,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:681 */
  {
    "addsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_32 },
#else
    { 0, output_32, 0 },
#endif
    (insn_gen_fn) gen_addsi3,
    &operand_data[21],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:692 */
  {
    "subsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "sub      %0, %z1, %z2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_subsi3,
    &operand_data[41],
    3,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:701 */
  {
    "mulsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_34 },
#else
    { 0, output_34, 0 },
#endif
    (insn_gen_fn) gen_mulsi3,
    &operand_data[21],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:712 */
  {
    "udivsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "divu     %0, %z1, %2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_udivsi3,
    &operand_data[44],
    3,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:721 */
  {
    "umodsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "modu     %0, %z1, %2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_umodsi3,
    &operand_data[44],
    3,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:734 */
  {
    "negsi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "sub      %0, r0, %z1",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_negsi2,
    &operand_data[41],
    2,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:742 */
  {
    "one_cmplsi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "not      %0, %z1",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_one_cmplsi2,
    &operand_data[41],
    2,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:754 */
  {
    "andsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_39 },
#else
    { 0, output_39, 0 },
#endif
    (insn_gen_fn) gen_andsi3,
    &operand_data[47],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:765 */
  {
    "iorsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_40 },
#else
    { 0, output_40, 0 },
#endif
    (insn_gen_fn) gen_iorsi3,
    &operand_data[47],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:776 */
  {
    "xorsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_41 },
#else
    { 0, output_41, 0 },
#endif
    (insn_gen_fn) gen_xorsi3,
    &operand_data[47],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:787 */
  {
    "*norsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_42 },
#else
    { 0, output_42, 0 },
#endif
    0,
    &operand_data[47],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:798 */
  {
    "*xnorsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_43 },
#else
    { 0, output_43, 0 },
#endif
    0,
    &operand_data[47],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:842 */
  {
    "*ashlsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_44 },
#else
    { 0, output_44, 0 },
#endif
    0,
    &operand_data[27],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:882 */
  {
    "*ashrsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_45 },
#else
    { 0, output_45, 0 },
#endif
    0,
    &operand_data[27],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:893 */
  {
    "ashrsi3_1bit",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "sri      %0, %z1, %2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_ashrsi3_1bit,
    &operand_data[50],
    3,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:931 */
  {
    "*lshrsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_47 },
#else
    { 0, output_47, 0 },
#endif
    0,
    &operand_data[27],
    3,
    0,
    2,
    2
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:942 */
  {
    "lshrsi3_1bit",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "srui     %0, %z1, %2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_lshrsi3_1bit,
    &operand_data[50],
    3,
    0,
    1,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:977 */
  {
    "nop",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "nop",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_nop,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:991 */
  {
    "blockage",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_blockage,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:100 */
  {
    "movqi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_movqi,
    &operand_data[53],
    2,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:116 */
  {
    "movhi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_movhi,
    &operand_data[55],
    2,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:132 */
  {
    "movsi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_movsi,
    &operand_data[57],
    2,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:218 */
  {
    "movmemsi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_movmemsi,
    &operand_data[59],
    4,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:380 */
  {
    "cstoresi4",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_cstoresi4,
    &operand_data[63],
    4,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:479 */
  {
    "cbranchsi4",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_cbranchsi4,
    &operand_data[67],
    4,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:581 */
  {
    "call",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_call,
    &operand_data[70],
    2,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:605 */
  {
    "call_value",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_call_value,
    &operand_data[70],
    3,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:650 */
  {
    "tablejump",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_tablejump,
    &operand_data[73],
    2,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:813 */
  {
    "ashlsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_ashlsi3,
    &operand_data[75],
    3,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:853 */
  {
    "ashrsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_ashrsi3,
    &operand_data[75],
    3,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:902 */
  {
    "lshrsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_lshrsi3,
    &operand_data[75],
    3,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:955 */
  {
    "prologue",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_prologue,
    &operand_data[0],
    0,
    0,
    0,
    0
  },
  /* ../../src/gcc-4.5.3/gcc/config/lm32/lm32.md:964 */
  {
    "epilogue",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_epilogue,
    &operand_data[0],
    0,
    0,
    0,
    0
  },
};


const char *
get_insn_name (int code)
{
  if (code == NOOP_MOVE_INSN_CODE)
    return "NOOP_MOVE";
  else
    return insn_data[code].name;
}
