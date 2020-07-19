#!/bin/bash
declare -A singlet

# Heads=1, Tails=0

headCount=0
tailCount=0
valid=true

for ((i=1; i<=10; i++))
do
	randomNum=$(($RANDOM%2))
	if [ $randomNum -eq 1 ]
	then
		headCount=$(($headCount+1))

	elif [ $randomNum -eq 0 ]
	then
		tailCount=$(($tailCount+1))

	else
		echo "Not processed"
	fi
done
headsPercentage=$(($headCount*100/10))
tailsPercentage=$(($tailCount*100/10))
echo "(Singlet) Heads Percentage: $headsPercentage%"
echo "(Singlet) Tails Percentage: $tailsPercentage%"

singlet["H"]=$headsPercentage
singlet["T"]=$tailsPercentage


declare -A doublet
HH=0
HT=0
TH=0
TT=0
for ((i=1;i<=10;i++))
do
   randomNum1=$(( RANDOM%2 ))
	randomNum2=$(( RANDOM%2 ))
   combination=$randomNum1$randomNum2
   case $combination in
   11)
      HH=$(( $HH+1 ))
   ;;
   10)
      HT=$(( $HT+1 ))
   ;;
   01)
      TH=$(( $TH+1 ))
   ;;
   00)
      TT=$(( $TT+1 ))
   ;;
	esac
done

doublet["HH"]=$(( $HH*100/10 ))
doublet["HT"]=$(( $HT*100/10 ))
doublet["TH"]=$(( $TH*100/10 ))
doublet["TT"]=$(( $TT*100/10 ))


for key in ${!doublet[@]}
do
   echo "(Doublet) $key percentage: ${doublet[$key]}%"
done
