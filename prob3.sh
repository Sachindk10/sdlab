#!/bin/bash  
read -p "enter number :" n 
rev = 0
temp = $n
while [ $temp -ne 0 ]
do
	rev = `expr $rev \* 10 + $temp % 10`
	tmp = `expr $temp/10`
done
echo "reverse of the number" $rev
