#!/bin/bash

echo -n "Enter a positive integer: " read num

let sum=0
let i=1

while [ $i -le $num ]; do
	echo "$i is added to the sum."
	let "sum=$sum+$i"
	let "i=$i+1"
done

echo "The final value of the sum is: $sum."