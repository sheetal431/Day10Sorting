#!/bin/bash -x

read -p "Enter the 3 inputs\n: " num1
read  num2
read  num3

modAdd=`awk "BEGIN { print $num1 % $num2 + $num3}"`
echo $modAdd
