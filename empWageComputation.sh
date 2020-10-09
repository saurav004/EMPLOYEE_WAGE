#!/bin/bash -x

echo "------------------------------------------------------- Welcome To Employee Wage Computation ----------------------------------------------------------------"

#TO CHECK THE EMPLOYEE IS PRESENT OR ABSENT
isFullTime=1
isPartTime=2
#RANDOM VALUE GENERATED
randomCheck=$((RANDOM%3))
perhourrate=20

#EMPLOYEE ATTENDANCE IS CHECKED


#IF EMP IS PRESENT FULL TIME  OR PART TIME OR ABSENT, DAILY WAGE IS CALCULATED FOR ALL THESE SCENARIOS

#SWITCH_CASE IS USED
case $randomCheck in
$isFullTime )
	echo "Employee is present Full Time "
		emphrs=8
		salary=$(($perhourrate*$emphrs))
		;;
$isPartTime )
	echo "Employee is present Part Time"
		emphrs=4
		salary=$(($perhourrate*$emphrs))
      ;;
* )
	echo "Employee is absent"
		salary=0
      ;;
esac
echo "Employee's one day salary is" $salary

