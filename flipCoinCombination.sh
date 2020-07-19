#!/bin/bash -x
declare -A singlet

headCount=0
tailCount=0
valid=true

for ((i=1; i<=20; i++))
do
	randomNum=$(($RANDOM%2))
	if [ $randomNum -eq 1 ]
	then
		echo "H"
		singlet[$i]="H"
		headCount=$(($headCount+1))

	elif [ $randomNum -eq 0 ]
	then
		echo "T"
		singlet[$i]="T"
		tailCount=$(($tailCount+1))

	else
		echo "Not processed"
	fi
done
headsPercentage=$(($headCount*100/20))
tailsPercentage=$(($tailCount*100/20))
echo "(Singlet) Heads Percentage: $headsPercentage%"
echo "(Singlet) Tails Percentage: $tailsPercentage%"
echo ${singlet[@]}
