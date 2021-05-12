#!/bin/bash
# Print prefixes

str="ABCDEFG"

for i in $(seq 1 $(( ${#str})) ); do
	echo ${str:0:i}
done