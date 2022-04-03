#!/bin/bash

declare -a arr

while read line; do
	arr[0]=$line
done < num1.txt

while read line; do
	arr[1]=$line
done<num2.txt




if [[ -z "$1" ]]
then
	echo "...none operator parameter..."

	PS3="select menu : "	
	select val in "add" "sub" "div" "mul"
	do
		break
	done

if [ "$val" == "add" ]
then
	tmp=1
fi
if [ "$val" == "sub" ]
then
	tmp=2
fi
if [ "$val" == "div" ]
then
	tmp=3
fi
if [ "$val" == "mul" ]
then
	tmp=4
fi
val2=$tmp

else
	val2=$1
	if [ "$1" = "1" ]
       	then
		val=add
	fi
	if [ "$1" = "2" ]
       	then
		val=sub
	fi
	if [ "$1" = "3" ]
       	then
		val=div
	fi
	if [ "$1" = "4" ]
       	then
		val=mul
	fi

fi

if [ "$val2" = "1" ]
 then
	output=$(($arr[0] + $arr[1]))

fi
if [ "$val2" = "2" ]
 then
	output=$(($arr[0] - $arr[1]))

fi

if [ "$val2" = "3" ]
 then
	output=$(($arr[0] / $arr[1]))
fi

if [ "$val2" = "4" ]
then
	output=$(($arr[0] * $arr[1]))
fi

echo
echo "num1 : $arr[0]"
echo "num2 : $arr[1]"
echo "op : $val"
echo "output : $output"

exit 0
