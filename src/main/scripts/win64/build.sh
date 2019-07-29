#!/usr/bin/env bash

cp -R ../../c++ workdir
cd workdir
PREFIX=i686-w64-mingw32
export CC=$PREFIX-gcc
export CXX=$PREFIX-g++
export CPP=$PREFIX-cpp
export RANLIB=$PREFIX-ranlib
export PATH="/usr/$PREFIX/bin:$PATH"
mingw-w64-x86_64-pkg-config --host=i686-w64-mingw32
make -f Makefile.mingw
r1=$?
mkdir -p ../../../../../target/classes/win64/include
mkdir -p ../../../../../target/classes/win64/lib
cp Dist/FreeImage.h ../../../../../target/classes/win64/include
cp Dist/libfreeimage.a ../../../../../target/classes/win64/lib
cd ..

rm -R workdir

exit ${r1}
