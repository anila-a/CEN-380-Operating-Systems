#!/bin/bash
# Write a script that creates directories named hw1, hw2... 
# up to a max passed as command-line argument.
# Copy criteria.txt into each assignment i as criteria(i*2).txt
# Copy script.sh into each, and run it.

for nr in `seq $1`; do
	let CNR="2 * $nr"
	mkdir "hw$num"
	cp script.sh "hw$nr/"
	cp criteria.txt "hw$nr/criteria$Cnr.txt"
	echo "Created hw$num"
	cd "hw$nr"
	bash ./script.sh
	cd ..
done