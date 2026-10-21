#!/bin/bash

echo 'Enter the folder for backup: '
echo
read dir
echo

tmp='/tmp/backup'

if [ -e $dir ];
then 
	echo 'Enter backup name: '
	echo 
	read back
	echo

	tar czvf $tmp/$back.tar.gz $dir
	echo 'Backup file is created!'
else
echo 'Directory Not found'
echo 
echo 'Program Aborted!'
fi

