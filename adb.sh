#!/bin/bash
#adb devices
echo "enter the ip address of target device:";
read a;
adb connect $a 
c=0;
echo "enter the number you screenshot you want to take";
read b;
while [ $c -lt $b ]
do
c=`expr $c + 1`
a=$RANDOM;
# make a screenshot of the screen
adb shell screencap /sdcard/$a.png
adb pull /sdcard/$a.png
#open file
open $a.png
#sleep 20s; delay for 20 seconds
done

# For recording a screen record
#adb shell screenrecord /sdcard/$a.mp4
# make a relay of 1 minute
#sleep 1m; 
# download the screenrecord file
#adb pull /sdcard/$a.mp4
# open file
#open $a.mp4
