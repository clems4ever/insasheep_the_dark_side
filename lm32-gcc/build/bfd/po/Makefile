# Makefile for program source directory in GNU NLS utilities package.
# Copyright (C) 1995, 1996, 1997 by Ulrich Drepper <drepper@gnu.ai.mit.edu>
# Copyright 2001, 2003, 2006, 2007, 2009 Free Software Foundation, Inc.
#
# This file may be copied and used freely without restrictions.  It can
# be used in projects which are not available under the GNU Public License
# but which still want to provide support for the GNU gettext functionality.
# Please note that the actual code is *not* freely available.

PACKAGE = bfd
VERSION = 2.21.1

SHELL = /bin/sh


srcdir = ../../../src/gcc-4.5.3/bfd/po
top_srcdir = ../../../src/gcc-4.5.3/bfd
VPATH = ../../../src/gcc-4.5.3/bfd/po
top_builddir = ..

prefix = /usr/mico32
exec_prefix = ${prefix}
datadir = $(prefix)/share
localedir = $(datadir)/locale
gnulocaledir = $(prefix)/share/locale
gettextsrcdir = $(prefix)/share/gettext/po
subdir = po

DESTDIR =

INSTALL = /usr/bin/install -c
INSTALL_DATA = /usr/bin/install -c -m 644
MKINSTALLDIRS = $(top_builddir)/../../src/gcc-4.5.3/bfd/../mkinstalldirs

CC = gcc
GENCAT = gencat
GMSGFMT = PATH=../src:$$PATH /usr/bin/msgfmt
MSGFMT = /usr/bin/msgfmt
XGETTEXT = PATH=../src:$$PATH /usr/bin/xgettext
MSGMERGE = PATH=../src:$$PATH msgmerge

DEFS = -DHAVE_CONFIG_H
CFLAGS = -g -O2
CPPFLAGS = 

INCLUDES = -I.. -I$(top_srcdir)/intl

COMPILE = $(CC) -c $(DEFS) $(INCLUDES) $(CPPFLAGS) $(CFLAGS) $(XCFLAGS)

SOURCES = cat-id-tbl.c
POFILES =  $(srcdir)/fr.po $(srcdir)/tr.po $(srcdir)/ja.po $(srcdir)/es.po $(srcdir)/sv.po $(srcdir)/da.po $(srcdir)/zh_CN.po $(srcdir)/ro.po $(srcdir)/rw.po $(srcdir)/vi.po $(srcdir)/fi.po $(srcdir)/id.po $(srcdir)/ru.po
GMOFILES =  $(srcdir)/fr.gmo $(srcdir)/tr.gmo $(srcdir)/ja.gmo $(srcdir)/es.gmo $(srcdir)/sv.gmo $(srcdir)/da.gmo $(srcdir)/zh_CN.gmo $(srcdir)/ro.gmo $(srcdir)/rw.gmo $(srcdir)/vi.gmo $(srcdir)/fi.gmo $(srcdir)/id.gmo $(srcdir)/ru.gmo
DISTFILES = ChangeLog Makefile.in.in SRC-POTFILES.in BLD-POTFILES.in $(PACKAGE).pot \
stamp-cat-id $(POFILES) $(GMOFILES) $(SOURCES)

