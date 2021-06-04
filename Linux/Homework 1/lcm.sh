#!/bin/bash
# Prepara a shell script (in Bash) that receives two command line arguments 
# which are natural numbers and prints as a result their least common multiplier.

if [ $1 -ge $2 ]; then # Find max between command line args
	max=$1
else
	max=$2
fi

while true
do
	# Calculate remainders
	rem1=$((max%$1))
	rem2=$((max%$2))
	if [ "$rem1" -eq 0 -a "$rem2" -eq 0 ]; then # If max is perfectly divisible by both arguments
		echo "LCM of $1 and $2 is $max."
		break
	fi
	((max=max+1)) # Increment max
done
