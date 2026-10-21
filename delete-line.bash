#!/bin/bash

echo "Enter the file name:"
read filename

if [ -f $filename ]; then
    sed -i '$d' $filename
    sed -i '$d' $filename
    sed -i '$d' $filename
    echo "Last 3 lines deleted successfully."
else
    echo "File does not exist."
fi