# Note - the following line gets processed by bfd/configure and amended
# to contain the full list of source dir POTFILES.
SRC-POTFILES = \
	../../../src/gcc-4.5.3/bfd/aix386-core.c \
	../../../src/gcc-4.5.3/bfd/aix5ppc-core.c \
	../../../src/gcc-4.5.3/bfd/aout-adobe.c \
	../../../src/gcc-4.5.3/bfd/aout-arm.c \
	../../../src/gcc-4.5.3/bfd/aout-cris.c \
	../../../src/gcc-4.5.3/bfd/aout-ns32k.c \
	../../../src/gcc-4.5.3/bfd/aout-sparcle.c \
	../../../src/gcc-4.5.3/bfd/aout-target.h \
	../../../src/gcc-4.5.3/bfd/aout-tic30.c \
	../../../src/gcc-4.5.3/bfd/aout0.c \
	../../../src/gcc-4.5.3/bfd/aout32.c \
	../../../src/gcc-4.5.3/bfd/aout64.c \
	../../../src/gcc-4.5.3/bfd/aoutf1.h \
	../../../src/gcc-4.5.3/bfd/aoutx.h \
	../../../src/gcc-4.5.3/bfd/archive.c \
	../../../src/gcc-4.5.3/bfd/archive64.c \
	../../../src/gcc-4.5.3/bfd/archures.c \
	../../../src/gcc-4.5.3/bfd/armnetbsd.c \
	../../../src/gcc-4.5.3/bfd/bfd.c \
	../../../src/gcc-4.5.3/bfd/bfdio.c \
	../../../src/gcc-4.5.3/bfd/bfdwin.c \
	../../../src/gcc-4.5.3/bfd/binary.c \
	../../../src/gcc-4.5.3/bfd/bout.c \
	../../../src/gcc-4.5.3/bfd/cache.c \
	../../../src/gcc-4.5.3/bfd/cf-i386lynx.c \
	../../../src/gcc-4.5.3/bfd/cf-sparclynx.c \
	../../../src/gcc-4.5.3/bfd/cisco-core.c \
	../../../src/gcc-4.5.3/bfd/coff-alpha.c \
	../../../src/gcc-4.5.3/bfd/coff-apollo.c \
	../../../src/gcc-4.5.3/bfd/coff-arm.c \
	../../../src/gcc-4.5.3/bfd/coff-aux.c \
	../../../src/gcc-4.5.3/bfd/coff-go32.c \
	../../../src/gcc-4.5.3/bfd/coff-h8300.c \
	../../../src/gcc-4.5.3/bfd/coff-h8500.c \
	../../../src/gcc-4.5.3/bfd/coff-i386.c \
	../../../src/gcc-4.5.3/bfd/coff-i860.c \
	../../../src/gcc-4.5.3/bfd/coff-i960.c \
	../../../src/gcc-4.5.3/bfd/coff-m68k.c \
	../../../src/gcc-4.5.3/bfd/coff-m88k.c \
	../../../src/gcc-4.5.3/bfd/coff-mips.c \
	../../../src/gcc-4.5.3/bfd/coff-or32.c \
	../../../src/gcc-4.5.3/bfd/coff-rs6000.c \
	../../../src/gcc-4.5.3/bfd/coff-sh.c \
	../../../src/gcc-4.5.3/bfd/coff-sparc.c \
	../../../src/gcc-4.5.3/bfd/coff-stgo32.c \
	../../../src/gcc-4.5.3/bfd/coff-svm68k.c \
	../../../src/gcc-4.5.3/bfd/coff-tic30.c \
	../../../src/gcc-4.5.3/bfd/coff-tic4x.c \
	../../../src/gcc-4.5.3/bfd/coff-tic54x.c \
	../../../src/gcc-4.5.3/bfd/coff-tic80.c \
	../../../src/gcc-4.5.3/bfd/coff-u68k.c \
	../../../src/gcc-4.5.3/bfd/coff-w65.c \
	../../../src/gcc-4.5.3/bfd/coff-we32k.c \
	../../../src/gcc-4.5.3/bfd/coff-x86_64.c \
	../../../src/gcc-4.5.3/bfd/coff-z80.c \
	../../../src/gcc-4.5.3/bfd/coff-z8k.c \
	../../../src/gcc-4.5.3/bfd/coff64-rs6000.c \
	../../../src/gcc-4.5.3/bfd/coffcode.h \
	../../../src/gcc-4.5.3/bfd/coffgen.c \
	../../../src/gcc-4.5.3/bfd/cofflink.c \
	../../../src/gcc-4.5.3/bfd/coffswap.h \
	../../../src/gcc-4.5.3/bfd/compress.c \
	../../../src/gcc-4.5.3/bfd/corefile.c \
	../../../src/gcc-4.5.3/bfd/cpu-alpha.c \
	../../../src/gcc-4.5.3/bfd/cpu-arc.c \
	../../../src/gcc-4.5.3/bfd/cpu-arm.c \
	../../../src/gcc-4.5.3/bfd/cpu-avr.c \
	../../../src/gcc-4.5.3/bfd/cpu-bfin.c \
	../../../src/gcc-4.5.3/bfd/cpu-cr16.c \
	../../../src/gcc-4.5.3/bfd/cpu-cr16c.c \
	../../../src/gcc-4.5.3/bfd/cpu-cris.c \
	../../../src/gcc-4.5.3/bfd/cpu-crx.c \
	../../../src/gcc-4.5.3/bfd/cpu-d10v.c \
	../../../src/gcc-4.5.3/bfd/cpu-d30v.c \
	../../../src/gcc-4.5.3/bfd/cpu-dlx.c \
	../../../src/gcc-4.5.3/bfd/cpu-fr30.c \
	../../../src/gcc-4.5.3/bfd/cpu-frv.c \
	../../../src/gcc-4.5.3/bfd/cpu-h8300.c \
	../../../src/gcc-4.5.3/bfd/cpu-h8500.c \
	../../../src/gcc-4.5.3/bfd/cpu-hppa.c \
	../../../src/gcc-4.5.3/bfd/cpu-i370.c \
	../../../src/gcc-4.5.3/bfd/cpu-i386.c \
	../../../src/gcc-4.5.3/bfd/cpu-i860.c \
	../../../src/gcc-4.5.3/bfd/cpu-i960.c \
	../../../src/gcc-4.5.3/bfd/cpu-ia64.c \
	../../../src/gcc-4.5.3/bfd/cpu-ip2k.c \
	../../../src/gcc-4.5.3/bfd/cpu-iq2000.c \
	../../../src/gcc-4.5.3/bfd/cpu-l1om.c \
	../../../src/gcc-4.5.3/bfd/cpu-lm32.c \
	../../../src/gcc-4.5.3/bfd/cpu-m10200.c \
	../../../src/gcc-4.5.3/bfd/cpu-m10300.c \
	../../../src/gcc-4.5.3/bfd/cpu-m32c.c \
	../../../src/gcc-4.5.3/bfd/cpu-m32r.c \
	../../../src/gcc-4.5.3/bfd/cpu-m68hc11.c \
	../../../src/gcc-4.5.3/bfd/cpu-m68hc12.c \
	../../../src/gcc-4.5.3/bfd/cpu-m68k.c \
	../../../src/gcc-4.5.3/bfd/cpu-m88k.c \
	../../../src/gcc-4.5.3/bfd/cpu-mcore.c \
	../../../src/gcc-4.5.3/bfd/cpu-mep.c \
	../../../src/gcc-4.5.3/bfd/cpu-microblaze.c \
	../../../src/gcc-4.5.3/bfd/cpu-mips.c \
	../../../src/gcc-4.5.3/bfd/cpu-mmix.c \
	../../../src/gcc-4.5.3/bfd/cpu-moxie.c \
	../../../src/gcc-4.5.3/bfd/cpu-msp430.c \
	../../../src/gcc-4.5.3/bfd/cpu-mt.c \
	../../../src/gcc-4.5.3/bfd/cpu-ns32k.c \
	../../../src/gcc-4.5.3/bfd/cpu-openrisc.c \
	../../../src/gcc-4.5.3/bfd/cpu-or32.c \
	../../../src/gcc-4.5.3/bfd/cpu-pdp11.c \
	../../../src/gcc-4.5.3/bfd/cpu-pj.c \
	../../../src/gcc-4.5.3/bfd/cpu-plugin.c \
	../../../src/gcc-4.5.3/bfd/cpu-powerpc.c \
	../../../src/gcc-4.5.3/bfd/cpu-rs6000.c \
	../../../src/gcc-4.5.3/bfd/cpu-rx.c \
	../../../src/gcc-4.5.3/bfd/cpu-s390.c \
	../../../src/gcc-4.5.3/bfd/cpu-score.c \
	../../../src/gcc-4.5.3/bfd/cpu-sh.c \
	../../../src/gcc-4.5.3/bfd/cpu-sparc.c \
	../../../src/gcc-4.5.3/bfd/cpu-spu.c \
	../../../src/gcc-4.5.3/bfd/cpu-tic30.c \
	../../../src/gcc-4.5.3/bfd/cpu-tic4x.c \
	../../../src/gcc-4.5.3/bfd/cpu-tic54x.c \
	../../../src/gcc-4.5.3/bfd/cpu-tic6x.c \
	../../../src/gcc-4.5.3/bfd/cpu-tic80.c \
	../../../src/gcc-4.5.3/bfd/cpu-v850.c \
	../../../src/gcc-4.5.3/bfd/cpu-vax.c \
	../../../src/gcc-4.5.3/bfd/cpu-w65.c \
	../../../src/gcc-4.5.3/bfd/cpu-we32k.c \
	../../../src/gcc-4.5.3/bfd/cpu-xc16x.c \
	../../../src/gcc-4.5.3/bfd/cpu-xstormy16.c \
	../../../src/gcc-4.5.3/bfd/cpu-xtensa.c \
	../../../src/gcc-4.5.3/bfd/cpu-z80.c \
	../../../src/gcc-4.5.3/bfd/cpu-z8k.c \
	../../../src/gcc-4.5.3/bfd/demo64.c \
	../../../src/gcc-4.5.3/bfd/dwarf1.c \
	../../../src/gcc-4.5.3/bfd/dwarf2.c \
	../../../src/gcc-4.5.3/bfd/ecoff.c \
	../../../src/gcc-4.5.3/bfd/ecofflink.c \
	../../../src/gcc-4.5.3/bfd/ecoffswap.h \
	../../../src/gcc-4.5.3/bfd/elf-attrs.c \
	../../../src/gcc-4.5.3/bfd/elf-bfd.h \
	../../../src/gcc-4.5.3/bfd/elf-eh-frame.c \
	../../../src/gcc-4.5.3/bfd/elf-hppa.h \
	../../../src/gcc-4.5.3/bfd/elf-ifunc.c \
	../../../src/gcc-4.5.3/bfd/elf-m10200.c \
	../../../src/gcc-4.5.3/bfd/elf-m10300.c \
	../../../src/gcc-4.5.3/bfd/elf-strtab.c \
	../../../src/gcc-4.5.3/bfd/elf-vxworks.c \
	../../../src/gcc-4.5.3/bfd/elf.c \
	../../../src/gcc-4.5.3/bfd/elf32-am33lin.c \
	../../../src/gcc-4.5.3/bfd/elf32-arc.c \
	../../../src/gcc-4.5.3/bfd/elf32-arm.c \
	../../../src/gcc-4.5.3/bfd/elf32-avr.c \
	../../../src/gcc-4.5.3/bfd/elf32-bfin.c \
	../../../src/gcc-4.5.3/bfd/elf32-cr16.c \
	../../../src/gcc-4.5.3/bfd/elf32-cr16c.c \
	../../../src/gcc-4.5.3/bfd/elf32-cris.c \
	../../../src/gcc-4.5.3/bfd/elf32-crx.c \
	../../../src/gcc-4.5.3/bfd/elf32-d10v.c \
	../../../src/gcc-4.5.3/bfd/elf32-d30v.c \
	../../../src/gcc-4.5.3/bfd/elf32-dlx.c \
	../../../src/gcc-4.5.3/bfd/elf32-fr30.c \
	../../../src/gcc-4.5.3/bfd/elf32-frv.c \
	../../../src/gcc-4.5.3/bfd/elf32-gen.c \
	../../../src/gcc-4.5.3/bfd/elf32-h8300.c \
	../../../src/gcc-4.5.3/bfd/elf32-hppa.c \
	../../../src/gcc-4.5.3/bfd/elf32-hppa.h \
	../../../src/gcc-4.5.3/bfd/elf32-i370.c \
	../../../src/gcc-4.5.3/bfd/elf32-i386.c \
	../../../src/gcc-4.5.3/bfd/elf32-i860.c \
	../../../src/gcc-4.5.3/bfd/elf32-i960.c \
	../../../src/gcc-4.5.3/bfd/elf32-ip2k.c \
	../../../src/gcc-4.5.3/bfd/elf32-iq2000.c \
	../../../src/gcc-4.5.3/bfd/elf32-lm32.c \
	../../../src/gcc-4.5.3/bfd/elf32-m32c.c \
	../../../src/gcc-4.5.3/bfd/elf32-m32r.c \
	../../../src/gcc-4.5.3/bfd/elf32-m68hc11.c \
	../../../src/gcc-4.5.3/bfd/elf32-m68hc12.c \
	../../../src/gcc-4.5.3/bfd/elf32-m68hc1x.c \
	../../../src/gcc-4.5.3/bfd/elf32-m68k.c \
	../../../src/gcc-4.5.3/bfd/elf32-m88k.c \
	../../../src/gcc-4.5.3/bfd/elf32-mcore.c \
	../../../src/gcc-4.5.3/bfd/elf32-mep.c \
	../../../src/gcc-4.5.3/bfd/elf32-microblaze.c \
	../../../src/gcc-4.5.3/bfd/elf32-mips.c \
	../../../src/gcc-4.5.3/bfd/elf32-moxie.c \
	../../../src/gcc-4.5.3/bfd/elf32-msp430.c \
	../../../src/gcc-4.5.3/bfd/elf32-mt.c \
	../../../src/gcc-4.5.3/bfd/elf32-openrisc.c \
	../../../src/gcc-4.5.3/bfd/elf32-or32.c \
	../../../src/gcc-4.5.3/bfd/elf32-pj.c \
	../../../src/gcc-4.5.3/bfd/elf32-ppc.c \
	../../../src/gcc-4.5.3/bfd/elf32-rx.c \
	../../../src/gcc-4.5.3/bfd/elf32-s390.c \
	../../../src/gcc-4.5.3/bfd/elf32-score.c \
	../../../src/gcc-4.5.3/bfd/elf32-score7.c \
	../../../src/gcc-4.5.3/bfd/elf32-sh-symbian.c \
	../../../src/gcc-4.5.3/bfd/elf32-sh.c \
	../../../src/gcc-4.5.3/bfd/elf32-sh64-com.c \
	../../../src/gcc-4.5.3/bfd/elf32-sh64.c \
	../../../src/gcc-4.5.3/bfd/elf32-sparc.c \
	../../../src/gcc-4.5.3/bfd/elf32-spu.c \
	../../../src/gcc-4.5.3/bfd/elf32-tic6x.c \
	../../../src/gcc-4.5.3/bfd/elf32-v850.c \
	../../../src/gcc-4.5.3/bfd/elf32-vax.c \
	../../../src/gcc-4.5.3/bfd/elf32-xc16x.c \
	../../../src/gcc-4.5.3/bfd/elf32-xstormy16.c \
	../../../src/gcc-4.5.3/bfd/elf32-xtensa.c \
	../../../src/gcc-4.5.3/bfd/elf32.c \
	../../../src/gcc-4.5.3/bfd/elf64-alpha.c \
	../../../src/gcc-4.5.3/bfd/elf64-gen.c \
	../../../src/gcc-4.5.3/bfd/elf64-hppa.c \
	../../../src/gcc-4.5.3/bfd/elf64-hppa.h \
	../../../src/gcc-4.5.3/bfd/elf64-mips.c \
	../../../src/gcc-4.5.3/bfd/elf64-mmix.c \
	../../../src/gcc-4.5.3/bfd/elf64-ppc.c \
	../../../src/gcc-4.5.3/bfd/elf64-s390.c \
	../../../src/gcc-4.5.3/bfd/elf64-sh64.c \
	../../../src/gcc-4.5.3/bfd/elf64-sparc.c \
	../../../src/gcc-4.5.3/bfd/elf64-x86-64.c \
	../../../src/gcc-4.5.3/bfd/elf64.c \
	../../../src/gcc-4.5.3/bfd/elfcode.h \
	../../../src/gcc-4.5.3/bfd/elfcore.h \
	../../../src/gcc-4.5.3/bfd/elflink.c \
	../../../src/gcc-4.5.3/bfd/elfn32-mips.c \
	../../../src/gcc-4.5.3/bfd/elfxx-mips.c \
	../../../src/gcc-4.5.3/bfd/elfxx-sparc.c \
	../../../src/gcc-4.5.3/bfd/epoc-pe-arm.c \
	../../../src/gcc-4.5.3/bfd/epoc-pei-arm.c \
	../../../src/gcc-4.5.3/bfd/format.c \
	../../../src/gcc-4.5.3/bfd/freebsd.h \
	../../../src/gcc-4.5.3/bfd/genlink.h \
	../../../src/gcc-4.5.3/bfd/go32stub.h \
	../../../src/gcc-4.5.3/bfd/hash.c \
	../../../src/gcc-4.5.3/bfd/hp300bsd.c \
	../../../src/gcc-4.5.3/bfd/hp300hpux.c \
	../../../src/gcc-4.5.3/bfd/hpux-core.c \
	../../../src/gcc-4.5.3/bfd/i386aout.c \
	../../../src/gcc-4.5.3/bfd/i386bsd.c \
	../../../src/gcc-4.5.3/bfd/i386dynix.c \
	../../../src/gcc-4.5.3/bfd/i386freebsd.c \
	../../../src/gcc-4.5.3/bfd/i386linux.c \
	../../../src/gcc-4.5.3/bfd/i386lynx.c \
	../../../src/gcc-4.5.3/bfd/i386mach3.c \
	../../../src/gcc-4.5.3/bfd/i386msdos.c \
	../../../src/gcc-4.5.3/bfd/i386netbsd.c \
	../../../src/gcc-4.5.3/bfd/i386os9k.c \
	../../../src/gcc-4.5.3/bfd/ieee.c \
	../../../src/gcc-4.5.3/bfd/ihex.c \
	../../../src/gcc-4.5.3/bfd/init.c \
	../../../src/gcc-4.5.3/bfd/irix-core.c \
	../../../src/gcc-4.5.3/bfd/libaout.h \
	../../../src/gcc-4.5.3/bfd/libbfd.c \
	../../../src/gcc-4.5.3/bfd/libbfd.h \
	../../../src/gcc-4.5.3/bfd/libcoff.h \
	../../../src/gcc-4.5.3/bfd/libecoff.h \
	../../../src/gcc-4.5.3/bfd/libhppa.h \
	../../../src/gcc-4.5.3/bfd/libieee.h \
	../../../src/gcc-4.5.3/bfd/libnlm.h \
	../../../src/gcc-4.5.3/bfd/liboasys.h \
	../../../src/gcc-4.5.3/bfd/libpei.h \
	../../../src/gcc-4.5.3/bfd/libxcoff.h \
	../../../src/gcc-4.5.3/bfd/linker.c \
	../../../src/gcc-4.5.3/bfd/lynx-core.c \
	../../../src/gcc-4.5.3/bfd/m68k4knetbsd.c \
	../../../src/gcc-4.5.3/bfd/m68klinux.c \
	../../../src/gcc-4.5.3/bfd/m68knetbsd.c \
	../../../src/gcc-4.5.3/bfd/m88kmach3.c \
	../../../src/gcc-4.5.3/bfd/m88kopenbsd.c \
	../../../src/gcc-4.5.3/bfd/mach-o-i386.c \
	../../../src/gcc-4.5.3/bfd/mach-o-x86-64.c \
	../../../src/gcc-4.5.3/bfd/mach-o.c \
	../../../src/gcc-4.5.3/bfd/mach-o.h \
	../../../src/gcc-4.5.3/bfd/merge.c \
	../../../src/gcc-4.5.3/bfd/mipsbsd.c \
	../../../src/gcc-4.5.3/bfd/mmo.c \
	../../../src/gcc-4.5.3/bfd/netbsd.h \
	../../../src/gcc-4.5.3/bfd/newsos3.c \
	../../../src/gcc-4.5.3/bfd/nlm-target.h \
	../../../src/gcc-4.5.3/bfd/nlm.c \
	../../../src/gcc-4.5.3/bfd/nlm32-alpha.c \
	../../../src/gcc-4.5.3/bfd/nlm32-i386.c \
	../../../src/gcc-4.5.3/bfd/nlm32-ppc.c \
	../../../src/gcc-4.5.3/bfd/nlm32-sparc.c \
	../../../src/gcc-4.5.3/bfd/nlm32.c \
	../../../src/gcc-4.5.3/bfd/nlm64.c \
	../../../src/gcc-4.5.3/bfd/nlmcode.h \
	../../../src/gcc-4.5.3/bfd/nlmswap.h \
	../../../src/gcc-4.5.3/bfd/ns32k.h \
	../../../src/gcc-4.5.3/bfd/ns32knetbsd.c \
	../../../src/gcc-4.5.3/bfd/oasys.c \
	../../../src/gcc-4.5.3/bfd/opncls.c \
	../../../src/gcc-4.5.3/bfd/osf-core.c \
	../../../src/gcc-4.5.3/bfd/pc532-mach.c \
	../../../src/gcc-4.5.3/bfd/pdp11.c \
	../../../src/gcc-4.5.3/bfd/pe-arm-wince.c \
	../../../src/gcc-4.5.3/bfd/pe-arm.c \
	../../../src/gcc-4.5.3/bfd/pe-i386.c \
	../../../src/gcc-4.5.3/bfd/pe-mcore.c \
	../../../src/gcc-4.5.3/bfd/pe-mips.c \
	../../../src/gcc-4.5.3/bfd/pe-ppc.c \
	../../../src/gcc-4.5.3/bfd/pe-sh.c \
	../../../src/gcc-4.5.3/bfd/pe-x86_64.c \
	../../../src/gcc-4.5.3/bfd/pef-traceback.h \
	../../../src/gcc-4.5.3/bfd/pef.c \
	../../../src/gcc-4.5.3/bfd/pef.h \
	../../../src/gcc-4.5.3/bfd/pei-arm-wince.c \
	../../../src/gcc-4.5.3/bfd/pei-arm.c \
	../../../src/gcc-4.5.3/bfd/pei-i386.c \
	../../../src/gcc-4.5.3/bfd/pei-ia64.c \
	../../../src/gcc-4.5.3/bfd/pei-mcore.c \
	../../../src/gcc-4.5.3/bfd/pei-mips.c \
	../../../src/gcc-4.5.3/bfd/pei-ppc.c \
	../../../src/gcc-4.5.3/bfd/pei-sh.c \
	../../../src/gcc-4.5.3/bfd/pei-x86_64.c \
	../../../src/gcc-4.5.3/bfd/peicode.h \
	../../../src/gcc-4.5.3/bfd/plugin.c \
	../../../src/gcc-4.5.3/bfd/ppcboot.c \
	../../../src/gcc-4.5.3/bfd/reloc.c \
	../../../src/gcc-4.5.3/bfd/reloc16.c \
	../../../src/gcc-4.5.3/bfd/riscix.c \
	../../../src/gcc-4.5.3/bfd/rs6000-core.c \
	../../../src/gcc-4.5.3/bfd/sco5-core.c \
	../../../src/gcc-4.5.3/bfd/section.c \
	../../../src/gcc-4.5.3/bfd/simple.c \
	../../../src/gcc-4.5.3/bfd/som.c \
	../../../src/gcc-4.5.3/bfd/som.h \
	../../../src/gcc-4.5.3/bfd/sparclinux.c \
	../../../src/gcc-4.5.3/bfd/sparclynx.c \
	../../../src/gcc-4.5.3/bfd/sparcnetbsd.c \
	../../../src/gcc-4.5.3/bfd/srec.c \
	../../../src/gcc-4.5.3/bfd/stab-syms.c \
	../../../src/gcc-4.5.3/bfd/stabs.c \
	../../../src/gcc-4.5.3/bfd/sunos.c \
	../../../src/gcc-4.5.3/bfd/syms.c \
	../../../src/gcc-4.5.3/bfd/targets.c \
	../../../src/gcc-4.5.3/bfd/tekhex.c \
	../../../src/gcc-4.5.3/bfd/trad-core.c \
	../../../src/gcc-4.5.3/bfd/vax1knetbsd.c \
	../../../src/gcc-4.5.3/bfd/vaxbsd.c \
	../../../src/gcc-4.5.3/bfd/vaxnetbsd.c \
	../../../src/gcc-4.5.3/bfd/verilog.c \
	../../../src/gcc-4.5.3/bfd/versados.c \
	../../../src/gcc-4.5.3/bfd/version.h \
	../../../src/gcc-4.5.3/bfd/vms-alpha.c \
	../../../src/gcc-4.5.3/bfd/vms-lib.c \
	../../../src/gcc-4.5.3/bfd/vms-misc.c \
	../../../src/gcc-4.5.3/bfd/vms.h \
	../../../src/gcc-4.5.3/bfd/xcoff-target.h \
	../../../src/gcc-4.5.3/bfd/xcofflink.c \
	../../../src/gcc-4.5.3/bfd/xsym.c \
	../../../src/gcc-4.5.3/bfd/xsym.h \
	../../../src/gcc-4.5.3/bfd/xtensa-isa.c \
	../../../src/gcc-4.5.3/bfd/xtensa-modules.c 

