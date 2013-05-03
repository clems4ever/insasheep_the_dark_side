/* Generated automatically by the program `genautomata'
   from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "tm_p.h"
#include "insn-config.h"
#include "recog.h"
#include "regs.h"
#include "real.h"
#include "output.h"
#include "insn-attr.h"
#include "toplev.h"
#include "flags.h"
#include "function.h"

/* Vector translating external insn codes to internal ones.*/
static const unsigned char lm32_translate[] ATTRIBUTE_UNUSED = {
    0,     0,     0,     1};

/* Vector for state transitions.  */
static const unsigned char lm32_transitions[] ATTRIBUTE_UNUSED = {
    1,     0,     2,     0};

/* Vector of min issue delay of insns.  */
static const unsigned char lm32_min_issue_delay[] ATTRIBUTE_UNUSED = {
   32};

/* Vector for locked state flags.  */
static const unsigned char lm32_dead_lock[] = {
    0,     1};


#define DFA__ADVANCE_CYCLE 3

struct DFA_chip
{
  unsigned char lm32_automaton_state;
};


const int max_insn_queue_index = 3;

static int
internal_min_issue_delay (int insn_code, struct DFA_chip *chip ATTRIBUTE_UNUSED)
{
  int temp ATTRIBUTE_UNUSED;
  int res = -1;

  switch (insn_code)
    {
    case 0: /* singlecycle */
    case 1: /* twocycle */
    case 2: /* threecycle */
    case 3: /* $advance_cycle */

      temp = lm32_min_issue_delay [(lm32_translate [insn_code] + chip->lm32_automaton_state * 2) / 8];
      temp = (temp >> (8 - (lm32_translate [insn_code] % 8 + 1) * 1)) & 1;
      res = temp;
      break;


    default:
      res = -1;
      break;
    }
  return res;
}

static int
internal_state_transition (int insn_code, struct DFA_chip *chip ATTRIBUTE_UNUSED)
{
  int temp ATTRIBUTE_UNUSED;

  switch (insn_code)
    {
    case 0: /* singlecycle */
    case 1: /* twocycle */
    case 2: /* threecycle */
    case 3: /* $advance_cycle */
      {

        temp = lm32_transitions [lm32_translate [insn_code] + chip->lm32_automaton_state * 2];
        if (temp >= 2)
          return internal_min_issue_delay (insn_code, chip);
        else
          chip->lm32_automaton_state = temp;
        return -1;
      }

    default:
      return -1;
    }
}


static int *dfa_insn_codes;

static int dfa_insn_codes_length;

static void
dfa_insn_code_enlarge (int uid)
{
  int i = dfa_insn_codes_length;
  dfa_insn_codes_length = 2 * uid;
  dfa_insn_codes = XRESIZEVEC (int, dfa_insn_codes,
                 dfa_insn_codes_length);
  for (; i < dfa_insn_codes_length; i++)
    dfa_insn_codes[i] = -1;
}

static inline int
dfa_insn_code (rtx insn)
{
  int uid = INSN_UID (insn);
  int insn_code;

  if (uid >= dfa_insn_codes_length)
    dfa_insn_code_enlarge (uid);

  insn_code = dfa_insn_codes[uid];
  if (insn_code < 0)
    {
      insn_code = internal_dfa_insn_code (insn);
      dfa_insn_codes[uid] = insn_code;
    }
  return insn_code;
}

int
state_transition (state_t state, rtx insn)
{
  int insn_code;

  if (insn != 0)
    {
      insn_code = dfa_insn_code (insn);
      if (insn_code > DFA__ADVANCE_CYCLE)
        return -1;
    }
  else
    insn_code = DFA__ADVANCE_CYCLE;

  return internal_state_transition (insn_code, (struct DFA_chip *) state);
}

int
min_issue_delay (state_t state, rtx insn)
{
  int insn_code;

  if (insn != 0)
    {
      insn_code = dfa_insn_code (insn);
      if (insn_code > DFA__ADVANCE_CYCLE)
        return 0;
    }
  else
    insn_code = DFA__ADVANCE_CYCLE;

  return internal_min_issue_delay (insn_code, (struct DFA_chip *) state);
}

static int
internal_state_dead_lock_p (struct DFA_chip *ARG_UNUSED (chip))
{
  if (lm32_dead_lock [chip->lm32_automaton_state])
    return 1/* TRUE */;
  return 0/* FALSE */;
}

int
state_dead_lock_p (state_t state)
{
  return internal_state_dead_lock_p ((struct DFA_chip *) state);
}

int
state_size (void)
{
  return sizeof (struct DFA_chip);
}

static inline void
internal_reset (struct DFA_chip *chip)
{
  memset (chip, 0, sizeof (struct DFA_chip));
}

void
state_reset (state_t state)
{
  internal_reset ((struct DFA_chip *) state);
}

