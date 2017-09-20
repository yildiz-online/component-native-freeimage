cp ${PWD}/png/win32/include/png.h ${PWD}/zlib/win32/include/
cp ${PWD}/png/win32/include/pnglibconf.h ${PWD}/zlib/win32/include/
cp ${PWD}/png/win32/include/pngconf.h ${PWD}/zlib/win32/include/
cp ${PWD}/jpeg/win32/include/jinclude.h ${PWD}/zlib/win32/include/
cp ${PWD}/jpeg/win32/include/jerror.h ${PWD}/zlib/win32/include/
cp ${PWD}/jpeg/win32/include/jmorecfg.h ${PWD}/zlib/win32/include/
cp ${PWD}/jpeg/win32/include/jpeglib.h ${PWD}/zlib/win32/include/
cp ${PWD}/jpeg/win32/include/jconfig.h ${PWD}/zlib/win32/include/

cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/win32" \
-DZLIB_LIBRARY="${PWD}/zlib/win32/lib/libzlibstatic.a" \
-DZLIB_INCLUDE_DIR="${PWD}/zlib/win32/include" \
-DJPEG_INCLUDE_DIR="${PWD}/jpeg/win32/include" \
-DJPEG_LIBRARY="${PWD}/jpeg/win32/lib/libjpeg.dll.a" \
-DPNG_PNG_INCLUDE_DIR="${PWD}/png/win32/include" \
-DPNG_LIBRARY="${PWD}/png/win32/lib/libpng.a" \
-DENABLE_TIFF=0 \
-DENABLE_JPEG=0 \
-DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make
r1=$?

make clean

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -R zlib
rm -R jpeg
rm -R png
rm -R bin
rm -R lib
rm -R Source

return $r1
