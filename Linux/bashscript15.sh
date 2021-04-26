#!/bin/bash

read -p "Enter a positive integer to evaluate its factorial: " num

let factorial=1
let i=1

while [ $i -le $num ]; do
	let "factorial=$factorial*$i"
	let "i=$i+1"
done

echo "The factorial of the number $num is $factorial."