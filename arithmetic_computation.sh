#!/bin/bash -x

echo "Welcome to Sorting-Arithmetic-Computation"

echo -e "Enter values of A B and C : \c"
read a b c
operation1=$((a+b*c))
operation2=$((a*b+c))
echo operation1 : $operation1
echo operation2 : $operation2

