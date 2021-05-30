#!/bin/bash

operation=0
s=0
read -p "Enter size of the array : " n
for((i=0; i<n; i++))
do
	echo "Enter a[$i]:"
	read elem
	a[i]=$elem
done
while [ $operation -ne 4 ]
do
	echo "Chose your operation : "
	echo  -e "\n 1:Insertion \n 2:Deletion \n 3:Display \n 4:Exit"
	read  operation
	case $operation in
		1)
			read -p "Enter element to insert" m
			a+=($m)
			n=$n+1
			;;

			2)
			read -p "Enter element to delete : " m
			for((i=0; i<n; i++))
			do
				if [[ ${a[i]} = $m ]]
				then
					unset a[i]
					s=1
				fi	
			done	
		    if [ $s -eq 1 ]
			then
				echo "Element $m is deleted"
				s=0
			else
				echo "$m not found"
			fi
			;;

			3)
			echo "Arrray :"
			for i in ${a[@]}
			do
				echo $i
			done
			;;

		*)
		echo -n "Wrong!"	
		;;
	esac					
done

