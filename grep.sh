#!/bin/bash
file=/usr/share/wordlists/rockyou.txt
file1=/usr/share/wordlists/sqlmap.txt
echo "enter the name you want to search:"
read name
echo "this are related words:"
grep "$name" $file
grep "$name" $file1
echo "you want to store this words in file [yes/no]:"
read option
if [ $option == yes ]
then
echo "enter the name of wordlist:"
read fname
touch /home/whoami/script/passwd/$fname.txt
grep "$name" $file >> /home/whoami/script/passwd/$fname.txt
grep "$name" $file1 >> /home/whoami/script/passwd/$fname.txt
echo "wordlist has been stored in /home/whoami/script/passwd/$fname location"
echo "Do you want to open that file [yes/no]"
read op1
if [ $op1 == yes ]
then 
 open /home/whoami/script/passwd/$fname.txt
fi
echo "done....."
fi
