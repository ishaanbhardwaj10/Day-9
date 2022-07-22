#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHrs()
{
	case $randomCheck in
				$isPartTime )
						empHrs=4
				;;
				$isFullTime )
						empHrs=8
				;;
				*)
						empHrs=0
				;;
	esac
}

function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))		#if you put counter at bottom, it will initialize from 0 and a day zero would be created. so avoid it
	randomCheck=$((RANDOM%3))
	getWorkHrs $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))


done

totalSalary=$( getEmpWage $totalEmpHr )
echo ${dailyWages[@]}			#daily wages
echo ${!dailyWages[@]}			#extract the days
echo ${#dailyWages[@]}			#total number of days count
