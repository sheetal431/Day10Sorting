#!/bin/bash -x

#awk  "BEGIN { print $num/$num2 }"


read -p "Enter the 3 inputs\n: " num1
read  num2
read  num3
#addMultiply= $( echo "result of a+b*c="  $(($num1 + $num2 * $num3)) )
#addMultiply= $(($num1+$num2*$num3))
addMultiply= awk "BEGIN{ print $($(($num1+$num2*$num3))"
echo $addMultiply

#mADD= $( echo "result of a*b+c="  $(($num1 * $num2 + $num3)) )
mADD= $(($num1*$num2+$num3 ))
echo $mADD


multiply= awk  "BEGIN{ print $(($num3+$num1))/$num2 }"
echo $multiply

mod= awk "BEGIN { print $(($num1%$num2))+$num3 }"
echo $mod

declare -A compute

compute["useCase2"]= "$addmultiply"
compute["useCase3"]= "$mADD"
compute["useCase4"]= "$multiply"
compute["useCase5"]= "$mod"

echo usecase ALL:=  ${compute[@]}
echo 'usecase ALL values:=' ${!compute[@]}
