#!/bin/bash
# Write a shell script which takes as input the name and surname
# of a person and creates an institutional email address.

read -p "Your name: " name
read -p "Your surname: " surname
read -p "Starting year of your studies: " year

domain="@epoka.edu.al"
email=${name:0:1}${surname}${year:2:2}${domain}

echo "Your institutional email address is ${email,,}"