# Note - the following line gets processed by bfd/configure and amended
# to contain the full list of build dir POTFILES.
BLD-POTFILES = \
	../bfd_stdint.h \
	../bfdver.h \
	../elf32-ia64.c \
	../elf32-target.h \
	../elf64-ia64.c \
	../elf64-target.h \
	../peigen.c \
	../pepigen.c \
	../pex64igen.c \
	../targmatch.h 

CATALOGS =  da.gmo es.gmo fi.gmo fr.gmo id.gmo ja.gmo ro.gmo ru.gmo rw.gmo sv.gmo tr.gmo vi.gmo zh_CN.gmo da.gmo es.gmo fi.gmo fr.gmo id.gmo ja.gmo ro.gmo ru.gmo rw.gmo sv.gmo tr.gmo vi.gmo zh_CN.gmo
CATOBJEXT = .gmo
INSTOBJEXT = .mo

.SUFFIXES:
.SUFFIXES: .c .o .po .pox .gmo .mo .msg .cat

.c.o:
	$(COMPILE) $<

.po.pox:
	$(MAKE) $(PACKAGE).pot
	$(MSGMERGE) $< $(srcdir)/$(PACKAGE).pot -o $*.pox

.po.mo:
	$(MSGFMT) -o $@ $<

.po.gmo:
	file=`echo $* | sed 's,.*/,,'`.gmo \
	  && rm -f $$file && $(GMSGFMT) -o $$file $<

