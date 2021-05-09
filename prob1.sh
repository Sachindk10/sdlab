#!/bin/bash
read -p "Enter three number " n1 n2 n3
if [$n1 -gt $n2 -a $n1 -gt $n3]
then
    echo "$n1 is largest number"
elif [$n2 -gt $n1 -a $n2 -gt $n3]
then	
    echo "$n2 is largest number"
else	
    echo "$n3 is largest"
fi        
        