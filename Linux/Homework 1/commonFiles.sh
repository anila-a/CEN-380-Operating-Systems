#!/bin/bash
# Prepare a shell script (in BASH) named commonFiles.sh that receives two or three
# command line arguments: the first and second argument are the names of two 
# subdirectories and the third command line argument (which is optional) is the 
# extension (like pdf, txt, py etc.). If the script is executed with two command 
# line arguments, then it will provide a list of all files which exist in both 
# directories (i.e. having the same name, the contents may not be the same). If
# the script is executed with three command line arguments, then it will provide a 
# list of all files of the given extension which exist in both directories (i.e. 
# having the same name, the contents may not be the same).

if [[ ! -d $1 ]] # Check if the subdirectory exists
then
	echo "$1 directory does not exist."
elif [[ ! -d $2 ]] # Check if the subdirectory exists
then
	echo "$2 directory does not exist."
else
	DIR1=$(ls $1) # Store files of the subdirectory in DIR1 array
	DIR2=$(ls $2) # Store files of the subdirectory in DIR2 array

	if [[ $# -lt 2 ]] # Check if there are no less than 2 command line arguments
	then
		echo "Incorrect command - Please enter two directory names (required) and one file extension (optional)."
	else
		if [[ $# -eq 3 ]] # If given 3 arguments, find common files of specified extension
		then
			echo "THE LIST OF COMMON FILES (of $3 extension):"
			for file1 in $DIR1 
			do
		    		for file2 in $DIR2 
		    		do
			    		if [[ $file1 == $file2 ]] # If filenames are same
					then
						if [[ $file1 == *."$3" ]] # If it is a file of the required type
						then
				    			echo "$file1"
				    	fi
				    fi
				done
			done

		else
			echo "THE LIST OF COMMON FILES:"
			for file1 in $DIR1 
			do
			    for file2 in $DIR2 
			    do
			    	if [[ $file1 == $file2 ]]
					then
			    		echo "$file1"
			    	fi
			    done
			done
		fi
	fi
fi