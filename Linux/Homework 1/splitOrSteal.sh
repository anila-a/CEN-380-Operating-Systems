#!/bin/bash
# Prepare a shell script (in BASH) named splitorsteal.sh which receives as input
# argument the jackpot amount. Then the choices of the two contestants are read, 
# and finally the amount of money won by each contestant.
# No input validation is required, assume that the input will be regular.

read -p "Enter the choice of the first contestant: " ch1
read -p "Enter the choice of the second contestant: " ch2

if [ "$ch1" == "Split" -a "$ch2" == "Split" ]; then
	res1=$(($1/2))
	res2=$res1
elif [ "$ch1" == "Split" -a "$ch2" == "Steal" ]; then
	res1=0
	res2=$1
elif [ "$ch1" == "Steal" -a "$ch2" == "Split" ]; then
	res1=$1
	res2=0
else
	res1=0
	res2=0
fi

echo "The first contestant won $res1 and the second contestant won $res2."