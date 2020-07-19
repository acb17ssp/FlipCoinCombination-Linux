#!/bin/bash -x
headCount=0
tailsCount=0
valid=true

function flipCoin() {
	while [ valid ]
	do
		randomNum=$(($RANDOM%2))

		if [ $randomNum -eq 0 ]
		then
			echo "Heads"
			headCount=$(($headCount+1))
		else
			echo "Tails"
			tailsCount=$(($tailsCount+1))
		fi

		if [ $headCount -eq 21 ]
		then
			result=$(($headCount-$tailsCount))
			echo "Heads has won, with a difference of $result"
			break;

		elif [ $tailsCount -eq 21 ]
		then
		   result=$(($tailsCount-$headCount))
	      echo "Tails has won, with a difference of $result"
			break;

		elif [ $headCount -eq 21 ] && [ $tailsCount -eq 21 ]
		then
			echo "It is a tie"
			break;
		else
			echo "Result not processed"
		fi
	done
	echo "Heads: $headCount"
	echo "Tails: $tailsCount"
}

#calling the function
flipCoin
