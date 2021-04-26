#!/bin/bash

if [ $# -ne 1 ]; then
	echo "This script requires exactly one command line argument."
	exit
fi

let i=1

echo "The list of all odd numbers up to $1 (except 3 and 11) : "

while [ $i -le $1 ]; do
	if [ $i -eq 3 -o $i -eq 11 ]; then
		let "i=$i+2"
		continue
	fi
	
	echo "$i"
	let "i=$i+2"
done