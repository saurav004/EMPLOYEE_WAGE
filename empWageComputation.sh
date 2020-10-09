#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Computation ------------------------"

# VARIABLE PRESENT IS CREATED AND SET VALUE = 1
isPresent=1

#GENERATING RANDOM VALUE TO GET ATTENDANCE
randomNumber=$((RANDOM%2))

#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
empWagePerHour=20
dailyEmpHrs=8
#FUNCTION TO CALCULATE EMPLOYEE ONE DAY WAGE
function calculateDailyEmployeeWage(){
	calculateEmployeeWage=$(($empWagePerHour*$dailyEmpHrs))
	echo "Employee's one day wage is equal to" $calculateEmployeeWage "rupees"
}
#FUNCTION CALL
calculateDailyEmployeeWage
