#!/bin/bash -x

read -p "Enter the 3 inputs\n: " num1
read  num2
read  num3

AddDiv=`awk "BEGIN { print $num3 + $num1 / $num2}"`
echo $AddDiv
