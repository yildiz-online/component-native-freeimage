cp -R ../../c++ workdir
cd workdir
make
r1=$?
mkdir -p ../../../../../target/classes/win64/include
mkdir -p ../../../../../target/classes/win64/lib
cp Dist/FreeImage.h ../../../../../target/classes/win64/include
cp Dist/libfreeimage.a ../../../../../target/classes/win64/lib
cd ..

rm -R workdir

return $r1
