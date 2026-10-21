#!/bin/bash

echo 'Enter the Directory: '
read dir

echo
echo 'Checking for Directory...'
echo

if [ -d $dir ]; then
        echo 'Directory Exists'
else
        echo 'There is no such Directory'
        echo 
        echo 'Creating the directory'
        mkdir $dir
        echo 'Directory is succesfully created'
fi
