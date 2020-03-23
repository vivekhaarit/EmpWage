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
isFullTime=1;
isPartTime=2;

totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
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
	salary=$(($empHrs*$empRatePerHr));
	totalSalary=$(($totalSalary+$salary));
done

echo "you'r wage for a month is: "$salary

