#!/bin/bash

# switch case

echo "------------- A powerful password making tool--------------"
echo "1.Phone number list"
echo "2.name and number list"
echo "3.name ,speacial character and number list"
echo "Enter the number from 1-3:"
read option

# if statement

# phone number options
if [ $option == 1 ]
then


# create file
echo "Enter the name of the file you want to create:";
read create;
touch passwd/$create.txt;
file=/home/whoami/script/passwd/$create.txt
echo "Enter the starting number e.g. 9000000000:"
read number
echo "Enter the ending number"
read endnum

# calculating the time that passwd list take
#time1=`expr $endnum - $number`
#echo "$time1"
#time2=`expr $time1 * 0.00126`
#echo "$time2"
#time3=`expr $time2 / 60`
#echo "$time3" 

echo "creating the phone number password file has been started......."
#printing the time that passwd list take
#echo "This password list would take minute:$time3 second:$time2  to complete......"
# printing the passwd


while [ $number -lt $endnum ]
do
number=`expr $number + 1`
echo "$number" >> $file;
done
echo "Password list is stored in $file directory"
echo "done.........."


# name and number 

elif [ $option == 2 ]
then
# creating file
echo "Enter the name of the file you want to create:";
read create;
touch passwd/$create.txt;
file=/home/whoami/script/passwd/$create.txt
 
echo "enter the person name :";
read name; 
echo "enter the starting number";
read c;
echo "enter the ending number";
read d;
echo "creating the name and number password list hase been started......";
while [ $c -lt $d ]
do
 c=`expr $c + 1`
 pass=$name$c;
 lenght=${#pass}
# check for 8 digita valid password
if [ $lenght -ge 8 ] 
then 
  echo "$name$c" >>$file;
fi
done
echo "Password list is stored in $file directory"
echo "done........."

# name special charcter and number

elif [ $option == 3 ]
then

# creating file
echo "Enter the name of the file you want to create:";
read create;
touch passwd/$create.txt;
file=/home/whoami/script/passwd/$create.txt

echo "Enter the person name:"
read pname
echo "Enter the speacial character e.g. @,#:"
read spchr

echo "enter the starting number"
read d
echo "enter the end number"
read e
echo "Creating the name,speacial character and number has been started......"
while [ $d -lt $e ]
do
 d=`expr $d + 1`
 pass1=$pname$spchr$d;
 lenght1=${#pass1}

# check for 8 digit valid password
if [ $lenght1 -ge 8 ]
then
  echo "$pname$spchr$d" >>$file;
fi
done
echo "Password list is stored in $file directory"
echo "done........."
else 
echo "Invalid choice...."
fi












