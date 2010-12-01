#/bin/bash
#check if we are in the right working directory
if [ -f make_buildpack.sh ]; then 
cd ..
fi 

# copy overlay files and install fixes
cp tools/overlay/* source/out/target/product/GT-S8000/root
cp -R tools/overlay/system/* source/out/target/product/GT-S8000/system
cp -R tools/overlay/data/* source/out/target/product/GT-S8000/data
sh tools/keypad_fix.sh

# create the archive
cd source/out/target/product/GT-S8000/root
tar cvf ../../../../../../../JetPlatform-binary.tar *
cd ..
tar rvf ../../../../../../JetPlatform-binary.tar system
tar rvf ../../../../../../JetPlatform-binary.tar data
cd ../../../../../../
gzip -9 JetPlatform-binary.tar

