#!/bin/bash
# Write a shell script which takes as input the name and surname
# of a person and creates an institutional email address and a temporary
# password.

read -p "Your name: " name
read -p "Your surname: " surname

domain="@epoka.edu.al"

# Email address
if [ ${#surname} -gt 9 ]; then
	email=${name:0:1}${surname:0:9}${domain}
else
	email=${name:0:1}${surname}${domain}
fi

echo "Your institutional email address is ${email,,}"

# Password
str1=${name:${#name}-3}
str2=${surname:${#surname}-3}
pass=${str1^^}"#"${str2,,}

echo "Your temporary password is: $pass"