#!/bin/bash

# Greeting function

greet() {
   echo "hello Aman. Welcome to Bash scripting"

}

# Function call
greet

# Function with argument

greet() {
	echo "Hello $1"
}

greet Aman

info() {
     echo "Name: $1"
     echo "City: $2"
}

info Aman Bareilly

system_info() {
     echo "User: $(whoami)"
     echo "Date: $(date)"
     echo "Directory: $(pwd)"
}

system_info

backup() {
	echo "Backup started..."
}

backup
backup
backup

# return value concept basic

sum() {
	result=$(( $1 + $2))
	echo $result
}
sum 5 10




