#!/bin/bash

if [ $# -lt 1 ]; then
	echo "This script requires at least one parameter: "
	exit
fi

while [ $# -gt 0 ]; do
	newDirectory=$1
	echo "Creating the new directory named $newDirectory"
	mkdir $newDirectory
	shift
done