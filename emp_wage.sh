#!/bin/bash -x

echo "*******welcome to employee wage computation program********"

#checking if the employee is present or not.
isPresent=$((RANDOM%2));
echo "checking if emp is present or not"

if [ $isPresent -eq 1 ];
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi


#calculating daily employee wage
MAX_HRS_IN_MONTH=240;
NUM_WORKING_DAYS=20;
EMP_RATE_PER_HR=20;

isFullTime=1;
isPartTime=2;


totalSalary=0;
totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours() {
	case $1 in
	#case $empCheck in
		$isFullTime)
			empHrs=12
			echo "worked full time"
			;;
		$isPartTime)
			empHrs=8
			echo "worked part time"
			;;
		*)
			empHrs=0
			echo "didn't work"
			;;
	esac
}

function calcDailyWage() {
	local workHrs $1
	wage=$(($workHrs*$EMP_RATE_PER_HR))
	echo $wage
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
	$totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empHours="$( getworkingHours $((RANDOMX%3)) )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHours )"
done

totalSalary="$( calcDailyWage StotalWorkHours )"
echo "Daily Wage " ${empDailyWage[@]}

