#!/usr/bin/env bash

cp -R ../../c++ workdir
cd workdir
make CX=x86_64-w64-mingw32-g++ CC=x86_64-w64-mingw32-gcc
r1=$?
mkdir -p ../../../../../target/classes/win64/include
mkdir -p ../../../../../target/classes/win64/lib
cp Dist/FreeImage.h ../../../../../target/classes/win64/include
cp Dist/libfreeimage.a ../../../../../target/classes/win64/lib
cd ..

rm -R workdir

exit ${r1}
