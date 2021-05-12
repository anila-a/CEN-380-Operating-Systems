#!/bin/bash
# Print name and surname in the format: Name SURNAME

read -p "Your name: " name
read -p "Your surname: " surname
# In the input is in uppercase letters, transform it into lowercase letters first
name2=${name,,}
echo "Hello ${name^} ${surname^^}!"