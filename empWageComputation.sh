#!/bin/bash -x

echo "------------------------------------------------------- Welcome To Employee Wage Computation ----------------------------------------------------------------"

#EMPLOYEE ATTENDANCE IS CHECKED

#IF EMP IS PRESENT FULL TIME  OR PART TIME OR ABSENT BASED ON THIS, MONTHLY WAGE IS CALCULATED .

#SWITCH_CASE IS USED

#WHILE LOOP IS USED

#FUNCTION IS USED

#EMPLOYEE SALARY IS CALCULATED UNTIL 100 HOURS OR 20 WORKING DAYS ARE COVERED

IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HOUR=20
NO_OF_WORKING_DAYS=20
MAX_HOURS_IN_MONTH=100

totalEmpHours=0
totalWorkingDays=0

#DICTIONARY IS USED

declare -A dailyWage
function getWorkingHours(){
	case $1 in 
		$IS_FULL_TIME )
			empHrs=8
			;;
		$IS_PART_TIME )
			empHrs=4
			;;
		* )
			empHrs=0
			;;
	esac
	echo $empHrs
}

function getEmpWage(){
	empHours=$1
	echo $(($empHours*$EMP_RATE_PER_HOUR))
}

while [[ $totalEmpHours -lt $MAX_HOURS_IN_MONTH &&  $totalWorkingDays -lt $NO_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empHours=$( getWorkingHours $((RANDOM%3)) )
	totalEmpHours=$(($totalEmpHours+$empHours))
	dailyWage[$totalWorkingDays]=$( getEmpWage $empHours )
done

totalSalary=$(($totalEmpHours*$EMP_RATE_PER_HOUR));
echo "Employee Daily Wages : " ${dailyWage[@]}
echo "Employee Working Days : " ${!dailyWage[@]}

echo "Total Monthly salary is $totalSalary"
