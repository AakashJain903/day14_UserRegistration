#!/bin/bash -x
read -p "Enter the user first name : " firstName
pattern="^[A-Z]{1}[a-z]{2}"
if [[ $firstName =~ $pattern ]]
then
        echo "Valid First Name"
else
        echo "Invalid First Name"
fi
