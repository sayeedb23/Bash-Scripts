#!/bin/bash

disk=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo 'Monitoring the disk usage....'

if [ $disk -gt 80 ]; then
    echo "Warning: Disk usage is above 80%!" | mail -s 'Disk Usage Report' mohdfaisal1477@gmail.com
else
    echo "Disk usage is normal."
    echo "Disk Usage: $disk%"
fi
