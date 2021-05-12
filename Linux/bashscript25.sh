#!/bin/bash
# Print suffixes

str="ABCDEFG"

for i in $(seq 1 $(( ${#str})) ); do
	echo ${str:${#str}-i}
done