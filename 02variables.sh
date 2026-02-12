#!/bin/bash

# Simple variable

name="Aman"
city="Bareilly"

echo "Name: $name"
echo "City: $city"

##############################
# USER INPUT VARIABLE
##############################

echo "Enter your college:"
read college

echo "College: $college"

##############################

# COMMAND OUTPUT VARIABLES

##############################

# Store command output

user=$(whoami)

current_dir=$(pwd)
today_date=$(date)

echo "User: $user"
echo "Current Directory: $current_dir"
echo "Today's Date: $today_date"


#################################

# NUMERIC VARIABLES

#################################

num1=10
num2=20

sum=$((num1+num2))

echo "SUM: $sum"

#################################

# ENVIROMENT VARIABLES

#################################

echo "USER: $USER"
echo "Home: $HOME"
echo "Shell: $SHELL"

