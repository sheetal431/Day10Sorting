#!/bin/bash -x

echo "Enter the 3 inputs\n: "
read num1
read num2
read num3

let "addMultiply=$((num1 + $(( num2 * num3))))"
echo $addMultiply

let "MulAdd=$(($((num1 * num2)) + num3))"
echo $MulAdd

AddDiv=`awk "BEGIN { print $num3 + $num1 / $num2}"`
echo $AddDiv

modAdd=`awk "BEGIN { print $num1 % $num2 + $num3}"`
echo $modAdd

declare -A compute

compute[addM]="$addMultiply"
compute[mAdd]="$MulAdd"
compute[aDiv]="$AddDiv"
compute[modA]="$modAdd"

echo ${compute[@]}
echo ${!compute[@]}
echo ${#compute[@]}


counter=0;

array[((counter++))]="$addMultiply"
array[((counter++))]="$MulAdd"
array[((counter++))]="$AddDiv"
array[((counter++))]="$modAdd"

#echo ${array[@]}| sort -n
#IFS=$'\n' sorted=($(sort <<<"${array[*]}")); unset IFS
#printf "[%s]\n" "${sorted[@]}"
#readarray -t sorted < <(for a in "${array[@]}" ; do echo "$a"; done | sort )
