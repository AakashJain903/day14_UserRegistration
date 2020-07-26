#!/bin/bash

function validation(){ 
	name=$1
	pattern=$2
	flag=0

	while [ $flag -eq 0 ]
	do
		if [[ $name =~ $pattern ]]
		then
			echo "It is Valid"
			flag=1
		else
			echo "It is not valid"
			read name
		fi
	done
	echo $name
}


echo "Enter FirstName start with capital letter and has minimum 3 characters"
read firstName
pattern="^[A-Z]{1}[a-z]{2}" 
validation $firstName $pattern

echo "Enter LastName start with capital letter and has minimun 3 characters"
read lastName
validation $lastName $pattern

echo "Enter Email Address...."
read email
<<<<<<< HEAD
pattern="^[a-zA-z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[0-9a-zA-Z]{1,}\.[a-zA-Z]{2,4}([.][a-zA-Z]{2}){0,1}$"
=======
pattern="^[a-zA-z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[0-9a-zA-Z]{1,}\.[a-zA-Z]{2,4}([.][a-zA-Z]{2,3}){0,1}"
>>>>>>> UserMobileFormatUC-4
if [[ $email =~ $pattern ]]
then
	echo "Email address is valid"
else
	echo "Email address is invalid"
fi

echo "Enter a valid Mobile Number....."
read mobile
pattern="^[0-9]{2}[ ]{1}[0-9]{10}$"
if [[ "$mobile" =~ $pattern ]]
then
	echo "Mobile number is valid"
else
	echo "Mobile number is invalid"
fi