.po.cat:
	sed -f ../intl/po2msg.sed < $< > $*.msg \
	  && rm -f $@ && $(GENCAT) $@ $*.msg


all: all-yes

all-yes: $(CATALOGS) # $(PACKAGE).pot
all-no:

$(srcdir)/$(PACKAGE).pot: $(SRC-POTFILES) $(BLD-POTFILES)
	$(XGETTEXT) --default-domain=$(PACKAGE) \
	  --directory=$(top_srcdir) \
	  --add-comments --keyword=_ --keyword=N_ \
	  --msgid-bugs-address=bug-binutils@gnu.org \
	  --files-from=$(srcdir)/SRC-POTFILES.in 
	$(XGETTEXT) --default-domain=$(PACKAGE) \
	  --directory=.. \
	  --directory=. \
	  --add-comments --keyword=_ --keyword=N_ \
	  --join-existing \
	  --msgid-bugs-address=bug-binutils@gnu.org \
	  --files-from=$(srcdir)/BLD-POTFILES.in
	rm -f $(srcdir)/$(PACKAGE).pot
	mv $(PACKAGE).po $(srcdir)/$(PACKAGE).pot

$(srcdir)/cat-id-tbl.c: stamp-cat-id; @:
$(srcdir)/stamp-cat-id: $(PACKAGE).pot
	rm -f cat-id-tbl.tmp
	sed -f ../intl/po2tbl.sed $(srcdir)/$(PACKAGE).pot \
		| sed -e "s/@PACKAGE NAME@/$(PACKAGE)/" > cat-id-tbl.tmp
	if cmp -s cat-id-tbl.tmp $(srcdir)/cat-id-tbl.c; then \
	  rm cat-id-tbl.tmp; \
	else \
	  echo cat-id-tbl.c changed; \
	  rm -f $(srcdir)/cat-id-tbl.c; \
	  mv cat-id-tbl.tmp $(srcdir)/cat-id-tbl.c; \
	fi
	cd $(srcdir) && rm -f stamp-cat-id && echo timestamp > stamp-cat-id


