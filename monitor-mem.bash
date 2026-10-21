#!/bin/bash

mem=`free | awk '/Mem:/ {printf "%.0f", ($3/$2)*100}'`

echo "Monitoring The memory usage...."

if [ $mem -gt 80 ]; then
    free -h | mail -s "Memory Usage Report" mohdfaisal@gmail.com
    echo "Memory usage exceeded 80%. Report email attempted."
else
    echo "Memory usage is normal."
    echo "Memory utilization: $mem%"
fi

