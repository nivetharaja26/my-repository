 #! /bin/bash
 echo "Good Morning"
 hostname
 hostname -i
 date
 mkdir hacking
 pwd
 touch MyFile.txt
 mv MyFile.txt ./hacking
 mkdir scripting

cp hacking/MyFile.txt scripting

rm hacking/*
rmdir hacking
