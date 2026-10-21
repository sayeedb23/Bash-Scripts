#!/bin/bash

echo 'Enter the directory path'

read dir

if [ -e $dir ];
	then 
	echo 'Directory exists'
else
	echo "Directory doesn't exist"
fi
