#!/bin/bash

# String concatenation
str1="Hello"
str2="everyone!"
str3=${str1}" to "${str2}
echo "The message is: $str3"

# String manipulation
s1="CEN308OperatingSystems"
s2=${s1:0:6}
echo "The first four characters of the given string are: $s2"
s3=${s1:6}
echo "Extract characters from position 6 till the end: $s3"
s4=${s1:${#s1}-3}
echo "The last three characters of the string: $s4"