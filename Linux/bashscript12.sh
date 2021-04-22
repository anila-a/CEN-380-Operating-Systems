#!/bin/bash
read -p "Enter your exam score: " score
if [ "$score" -ge 85 ];
then
	echo "Your grade is A."
elif [ "$score" -ge 70 ];
then
	echo "Your grade is B."
elif [ "$score" -ge 60 ];
then
	echo "Your grade is C."
else
	echo "Your grade is D."
fi