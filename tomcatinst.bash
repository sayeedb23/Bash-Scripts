#!/bin/bash

echo
echo 'Updating Packages'
sudo yum update
echo 
echo  'Checking Package Info'
echo 

if rpm -q tomcat10;then
	echo 'Package is already installed'
else
	echo 'Installing the Apache Tomcat Package'
	sudo yum install tomcat10 -y
	echo 
	echo 'Installed the Apache Tomcat package'
fi
