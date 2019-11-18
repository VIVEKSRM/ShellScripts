#!/bin/sh
echo "Multiplication table" #echo command ,just to print
echo "Enter a number"  #enter any number for which we will calculate the multiplication table
read n  # command to read in input
for((j=1;j<=10;j++))   #start of for loop 
do 
let output=$j*$n  # main calculation
echo " $j X $n = "$output
done
