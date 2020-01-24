#!/bin/bash -x

echo "Welcome to Sorting-Arithmetic-Computation"

echo -e "Enter values of A B and C : \c"
read a b c
result=$((a+b*c))
echo Result is: $result
