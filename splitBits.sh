#!/bin/bash

#check if file exists
if [ -z "$1" ]; then
	echo "Usage: $0 <file>"
	exit 1
fi

#read and process bits
bits=$(cat "$1" | tr -d ' \n')
length=${#bits}

#iteration
for (( i=0; i<$length; i+=8 )); do
	byte=${bits:$i:8}
	printf "%s " "$byte"
done


echo ""
