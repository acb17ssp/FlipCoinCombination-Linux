#!/bin/bash -x
read -p "Enter first input: " a
read -p "Enter second input: " b
read -p "Enter third input: " c

arithematicOp1=$(($a+$b*$c))
arithematicOp2=$(($a*$b+$c))
arithematicOp3=$(($c+$a/$b))
arithematicOp4=$(($a%$b+$c))

declare -A results

results[operation1]="$arithematicOp1"
results[operation2]="$arithematicOp2"
results[operation3]="$arithematicOp3"
results[operation4]="$arithematicOp4"
echo "${results[@]}"

counter=0
arr[((counter++))]="$arithematicOp1"
arr[((counter++))]="$arithematicOp2"
arr[((counter++))]="$arithematicOp3"
arr[((counter++))]="$arithematicOp4"
echo ${arr[@]}

for i in ${arr[@]}
do
	echo "Descending order: $i"
done | sort -nr


for i in ${arr[@]}
do
   echo "Ascending order: $i"
done | sort -n

