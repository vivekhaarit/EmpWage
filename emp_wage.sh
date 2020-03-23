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
isPartTime=1;

empRatePerHr=20;
empCheck=$((RANDOM%2));

if [ $empCheck -eq $isFullTime ]
then
	empHrs=8
	echo "you're full time"
else
	empHrs=0
	echo "you don't work"
fi

salary=$(($empHrs*$empRatePerHr));
echo "you'r daily wage is: "$salary

