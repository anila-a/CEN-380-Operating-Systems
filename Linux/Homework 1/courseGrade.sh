#!/bin/bash
# Given x exam scores of a student as command line arguments, calculate its 
# final course grade.

sum=0

for score in $@
do
	# Check if the score is valid
	if [ "$score" -gt 100 -o "$score" -lt 0 ];
	then
		echo "Invalid score."
		exit # Interrupt script execution
	fi
	# Add up all exam scores otherwise
	let sum="$sum+$score"
done

# Calculate the average
let avg=$(($sum/$#))

# Calculate final course grade
if [ "$avg" -le 100 -a "$avg" -ge 90 ];
then
	echo "Final grade: AA"
elif [ "$avg" -le 89 -a "$avg" -ge 80 ];
then
	echo "Final grade: BA"
elif [ "$avg" -le 79 -a "$avg" -ge 70 ];
then
	echo "Final grade: BB"
elif [ "$avg" -le 69 -a "$avg" -ge 60 ];
then
	echo "Final grade: CB"
elif [ "$avg" -le 59 -a "$avg" -ge 50 ];
then
	echo "Final grade: CC"
else
	echo "Failed. You should retake the course."
fi
