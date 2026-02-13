#!/bin/bash

# print 1 to 5

for i in 1 2 3 4 5
do
	echo "Number: $i"
done

# range loop example

for i in {1..10}
do
	echo $i
done

# It will print current folder's files
# Important for devops

for file in * 
do 
	echo "Files: $file"
done 

# While loop

count=1

while [ $count -le 5 ]
do 
	echo "Count: $count"
	((count++))
done

# Until loop

num=1

until [ $num -gt 5 ]
do
	echo $num
	((num++))
done

# Loop control statements

for i in {1..10}
do
	if [ $i -eq 5 ]
	then
		break
	fi
	echo $i
done

# continue
for i in {1..5}
do
	if [ $i -eq 3 ]
	then
		continue
	fi
	echo $i

done

# Practice  Task 

# print 1 to 20 

for i in {1..20}
do
	echo "Print number: $i"
done

# Task 2 print all files of folder


for file in *
do 
	echo "Files: $file"
done


# countdown 
count=5

while [ $count -ge 1 ]
do 	
	echo $count
	((count--))
done

# 2 mathod

for ((i=5;i>=1;i--))
do
	echo $i
done

