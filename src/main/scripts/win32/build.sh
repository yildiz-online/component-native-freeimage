cmake ../../c++ -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="../../../../target/classes/win32" -DZLIB_LIBRARY="zlib/win32/lib" -DZLIB_INCLUDE_DIR="zlib/win32/include"  -DENABLE_TIFF=0 -DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make
r1=$?

make clean

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -R zlib

return $r1