int
min_insn_conflict_delay (state_t state, rtx insn, rtx insn2)
{
  struct DFA_chip DFA_chip;
  int insn_code, insn2_code, transition;

  if (insn != 0)
    {
      insn_code = dfa_insn_code (insn);
      if (insn_code > DFA__ADVANCE_CYCLE)
        return 0;
    }
  else
    insn_code = DFA__ADVANCE_CYCLE;


  if (insn2 != 0)
    {
      insn2_code = dfa_insn_code (insn2);
      if (insn2_code > DFA__ADVANCE_CYCLE)
        return 0;
    }
  else
    insn2_code = DFA__ADVANCE_CYCLE;

  memcpy (&DFA_chip, state, sizeof (DFA_chip));
  internal_reset (&DFA_chip);
  transition = internal_state_transition (insn_code, &DFA_chip);
  gcc_assert (transition <= 0);
  return internal_min_issue_delay (insn2_code, &DFA_chip);
}

  static const unsigned char default_latencies[] =
    {
        1,   2,   3,
    };
static int
internal_insn_latency (int insn_code ATTRIBUTE_UNUSED,
	int insn2_code ATTRIBUTE_UNUSED,
	rtx insn ATTRIBUTE_UNUSED,
	rtx insn2 ATTRIBUTE_UNUSED)
{
  if (insn_code >= DFA__ADVANCE_CYCLE || insn2_code >= DFA__ADVANCE_CYCLE)
    return 0;
  switch (insn_code)
    {
    }
  return default_latencies[insn_code];
}

int
insn_latency (rtx insn, rtx insn2)
{
  int insn_code, insn2_code;

  if (insn != 0)
    {
      insn_code = dfa_insn_code (insn);
      if (insn_code > DFA__ADVANCE_CYCLE)
        return 0;
    }
  else
    insn_code = DFA__ADVANCE_CYCLE;


  if (insn2 != 0)
    {
      insn2_code = dfa_insn_code (insn2);
      if (insn2_code > DFA__ADVANCE_CYCLE)
        return 0;
    }
  else
    insn2_code = DFA__ADVANCE_CYCLE;

  return internal_insn_latency (insn_code, insn2_code, insn, insn2);
}

static int
internal_maximal_insn_latency (int insn_code ATTRIBUTE_UNUSED,
	rtx insn ATTRIBUTE_UNUSED)
{
  switch (insn_code)
    {
    }
  return default_latencies[insn_code];
}

int
maximal_insn_latency (rtx insn)
{
  int insn_code;

  if (insn != 0)
    {
      insn_code = dfa_insn_code (insn);
      if (insn_code > DFA__ADVANCE_CYCLE)
        return 0;
    }
  else
    insn_code = DFA__ADVANCE_CYCLE;

  return internal_maximal_insn_latency (insn_code, insn);
}

void
print_reservation (FILE *f, rtx insn ATTRIBUTE_UNUSED)
{
  static const char *const reservation_names[] =
    {
      "x",
      "x,m",
      "x,m,w",
      "nothing"
    };
  int insn_code;

  if (insn == 0)
    insn_code = DFA__ADVANCE_CYCLE;
  else
    {
      insn_code = dfa_insn_code (insn);
      if (insn_code > DFA__ADVANCE_CYCLE)
        insn_code = DFA__ADVANCE_CYCLE;
    }
  fputs (reservation_names[insn_code], f);
}


#if CPU_UNITS_QUERY

int
get_cpu_unit_code (const char *cpu_unit_name)
{
  struct name_code {const char *name; int code;};
  int cmp, l, m, h;
  static struct name_code name_code_table [] =
    {
    };

  /* The following is binary search: */
  l = 0;
  h = sizeof (name_code_table) / sizeof (struct name_code) - 1;
  while (l <= h)
    {
      m = (l + h) / 2;
      cmp = strcmp (cpu_unit_name, name_code_table [m].name);
      if (cmp < 0)
        h = m - 1;
      else if (cmp > 0)
        l = m + 1;
      else
        return name_code_table [m].code;
    }
  return -1;
}

int
cpu_unit_reservation_p (state_t state, int cpu_unit_code)
{
  gcc_assert (cpu_unit_code >= 0 && cpu_unit_code < 0);
  return 0;
}

bool
insn_has_dfa_reservation_p (rtx insn ATTRIBUTE_UNUSED)
{
  int insn_code;

  if (insn == 0)
    insn_code = DFA__ADVANCE_CYCLE;
  else
    {
      insn_code = dfa_insn_code (insn);
      if (insn_code > DFA__ADVANCE_CYCLE)
        insn_code = DFA__ADVANCE_CYCLE;
    }

  return insn_code != DFA__ADVANCE_CYCLE;
}


#endif /* #if CPU_UNITS_QUERY */

void
dfa_clean_insn_cache (void)
{
  int i;

  for (i = 0; i < dfa_insn_codes_length; i++)
    dfa_insn_codes [i] = -1;
}

void
dfa_clear_single_insn_cache (rtx insn)
{
  int i;

  i = INSN_UID (insn);
  if (i < dfa_insn_codes_length)
    dfa_insn_codes [i] = -1;
}

void
dfa_start (void)
{
  dfa_insn_codes_length = get_max_uid ();
  dfa_insn_codes = XNEWVEC (int, dfa_insn_codes_length);
  dfa_clean_insn_cache ();
}

void
dfa_finish (void)
{
  free (dfa_insn_codes);
}

