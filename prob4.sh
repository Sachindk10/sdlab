#!/bin/bash
read  -p "Enter the limit for fibonacci "lmt
t1 = 0
t2 = 1
i = 3
echo -e "\n\t $t1 \n\t $t2"
while [ $i -le $lmt ]
do
	t3 = `expr $a + $b`
	echo -e "\t $t3"
	t1 = $t2
	t2 = $t3
	i = `expr $i+1`
done