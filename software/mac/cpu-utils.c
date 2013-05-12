#include "cpu-utils.h"

#define CONSOLE 1

static unsigned int reason;
static unsigned int fail;

void report(unsigned int r) {
  reason = r;
}

void exit(unsigned int f) {
  fail = f;
  while (1);
}

void _exit(int r) {
  exit(r);
}

static unsigned int seed = 0x11;

unsigned int rand() {
  seed *= 712471271; 
  seed += 1241251;
  return seed;
}

extern int main(int argc, const char** argv);
void LatticeDDInit() {
  main(0, 0);
}

void* memcpy(void* a, const void* b, unsigned int len) {
  unsigned char* ca = (unsigned char*)a;
  const unsigned char* cb = (const unsigned char*)b;
  
  unsigned int i;
  for (i = 0; i < len; ++i)
    ca[i] = cb[i];
  
  return a;
}

int memcmp(const void* a, const void* b, unsigned int len) {
  const unsigned char* ca = (const unsigned char*)a;
  const unsigned char* cb = (const unsigned char*)b;
  
  unsigned int i;
  int x = 0;
  for (i = 0; i < len; ++i) {
    x = ca[i] - cb[i];
    if (x != 0) break;
  }
  
  return x;
}

#ifdef CONSOLE
static int uart_write_ready() {
  unsigned int val, full;
  
  asm volatile ("rcsr %0, JTX" : "=r" (val));
  full = (val >> 8) & 1;
  return !full;
}

static void uart_write(unsigned char v) {
  asm volatile ("wcsr JTX, %0" : : "r" (v));
}

void wprint(const char* s) {
  for (; *s; ++s) {
     while (!uart_write_ready()) { }
     uart_write(*s);
  }
}
#else
void wprint(const char* s) {
}
#endif

static const char hex[] = "0123456789abcdef";

void wprintu(unsigned int x) {
  char buf[16];
  char* p = &buf[sizeof(buf)];
  
  if (x == 0) {
    wprint("0");
    return;
  }
  
  for (*--p = 0; x > 0; x /= 10)
    *--p = hex[x % 10];
  
  wprint(p);
}

void wprints(signed int x) {
  if (x < 0) {
    wprint("-");
    x = -x;
  }
  
  wprintu(x);
}

void wprintx(unsigned int x) {
  char buf[16];
  char* p = &buf[0];
  int shift;
  
  *p++ = '0';
  *p++ = 'x';
  
  for (shift = 7; shift >= 0; --shift)
    *p++ = hex[(x >> 4*shift) & 0xf];
  
  *p++ = 0;
  wprint(buf);
}

void wprintx2(unsigned int x) {
  char buf[3];
  char* p = &buf[0];
  
  *p++ = hex[(x >> 4) & 0xf];
  *p++ = hex[(x >> 0) & 0xf];
  *p++ = 0;
  
  wprint(buf);
}
