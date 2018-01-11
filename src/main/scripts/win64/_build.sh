cp ${PWD}/png/win64/include/png.h ${PWD}/zlib/win64/include/
cp ${PWD}/png/win64/include/pnglibconf.h ${PWD}/zlib/win64/include/
cp ${PWD}/png/win64/include/pngconf.h ${PWD}/zlib/win64/include/
cp ${PWD}/jpeg/win64/include/jinclude.h ${PWD}/zlib/win64/include/
cp ${PWD}/jpeg/win64/include/jerror.h ${PWD}/zlib/win64/include/
cp ${PWD}/jpeg/win64/include/jmorecfg.h ${PWD}/zlib/win64/include/
cp ${PWD}/jpeg/win64/include/jpeglib.h ${PWD}/zlib/win64/include/
cp ${PWD}/jpeg/win64/include/jconfig.h ${PWD}/zlib/win64/include/

cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/win64" \
-DZLIB_LIBRARY="${PWD}/zlib/win64/lib/libzlibstatic.a" \
-DZLIB_INCLUDE_DIR="${PWD}/zlib/win64/include" \
-DJPEG_INCLUDE_DIR="${PWD}/jpeg/win64/include" \
-DJPEG_LIBRARY="${PWD}/jpeg/win64/lib/libjpeg.dll.a" \
-DPNG_PNG_INCLUDE_DIR="${PWD}/png/win364/include" \
-DPNG_LIBRARY="${PWD}/png/win64/lib/libpng.a" \
-DENABLE_TIFF=0 \
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
