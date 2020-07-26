#!/bin/bash

function validation(){ 
	input=$1
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
			read input
		fi
	done
	echo $input
}

echo "Enter FirstName start with capital letter and has minimum 3 characters"
read fisrtName
pattern="^[A-Z]{1}[a-z]{2}" 
validation $firstName $pattern

echo "Enter LastName start with capital letter and has minimun 3 characters"
read lastname
validation $lastName $pattern
