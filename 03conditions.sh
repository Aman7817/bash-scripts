#!/bin/bash

# Number variable

num=10

# condition check
if [ $num -gt 5 ]
then
	echo "number greater than 5"
fi

###################

# IF-ELSE Example

echo "Enter your age:"
read age

# Age check

if [ $age -ge 18 ]
then
	echo "You are eligible to vote"
else 
	echo "You are undergae"
fi

####################

# IF_ELIF_ELSE  Multipile conditions

echo "enter your marks"
read marks

if [ $marks -ge 75 ]
then 
	echo "Distinction"
elif [ $marks -ge 50 ]
then 
	echo "Pass"
else 
	echo "Fail"

fi

###############################
# String comparision(important)
################################

echo "Enter your name:"
read name

if [ "$name" = "Aman" ]
then
	echo "Welcome Aman!"
else
	echo "Unknown user"
fi

###########################

# File check condition

############################

# check file existence

if [ -f "hello.sh" ]
then 
	echo "File exists"
else 
	echo "File not found"
fi

###########################


