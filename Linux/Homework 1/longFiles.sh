#!/bin/bash
# Prepare a shell script (in BASH) named longFiles.sh that receives one command 
# line argument that is a positive integer N. Then it prints as output the list of 
# all .txt files in the current directory which have at least N words.

for file in *; do # For each file in the directory
	if [[ $file == *.txt ]] # If it is a text file
	then
		val=$(wc -w <"$file") # Store number of words in val variable
		if [ $val -ge $1 ] # If the number of words is greater than the argument value
		then
			echo "$file"
		fi
	fi
done	