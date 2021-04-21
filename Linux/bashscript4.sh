#!/bin/bash
RES1=`ls -1 *.c | tail -2`
# -1 indicates working in separate lines, -2 for last two files
echo "The last two C files are $RES1"
RES2=`ls -1 *.txt | tail -1`
echo "The last TXT file is $RES2"
