#!/bin/bash

echo 'Monitoring the Cpu Utlization....'
echo
cpu_num=`top -bn1 | grep 'Cpu(s)' | awk -F ',' '{print $4}' | awk '{print 100-$1}'`
cpu=${cpu_num%.*}

if [ $cpu -gt 80 ]; then 
	echo "Cpu utilization is currently at $cpu" | mail -s 'Cpu utilization Report' mohdfaisal1477@gmail.com
	echo 'Email has been sent'
else
	echo "Cpu utilization is currently at $cpu"
fi
