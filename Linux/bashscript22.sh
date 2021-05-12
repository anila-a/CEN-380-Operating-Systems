#!/bin/bash
# Print suffixes

str="ABCDEFG"

for i in $(seq 0 $(( ${#str} -1 )) ); do
	echo ${str:${i}}
done