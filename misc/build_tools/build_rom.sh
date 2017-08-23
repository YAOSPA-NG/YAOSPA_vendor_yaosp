#!/bin/bash
start_time=`date +'%d/%m/%y %H:%M:%S'`

echo "."
echo "."
echo "."
echo "-----------------------------------------------------------------------------"
echo "Setting up environment to build AOSPA"
echo "-----------------------------------------------------------------------------"

cd /home/yank555-lu/android/git/PA
rm out/target/product/*/system/build.prop
source build/envsetup.sh
croot

breakfast $1

echo "-----------------------------------------------------------------------------"
echo "Building AOSPA for $1"
echo "-----------------------------------------------------------------------------"

mka bacon

echo "Started  : $start_time"
echo "Finished : `date +'%d/%m/%y %H:%M:%S'`"