install: install-exec install-data
install-exec:
install-info:
install-html:
install-pdf:
install-data: install-data-yes
install-data-no: all
install-data-yes: all
	if test -r $(MKINSTALLDIRS); then \
	  $(MKINSTALLDIRS) $(DESTDIR)$(datadir); \
	else \
	  $(top_srcdir)/mkinstalldirs $(DESTDIR)$(datadir); \
	fi
	@catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  case "$$cat" in \
	    *.gmo) destdir=$(gnulocaledir);; \
	    *)     destdir=$(localedir);; \
	  esac; \
	  lang=`echo $$cat | sed 's/\$(CATOBJEXT)$$//'`; \
	  dir=$(DESTDIR)$$destdir/$$lang/LC_MESSAGES; \
	  if test -r $(MKINSTALLDIRS); then \
	    $(MKINSTALLDIRS) $$dir; \
	  else \
	    $(top_srcdir)/mkinstalldirs $$dir; \
	  fi; \
	  if test -r $$cat; then \
	    $(INSTALL_DATA) $$cat $$dir/$(PACKAGE)$(INSTOBJEXT); \
	    echo "installing $$cat as $$dir/$(PACKAGE)$(INSTOBJEXT)"; \
	  else \
	    $(INSTALL_DATA) $(srcdir)/$$cat $$dir/$(PACKAGE)$(INSTOBJEXT); \
	    echo "installing $(srcdir)/$$cat as" \
		 "$$dir/$(PACKAGE)$(INSTOBJEXT)"; \
	  fi; \
	  if test -r $$cat.m; then \
	    $(INSTALL_DATA) $$cat.m $$dir/$(PACKAGE)$(INSTOBJEXT).m; \
	    echo "installing $$cat.m as $$dir/$(PACKAGE)$(INSTOBJEXT).m"; \
	  else \
	    if test -r $(srcdir)/$$cat.m ; then \
	      $(INSTALL_DATA) $(srcdir)/$$cat.m \
		$$dir/$(PACKAGE)$(INSTOBJEXT).m; \
	      echo "installing $(srcdir)/$$cat as" \
		   "$$dir/$(PACKAGE)$(INSTOBJEXT).m"; \
	    else \
	      true; \
	    fi; \
	  fi; \
	done
	if test "$(PACKAGE)" = "gettext"; then \
	  if test -r $(MKINSTALLDIRS); then \
	    $(MKINSTALLDIRS) $(DESTDIR)$(gettextsrcdir); \
	  else \
	    $(top_srcdir)/mkinstalldirs $(DESTDIR)$(gettextsrcdir); \
	  fi; \
	  $(INSTALL_DATA) $(srcdir)/Makefile.in.in \
			  $(DESTDIR)$(gettextsrcdir)/Makefile.in.in; \
	else \
	  : ; \
	fi

