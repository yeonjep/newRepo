#!/bin/bash

mkdir -p temp
echo "...create temp directory..."

cp -p num1.txt temp/num1.txt
cp -p num2.txt temp/num2.txt

cp -p cal.sh temp/cal.sh

echo "...copy files to temp directory..."

PS3='select menu : '

select val in "add" "sub" "div" "mul" 
do

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
	echo "...$val selected..."
	echo "...run calculater..."

	./cal.sh $tmp
	break
done
