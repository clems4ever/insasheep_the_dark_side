#!/bin/sh
#
# script to build lm32 GCC toolchain
#
TOPDIR=`pwd`

mkdir $TOPDIR/tarballs
cd $TOPDIR/tarballs

curl ftp://ftp.irisa.fr/pub/mirrors/gcc.gnu.org/gcc/releases/gcc-4.5.3/gcc-4.5.3.tar.bz2 -o gcc-4.5.3.tar.bz2
curl http://fileboar.com/gcc/releases/gcc-4.5.3/gcc-4.5.3.tar.bz2 -o gcc-4.5.3.tar.bz2
curl http://ftp.gnu.org/gnu/gdb/gdb-7.2a.tar.bz2 -o gdb-7.2a.tar.bz2
curl http://ftp.gnu.org/gnu/binutils/binutils-2.21.1.tar.bz2 -o binutils-2.21.1.tar.bz2
curl http://www.multiprecision.org/mpc/download/mpc-0.9.tar.gz -o mpc-0.9.tar.gz
curl http://www.mpfr.org/mpfr-3.0.1/mpfr-3.0.1.tar.bz2 -o mpfr-3.0.1.tar.bz2
curl ftp://ftp.gmplib.org/pub/gmp-5.0.2/gmp-5.0.2.tar.bz2 -o gmp-5.0.2.tar.bz2

mkdir $TOPDIR/src
cd $TOPDIR/src
tar xzvf ../tarballs/newlib-1.19.0.tar.gz
tar xvf ../tarballs/gdb-7.2a.tar.bz2
tar xvf ../tarballs/binutils-2.21.1.tar.bz2
tar xzvf ../tarballs/mpc-0.9.tar.gz
tar xvf ../tarballs/mpfr-3.0.1.tar.bz2
tar xvf ../tarballs/gmp-5.0.2.tar.bz2
tar xvf ../tarballs/gcc-4.5.3.tar.bz2

cd $TOPDIR/src/gcc-4.5.3

rm -rf bfd binutils gas gold gprof opcodes newlib libgloss gdb mpc mpfr gmp
ln -s ../binutils-2.21.1/bfd bfd
ln -s ../binutils-2.21.1/binutils binutils
ln -s ../binutils-2.21.1/gas gas
ln -s ../binutils-2.21.1/gold gold
ln -s ../binutils-2.21.1/gprof gprof
ln -s ../binutils-2.21.1/opcodes opcodes
ln -s ../binutils-2.21.1/ld ld

ln -s ../newlib-1.19.0/newlib newlib
ln -s ../newlib-1.19.0/libgloss libgloss

ln -s ../gdb-7.2 gdb
ln -s ../mpc-0.9 mpc
ln -s ../mpfr-3.0.1 mpfr
ln -s ../gmp-5.0.2 gmp

mkdir $TOPDIR/build
cd $TOPDIR/build

../src/gcc-4.5.3/configure  --prefix=/usr/mico32 --enable-languages=c --target=lm32-elf --disable-libssp --disable-libgcc

make
make install
