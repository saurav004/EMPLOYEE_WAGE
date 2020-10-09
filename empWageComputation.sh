#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Compution ------------------------"

#PRESENT IS SET VALUE 1
isPresent=1

#GENERATING RANDOM VALUE TO GET ATTENDANCE
randomNumber=$((RANDOM%2))

#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
