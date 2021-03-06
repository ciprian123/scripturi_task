#!/bin/bash

# this script automates several comands: shebang, touch, chmod and vim. 
if [  "$#" -ne 1 ]; then 
	echo "this script requires one argument wich is the script name"
exit 1 
fi

# dam un folder ca parametru si din el stergem fisierele goale
if [ ! -d "$1" ]; then
    echo "Directorul nu exista!"
    exit 1
fi

flag=0
for item in $1/*
do
   # verific sa am fisier si nu director
   if [ -f "$item" ]; then 
       if [ ! -s "$item" ]; then
           echo "Am sters fisierul: ** " $item "  **"
           rm $item
           flag=1
       fi
   fi
done

if [ $flag -eq 0 ]; then
    echo "Nu avem fisiere goale in " $1
fi 