# Define this as empty until I found a useful application.
installcheck:

uninstall:
	catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  lang=`echo $$cat | sed 's/\$(CATOBJEXT)$$//'`; \
	  rm -f $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/$(PACKAGE)$(INSTOBJEXT); \
	  rm -f $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/$(PACKAGE)$(INSTOBJEXT).m; \
	  rm -f $(DESTDIR)$(gnulocaledir)/$$lang/LC_MESSAGES/$(PACKAGE)$(INSTOBJEXT); \
	  rm -f $(DESTDIR)$(gnulocaledir)/$$lang/LC_MESSAGES/$(PACKAGE)$(INSTOBJEXT).m; \
	done
	rm -f $(DESTDIR)$(gettextsrcdir)/po-Makefile.in.in

check: all

cat-id-tbl.o: ../intl/libgettext.h

html dvi pdf ps info tags TAGS ID:

mostlyclean:
	rm -f core core.* *.pox $(PACKAGE).po *.old.po cat-id-tbl.tmp
	rm -fr *.o

clean: mostlyclean

distclean: clean
	rm -f Makefile Makefile.in *.mo *.msg *.cat *.cat.m
	rm -f SRC-POTFILES BLD-POTFILES 

maintainer-clean: distclean
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."
	rm -f $(GMOFILES) SRC-POTFILES.in BLD-POTFILES.in

