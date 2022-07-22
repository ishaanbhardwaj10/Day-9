#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2)) #output is either 0 or 1, randomly

#if [ $isPresent -eq $randomCheck ] #alternate syntax
if (( $isPresent == $randomCheck ))
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

