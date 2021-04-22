#!/bin/bash
read -p "Enter a number between 1 and 30: " input
if [ "$input" -ge 1 -a "$input" -le 20]; then
	echo "Valid input."
else
	echo "Invalid input."
fi