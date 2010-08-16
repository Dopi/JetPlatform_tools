#/bin/bash
#check if we are in the right working directory
if [ -f make_buildpack.sh ]; then 
cd ..
fi 

cd source/out/target/product/GT-S8000/root
tar cvf ../../../../../../../JetPlatform-binary.tar *
cd ..
tar rvf ../../../../../../JetPlatform-binary.tar system
cd ../../../../../../
gzip -9 JetPlatform-binary.tar

