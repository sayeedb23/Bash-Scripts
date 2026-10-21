#!/bin/bash

echo
echo 'Checking the Package'
echo 
if systemctl status nginx | grep -q 'active (running)'; then 
	echo 'Package is already running and active'
else 
	echo 'Package is inactive'
	echo
	echo 'starting the Package'
	sudo systemctl start nginx
	echo
	if systemctl status nginx | grep -q 'active (running)'; then
		echo 'Package started successfully'
	else
		echo 'Error in Starting the package'
	fi
fi
