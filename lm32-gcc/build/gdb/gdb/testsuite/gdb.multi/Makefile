VPATH = ../../../../../src/gcc-4.5.3/gdb/gdb/testsuite/gdb.multi
srcdir = ../../../../../src/gcc-4.5.3/gdb/gdb/testsuite/gdb.multi

EXECUTABLES = hello hangout goodbye bkpt-multi-exec crashme

all info install-info dvi install uninstall installcheck check:
	@echo "Nothing to be done for $@..."

clean mostlyclean:
	-rm -f *~ *.o *.ci
	-rm -f core $(EXECUTABLES)

distclean maintainer-clean realclean: clean
	-rm -f Makefile config.status config.log
