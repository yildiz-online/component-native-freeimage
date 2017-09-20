cp zlib/linux64/include/zutil.h ../../c++/Source/FreeImage

cmake ../../c++ \
-DZLIB_INCLUDE_DIRS="${PWD}/zlib/linux64/include" \
-DZLIB_LIBRARY="${PWD}/zlib/linux64/lib/" \
-DJPEG_INCLUDE_DIR="${PWD}/jpeg/linux64/include" \
-DJPEG_LIBRARY="${PWD}/jpeg/linux64/lib/libjpeg.so" \
-DPNG_PNG_INCLUDE_DIR="${PWD}/png/linux64/include" \
-DPNG_INCLUDE_DIRS="${PWD}/png/linux64/include" \
-DPNG_LIBRARY="${PWD}/png/linux64/lib/" \
-DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" \
-DENABLE_TIFF=0 \
-G "Unix Makefiles"

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
rm -R png
rm -R jpeg

return $r1



