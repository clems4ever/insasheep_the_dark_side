VPATH = ../../../../../src/gcc-4.5.3/gdb/gdb/testsuite/gdb.reverse
srcdir = ../../../../../src/gcc-4.5.3/gdb/gdb/testsuite/gdb.reverse

EXECUTABLES   = break-reverse consecutive-reverse finish-reverse \
	machinestate solib-reverse step-reverse until-reverse \
	watch-reverse i386-reverse

MISCELLANEOUS = 

all info install-info dvi install uninstall installcheck check:
	@echo "Nothing to be done for $@..."

clean mostlyclean:
	rm -f *~ *.o *.x *.ci *.sl a.out core
	rm -f $(EXECUTABLES) $(MISCELLANEOUS)

distclean maintainer-clean realclean: clean
	rm -f Makefile config.status config.log site.*

