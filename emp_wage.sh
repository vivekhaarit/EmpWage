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

empRatePerHr=20;
empCheck=$((RANDOM%3));

case $empCheck in
	$isFullTime)
		empHrs=12
		echo "you're full time"
		;;
	$isPartTime)
		empHrs=8
		echo "you're part time"
		;;
	*)
		empHrs=0
		echo "you don't work"
		;;
esac

salary=$(($empHrs*$empRatePerHr));
echo "you'r daily wage is: "$salary

