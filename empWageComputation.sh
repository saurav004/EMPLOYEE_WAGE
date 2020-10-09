#!/bin/bash -x

echo "------------------------------------------------------- Welcome To Employee Wage Computation ----------------------------------------------------------------"

#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
isFullTime=1
isPartTime=2
perhourrate=20
noOfWorkingDays=20

#EMPLOYEE ATTENDANCE IS CHECKED


#IF EMP IS PRESENT FULL TIME  OR PART TIME OR ABSENT BASED ON THIS, MONTHLY WAGE IS CALCULATED .

#SWITCH_CASE IS USED


#FOR LOOP IS USED

for ((day=1;day<=$noOfWorkingDays;day++))
do
randomCheck=$((RANDOM%3))
case $randomCheck in
   $isFullTime )
   emphrs=8
   ;;
$isPartTime )
   emphrs=4
   ;;
* )
   continue
   ;;
esac
salary=$(($perhourrate*$emphrs))
totalSalary=$(($totalSalary+$salary))
done
echo "Employee's One Month salary is" $totalSalary

