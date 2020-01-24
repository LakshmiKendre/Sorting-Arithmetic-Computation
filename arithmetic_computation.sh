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

sorting()
{
	len=${#arr[@]}
	sign=$1	

	for((i=0;i<len;i++))
	do
		for((j=i+1;j<len;j++))
		do
			if (( ${arr[i]%.*} $sign ${arr[j]%.*} ))
			then
				temp=${arr[j]}
				arr[j]=${arr[i]}
				arr[i]=$temp
			fi
		done
	done
}
DictionaryToArray

# printing array element before sorting
echo before Sorting
echo  ${arr[@]}

sorting '<'
# printing array element after sorting
echo After sorting in Descending order
echo  ${arr[@]}

sorting '>'
# printing array element after sorting
echo After sorting in Ascending order
echo  ${arr[@]}

