#!/bin/bash -x

echo "Welcome to Sorting-Arithmetic-Computation"

echo -e "Enter values of A B c and C : \c"
read a b c

declare -A Dictionary
Dictionary[operation1]=$((a+b*c))
Dictionary[operation2]=$((a*b+c))
Dictionary[operation3]=$(echo "scale=2; $c+$a/$b" | bc)
Dictionary[operation4]=$((a%b+c))
echo operation1 : ${Dictionary[operation1]}
echo operation2 : ${Dictionary[operation2]}
echo operation3 : ${Dictionary[operation3]}
echo operation4 : ${Dictionary[operation4]}


