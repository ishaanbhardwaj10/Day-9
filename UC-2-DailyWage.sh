#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	empHrs=8	#total working hours
	empRatePerHr=20 #employeeRatePerHour/capacityOfTheEmployee
	salary=$(($empHrs*$empRatePerHr))
	echo $salary
else
	salary=0
	echo $salary
fi
