#!/bin/bash

echo 'Enter the path '
echo 
read dir
echo

if [ -e "$dir" ];
then
	cd $dir
	echo 'Enter the number of file you want to create..'
	read n
	for (( i=1; i<=n; i++ ))
	do 
		echo "Enter $i file name with extension: "
		read name
		if [ -e "$name" ];
		then 
			echo "$name :file already exists"
		else
			touch $name
			echo "$name file has been created in $dir"
		fi
	done
else
	echo 'Directory does not exist'

fi
