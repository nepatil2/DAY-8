#!/bin/bash -x

#Roll a die and find the number between 1 to 6
number=$((RANDOM%6+1))


#Repeat die Roll
read -p "Enter Number to repeat die roll:" num

for (( i=0; i<$num; i++ ))
do
	number[i]=$((RANDOM%6+1)) 
done
echo ${number[@]}


#result in Dictionary
echo ${!number[@]}


#any one number reached 10 times 
n1=1;
n2=1;
n3=1;
n4=1;
n5=1;
n6=1;

while [[ $n1 -lt 10 && $n2 -lt 10 && $n3 -lt 10 && $n4 -lt 10 && $n5 -lt 10 && $n6 -lt 10  ]]
do
	number=$((RANDOM%6+1))
	if   [ $number -eq 1 ]
	then
		((n1++))
	elif [ $number -eq 2 ]
        then
                ((n2++))
	elif [ $number -eq 3 ]
        then
                ((n3++))
	elif [ $number -eq 4 ]
        then
                ((n4++))
	elif [ $number -eq 5 ]
        then
                ((n5++))
	elif [ $number -eq 6 ]
        then
                ((n6++))
	fi
done
echo $n1 $n2 $n3 $n4 $n5 $n6


#number that reached maximum ans minimun times
count=0
die[((count++))]=$n1
die[((count++))]=$n2
die[((count++))]=$n3
die[((count++))]=$n4
die[((count++))]=$n5
die[((count++))]=$n6

max=${die[0]}
min=${die[0]}

for i in ${die[@]}
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done

echo "Largest Number is $max"
echo "Smallest Number is $min"
