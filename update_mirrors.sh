#/bin/bash
#check if we are in the right working directory
if [ -f make_buildpack.sh ]; then 
cd ..
fi 

cd source/packages/apps/ADWLauncher/
git remote rm origin
git remote add origin git://github.com/AnderWeb/android_packages_apps_Launcher.git
git remote rm github
git remote add github git@github.com:Dopi/JetPlatform_packages_apps_launcher.git
git fetch origin
git branch eclair
git checkout origin/eclair
git pull origin eclair
git push githiub --all
cd ../../../../
cd source/packages/apps/Openmanager/
git remote rm origin
git remote add origin git://github.com/nexes/Android-File-Manager.git
git remote rm github
git remote add github git@github.com:Dopi/JetPlatform_packages_apps_openmanager.git
git fetch origin
git checkout master
git pull origin master
git push githiub --all
cd ../../../../
cd source/packages/apps/Superuser/
git remote rm origin
git remote add origin git://github.com/ChainsDD/android_packages_apps_Superuser.git
git remote rm github
git remote add github git@github.com:Dopi/JetPlatform_packages_apps_superuser.git
git fetch origin
git checkout master
git pull origin master
git push githiub --all
cd ../../../../
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

