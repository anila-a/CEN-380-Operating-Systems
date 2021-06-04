#!/bin/bash
# Assume that teaching assistant needs a shell script named submissionsReport.sh 
# which will be run in a working directory containing several subdirectories each 
# of them named by the ID of a student who has made a submission. Inside the 
# folder of each student there should be the solutions of the homework exercises 
# which have to be named precisely: hw1.c, hw2.c, hw3.c ... and so on. If the 
# script is run without providing any argument, the default number of exercises is 
# 5, otherwise the number of exercises is specified by the first (and only) 
# command line argument of the script. Then the script must print for each student 
# a message of the form: Student <id> has submitted <number> solutions: <list of 
# exercises which are submitted by the student>.

for d in */; do # For each subdirectory
	let cnt=0
	for file in $d*; do # For each file in the subdirectory
		if [[ -f $file ]]
		then
			arrSol+=("$file") # Append filename to the array
			let cnt="$cnt+1" # Count files
		fi
	done
	idLen=${#d} # Find the length of the student ID/subdirectory name
	id="${d:0:idlen-1}" # Remove slash symbol from student ID
	arrLen=${#arrSol[@]} # Find array length
	
	echo "Student $id has submitted $cnt solution(s): ${arrSol[@]:0:arrLen}"
	unset arrSol
done