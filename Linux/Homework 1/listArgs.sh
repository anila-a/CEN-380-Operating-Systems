#!/bin/bash
# Prepare a shell script (in BASH) named listArgs.sh that receives one or more 
# command line arguments that are expected to represent names of a file or 
# directories. Then the script should print as output the list of arguments that 
# are directories and the list of arguments that are files. Note: the arguments 
# which are neither files not folders will not appear in any of the lists.

for var in "$@" # For each argument
do 
	if [ -d $var ]; then # Is it a directory?
		arrDir+=("$var")
	elif [ -f $var ]; then # Is it a file?
		arrFile+=("$var")
	else
		continue
	fi
done

echo "THE LIST OF FILES:"
for val in "${arrFile[@]}"
do
	echo $val
done

echo "THE LIST OF DIRECTORIES:"
for val in "${arrDir[@]}"
do
	echo $val
done