distdir = ../$(PACKAGE)-$(VERSION)/$(subdir)
dist distdir: update-po $(DISTFILES)
	dists="$(DISTFILES)"; \
	for file in $$dists; do \
	  ln $(srcdir)/$$file $(distdir) 2> /dev/null \
	    || cp -p $(srcdir)/$$file $(distdir); \
	done

update-po: Makefile
	$(MAKE) $(PACKAGE).pot
	PATH=`pwd`/../src:$$PATH; \
	cd $(srcdir); \
	catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  lang=`echo $$cat | sed 's/\$(CATOBJEXT)$$//'`; \
	  mv $$lang.po $$lang.old.po; \
	  echo "$$lang:"; \
	  if $(MSGMERGE) $$lang.old.po $(PACKAGE).pot -o $$lang.po; then \
	    rm -f $$lang.old.po; \
	  else \
	    echo "msgmerge for $$cat failed!"; \
	    rm -f $$lang.po; \
	    mv $$lang.old.po $$lang.po; \
	  fi; \
	done

SRC-POTFILES: SRC-POTFILES.in
	( if test 'x$(srcdir)' != 'x.'; then \
	    posrcprefix='$(top_srcdir)/'; \
	  else \
	    posrcprefix="../"; \
	  fi; \
	  rm -f $@-t $@ \
	    && (sed -e '/^#/d' \
	            -e '/^[ 	]*$$/d' \
		    -e "s@.*@	$$posrcprefix& \\\\@" < $(srcdir)/$@.in \
		| sed -e '$$s/\\$$//') > $@-t \
	    && chmod a-w $@-t \
	    && mv $@-t $@ )

