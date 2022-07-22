#!/bin/bash -x

isPartTime=1
isFullTime=2
randomCheck=$((RANDOM%3))
empRatePerHr=20
numOfWorkingDays=20

totalSalary=0

for ((day=1; day<=$numOfWorkingDays; day++))
do
	case $randomCheck in
				1 )
					empHrs=8
				;;
				2 )
					empHrs=4
				;;
				*)
					empHrs=0
				;;
	esac

	salary=$(($empHrs*$empRatePerHr))	#daily wage
	totalSalary=$(($totalSalary+$salary))	#full month salary
	echo $totalSalary

done
