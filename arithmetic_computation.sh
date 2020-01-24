#!/bin/bash -x

# welcome message
echo "Welcome to Sorting-Arithmetic-Computation"

# reading three inputs
echo -e "Enter values of A B c and C : \c"
read a b c

# declaring dictionary
declare -A Dictionary

# storing all operations into dictionary
Dictionary[operation1]=$((a+b*c))
Dictionary[operation2]=$((a*b+c))
Dictionary[operation3]=$(echo "scale=2; $c+$a/$b" | bc)
Dictionary[operation4]=$((a%b+c))

# reading dictionary into array
DictionaryToArray()
{
	for((i=0; i<4; i++))
	do
		arr[i]=${Dictionary[operation$((i+1))]}
	done
}

DictionaryToArray
# printing all operations in array 
echo  ${arr[@]}



