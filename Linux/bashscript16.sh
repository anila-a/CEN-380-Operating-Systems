#!/bin/bash

if [ $# -ne 1 ]; then
	echo "This script required exactly one command line argument!"
	exit
fi

echo "The list of all odd numbers up to $1: "

while [ $i -le $1 ]; do
	echo "$i"
	let "i=$i+2"
done