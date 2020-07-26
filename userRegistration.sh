#!/bin/bash -x

function validation(){ 
	input=$1
	pattern=$2
	flag=0

	while [ $flag -eq 0 ]
	do
		if [[ $input =~ $pattern ]]
		then
			echo "It is Valid"
			flag=1
		else
			echo "It is not valid"
			read input
		fi
	done
	echo $input
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
pattern="^[a-zA-z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[0-9a-zA-Z]{1,}\.[a-zA-Z]{2,4}([.][a-zA-Z]{2,3}){0,1}$"
validation $email $pattern
