#! /bin/bash

read -p "Enter size of the array : " n
for ((i=0; i<n; i++))
do
	echo -ne "Enter a[$i] : "
	read elem
	a[i]=$elem
done
echo "Your array : "
echo ${a[*]}

#function to sort the array
sort()
{
	for((i=0; i<n; i++))
	do
		for((j=0; j<n-i-1; j++))
		do
			if [ ${a[j]} -gt ${a[$((j+1))]} ]
			then
				temp=${a[j]}
				a[$j]=${a[$((j+1))]}
				a[$((j+1))]=$temp
			fi
		done
	done				
}
sort
echo "Sorted array is : "
echo ${a[*]}