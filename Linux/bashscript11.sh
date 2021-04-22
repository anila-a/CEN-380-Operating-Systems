#!/bin/bash
read -p "Enter a number between 1 and 10 and evaluate its square: " num
if [ "$num" -le 10 ];
then
	if [ "$num" -ge 1 ];
	then
		echo "The square of $num is $(($num*$num))"
	else
		echo "Input is not in the given range, it is smaller than 1."
	fi
else
	echo "Input is not in the given range, it is greater than 10."
fi