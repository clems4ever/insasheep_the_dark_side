#ifndef CPU_UTILS
#define CPU_UTILS

void exit(unsigned int f);

unsigned int rand();

void* memcpy(void* a, const void* b, unsigned int len);
int memcmp(const void* a, const void* b, unsigned int len);

/* wes print! */
void wprint(const char* s);
void wprints(signed int x);   /* +/- decimal */
void wprintu(unsigned int x); /* decimal */
void wprintx(unsigned int x); /* hex */
void wprintx2(unsigned int x); /* hex byte */

#endif
