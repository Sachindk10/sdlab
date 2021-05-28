#!/bin/bash
echo "Enter Your Elements : "
read elements
echo "Type the element you want to search:"
read search
found="Notfound"
for i in $elements
do
  if [ $search == $i ]
  then
    echo "Element is found"
    found="Found"
    break
  fi
done
if [ $found == "Notfound" ]
then
  echo "Not found"
fi