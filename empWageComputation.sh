#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Computation ------------------------"

#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
isFullTime=1
isPartTime=2
randomCheck=$((RANDOM%3))
#IF EMP IS PRESENT FULL TIME  OR PART TIME OR ABSENT, DAILY WAGE IS CALCULATED FOR ALL THESE SCENARIOS
if [ $randomCheck == $isFullTime ]
then    perhourrate=20
        emphrs=8
        salary=$(($perhourrate*$emphrs))
elif [ $randomCheck == $isPartTime  ]
then    perhourrate=20
        emphrs=8
        salary=$(($perhourrate*$emphrs))
else
        salary=0
fi
echo "your one day salary is" $salary

