VPATH = ../../../../../src/gcc-4.5.3/gdb/gdb/testsuite/gdb.python
srcdir = ../../../../../src/gcc-4.5.3/gdb/gdb/testsuite/gdb.python

EXECUTABLES = py-type py-value py-prettyprint py-template py-block \
		py-symbol py-mi py-breakpoint py-inferior py-infthread

all info install-info dvi install uninstall installcheck check:
	@echo "Nothing to be done for $@..."

clean mostlyclean:
	-rm -f *~ *.o *.ci
	-rm -f core $(EXECUTABLES)

distclean maintainer-clean realclean: clean
	-rm -f Makefile config.status config.log
