cp zlib/linux64/include/zutil.h ../../c++/Source/FreeImage

cmake ../../c++ -DZLIB_INCLUDE_DIR="linux64/zlib/include" -DZLIB_LIBRARY="linux64/zlib/lib" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" -DENABLE_TIFF=0 -G "Unix Makefiles"

make
r1=$?

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -R lib
rm -R Source
rm -R zlib

return $r1