BLD-POTFILES: BLD-POTFILES.in
	  ( rm -f $@-t $@ \
	    && (sed -e '/^#/d' \
	            -e '/^[ 	]*$$/d' \
		    -e "s@.*@	../& \\\\@" < $(srcdir)/$@.in \
		| sed -e '$$s/\\$$//') > $@-t \
	    && chmod a-w $@-t \
	    && mv $@-t $@ )

SRC-POTFILES.in: # ../Makefile
	cd .. && $(MAKE) po/SRC-POTFILES.in

BLD-POTFILES.in: # ../Makefile
	cd .. && $(MAKE) po/BLD-POTFILES.in

# Note - The presence of SRC-POTFILES and BLD-POTFILES as dependencies
# here breaks the implementation of the 'distclean' rule for maintainers.
# This is because if 'make distclean' is run in the BFD directory, the
# Makefile there will be deleted before 'distclean' is made here, and so
# the dependency SRC-POTFILES -> SRC-POTFILES.in -> ../Makefile cannot
# be satisfied.
#
# The SRC-POTFILES and BLD-POTFILES dependencies cannot be removed,
# however since it is necessary that these files be built during
# *configure* time, so that configure can insert them into the
# po/Makefile that it is creating, so that the Makefile will have
# the correct dependencies.
Makefile: Make-in ../config.status SRC-POTFILES BLD-POTFILES
	cd .. \
	  && CONFIG_FILES=$(subdir)/Makefile.in:$(subdir)/Make-in \
	     CONFIG_HEADERS= $(SHELL) ./config.status

# Tell versions [3.59,3.63) of GNU make not to export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
