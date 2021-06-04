#!/bin/bash
# Prepare a shell script that receives one command line argument 
# that is the name of a file or directory (in the working directory). 
# Then the script should print as output whether the given argument 
# represents a directory, or regular file or such an entity does not exist. 
# Furthermore, if it exists, then should print whether the user has read, 
# write and execute permission on the file or directory.

if [ -d $1 -o -f $1 ]; then # Check whether this file/dir exists
	# If so, check for the permission that it holds
	if [ -r $1 ]; then
		per="read"
	elif [ -w $1 ]; then
		per="write"
	else
		per="execute"
	fi
	echo "$1 exists and has $per permission."
else
	echo "$1 does not exist."
fi