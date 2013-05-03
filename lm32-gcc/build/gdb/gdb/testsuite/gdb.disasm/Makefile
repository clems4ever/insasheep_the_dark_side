VPATH = ../../../../../src/gcc-4.5.3/gdb/gdb/testsuite/gdb.disasm
srcdir = ../../../../../src/gcc-4.5.3/gdb/gdb/testsuite/gdb.disasm

.PHONY: all clean mostlyclean distclean realclean

all info install-info dvi install uninstall installcheck check:
	@echo "Nothing to be done for $@..."

clean mostlyclean:
	-rm -f *.o *.diff *~ *.bad core h8300s hppa mn10300 sh3

distclean maintainer-clean realclean: clean
	-rm -f Makefile config.status config.log
