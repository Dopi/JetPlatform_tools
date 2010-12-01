#/bin/bash
#check if we are in the right working directory
if [ -f make_buildpack.sh ]; then 
cd ..
fi 

chown root.root source/out/target/product/GT-S8000/root/init.rc
chmod 644 source/out/target/product/GT-S8000/root/init.rc

chmod 644 source/out/target/product/GT-S8000/system/usr/keychars/*
echo "key 11    VOLUME_UP " >source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo "key 10    VOLUME_DOWN " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo "key 9     CALL              WAKE_DROPPED " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo "key 1     MENU              WAKE " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo "key 249   ENDCALL           WAKE_DROPPED " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo "key 2     CAMERA " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo "key 3     FOCUS " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo "key 19    HOME              WAKE " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo "key 17    BACK              WAKE_DROPPED " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl
echo " " >>source/out/target/product/GT-S8000/system/usr/keylayout/qwerty.kl


