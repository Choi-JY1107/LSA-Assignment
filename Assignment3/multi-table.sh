#!/bin/sh
validInput() {
	if [ $# -ne 2 ]
	then
		echo "Invalid input"
		exit 0
	fi
}
validInt() {
	if [ $1 -le 0 -o $2 -le 0 ]
	then
		echo "Input must be greater than 0"
		exit 0
	fi
}

row=$1
col=$2

validInput $row $col
validInt $row $col

for i in $(seq 1 $row)
do
	for j in $(seq 1 $col)
	do
		printf "%d*%d=%-5d" $i $j "$(expr $i \* $j)"
	done
	printf "\n"
done
exit 0
