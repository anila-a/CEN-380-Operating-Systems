#!/bin/bash
# Prepare a shell script (in BASH) named copyLimited.sh that receives two command
# line arguments: a name of a subdirectory and a positive integer N. Firstly it 
# will check if the current subdirectory doesn’t exist, and in such case it will 
# be created. Then it will make a copy (with the same name) for each .txt file of
# the current directory into the specified subdirectory but if .txt file 
# contains more than N rows, then the copy will contain only the first N rows of 
# the original file.

# Note: to give permissions to the subdirectory, run the command:
# chmod -R o+rwx <dirName>

if [ ! -d "$1" ] # Check if directory exists
then
	mkdir ./$1 
fi

for file in *; do # For each file in the directory
	if [[ $file == *.txt ]] # If it is a text file
	then	
		cp $file /$1 # Copy this file in the subdirectory
		head -n $2 $file >> "$1/$file" # Contents should include first N lines
	fi
done	
