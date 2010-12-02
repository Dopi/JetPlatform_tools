#/bin/bash
#check if we are in the right working directory
if [ -f update_mirrors.sh ]; then 
cd ..
fi 

#cd source/packages/apps/ADWLauncher/
#git remote rm origin
#git remote add origin git://github.com/AnderWeb/android_packages_apps_Launcher.git
#git remote rm github
#git remote add github git@github.com:Dopi/JetPlatform_packages_apps_launcher.git
#git fetch origin
#git branch eclair
#git checkout origin/eclair
#git pull origin eclair
#git push github --all
#cd ../../../../

cd source/packages/apps/Openmanager/
git remote rm origin
git remote add origin git://github.com/nexes/Android-File-Manager.git
git remote rm github
git remote add github git@github.com:Dopi/JetPlatform_packages_apps_openmanager.git
git fetch origin
git checkout master
git pull origin master
git push github --all
cd ../../../../

cd source/packages/apps/Superuser/
git remote rm origin
git remote add origin git://github.com/ChainsDD/android_packages_apps_Superuser.git
git remote rm github
git remote add github git@github.com:Dopi/JetPlatform_packages_apps_superuser.git
git fetch origin
git checkout master
git pull origin master
git push github --all
cd ../../../../

cd source/external/dhcpcd
git remote rm origin
git remote add origin git://android.kernel.org/platform/external/dhcpcd.git
git remote rm github
git remote add github git@github.com:Dopi/JetPlatform_external_dhcpcd.git
git fetch origin
git checkout eclair
git pull origin eclair
git push github --all
cd ../../../

cd source/vendor/sec
git remote rm github
git remote add github git@github.com:Dopi/JetPlatform_vendor_sec.git
git push github --all
cd ../../../

cd source/hardware/libhardware_legacy
git remote rm origin
git remote add origin git://android.git.kernel.org/platform/hardware/libhardware_legacy.git
git remote rm github
git remote add github git@github.com:JetDroid/JetPlatform_hardware_libhardware_legacy.git
git fetch origin
git checkout eclair
git pull origin eclair
git push github --all
cd ../../../

cd source/build/
git remote rm origin
git remote add origin git://android.kernel.org/platform/build.git
git remote rm github
git remote add github git@github.com:Dopi/JetPlatform_build.git
git fetch origin
git checkout master
git pull origin master
git push github --all
git checkout eclair
git pull origin eclair
git push github --all

