cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" \
-G "Unix Makefiles"

r1=$?

make

mkdir -p ../../../../target/classes/linux64/include/
mkdir -p ../../../../target/classes/linux64/lib/

cp libFreeImage.a ../../../../target/classes/linux64/lib/libFreeImage.a
rm libFreeImage.a
cp ../../c++/Source/FreeImage.h ../../../../target/classes/linux64/include/FreeImage.h
rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm -R jpeg
rm -R png

return $r1



