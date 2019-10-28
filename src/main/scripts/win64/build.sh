#!/usr/bin/env bash

cp -R ../../c++ workdir
cd workdir
autoconf
./configure --host=x86_64-w64-mingw32
make
r1=$?
mkdir -p ../../../../../target/classes/win64/include
mkdir -p ../../../../../target/classes/win64/lib
cp Dist/FreeImage.h ../../../../../target/classes/win64/include
cp Dist/libfreeimage.a ../../../../../target/classes/win64/lib
cd ..
rm -r workdir

exit ${r1}
