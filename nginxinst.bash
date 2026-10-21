#!/bin/bash

echo
echo 'Updating Packages'
sudo yum update
echo 
echo  'Checking Package Info'
echo 

if rpm -q nginx;then
	echo 'Package is already installed'
else
	echo 'Installing the Nginx Package'
	sudo yum install nginx -y
	echo 
	echo 'Installed the Nginx package'
fi
