#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Computation ------------------------"

#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
isFullTime=1
isPartTime=2
randomCheck=$((RANDOM%3))
#EMPLOYEE ATTENDANCE IS CHECKED
#IF EMP IS PRESENT FULL TIME  OR PART TIME OR ABSENT, DAILY WAGE IS CALCULATED FOR ALL THESE SCENARIOS
if [ $randomCheck == $isFullTime ]
then    perhourrate=20
        emphrs=8
	echo "Employee is Present"
        salary=$(($perhourrate*$emphrs))
elif [ $randomCheck == $isPartTime  ]
then    perhourrate=20
        emphrs=6
	echo "Employee is Present for Part Time"
        salary=$(($perhourrate*$emphrs))
else
	echo "Employee is Absent"
        salary=0
fi
echo "your one day salary is" $salary

