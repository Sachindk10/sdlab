#!/bin/bash 
read -p "Enter limit for prime series " lmt
i = 2
while [ $i -le $lmt]
do
	k = 2
	flag = 1
	temp = `expr $i/2`
	while [$k -le $temp]
	do
		rem = `expr $i % $k`
		if [$rem -eq 0]
		then
			flag = 0
			break
		fi
		k = `expr $k + 1`
	done
	if [$flag -e 1]
	then
		echo $i
	fi
	i = `expr $i+1`
done