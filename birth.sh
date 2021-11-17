#!/bin/bash -x

declare -A months
num=1
while [ $num -le 50 ]
do
	var=$((RANDOM%12+1))
	year=$((RANDOM%2+92))

	months[$num]=$year
	if [ $year -eq 92 ]
	then
		yr[$num]=$year
	else 
		yer[$num]=$year
	fi	
	months[$num]=$var
	if   [ $var -eq 1  ]
	then
		jan[$num]=$var
	elif [ $var -eq 2  ]
	then
		feb[$num]=$var
	elif [ $var -eq 3  ]
        then
                mar[$num]=$var
	elif [ $var -eq 4  ]
        then
                apr[$num]=$var
	elif [ $var -eq 5  ]
        then
                may[$num]=$var
	elif [ $var -eq 6  ]
        then
                jun[$num]=$var
	elif [ $var -eq 7  ]
        then
                jul[$num]=$var
	elif [ $var -eq 8  ]
        then
                aug[$num]=$var
	elif [ $var -eq 9  ]
        then
                sep[$num]=$var
	elif [ $var -eq 10 ]
        then
                oct[$num]=$var
	elif [ $var -eq 11 ]
        then
                nov[$num]=$var
	else
                dec[$num]=$var
	fi
	num=$(($num+1))
done

echo ${#jan[@]} " Members celebrating birthday in the month jan:"[${!jan[@]}]

echo ${#feb[@]} " Members celebrating birthday in the month feb:"[${!feb[@]}]

echo ${#mar[@]} " Members celebrating birthday in the month mar:"[${!mar[@]}]

echo ${#apr[@]} " Members celebrating birthday in the month apr:"[${!apr[@]}]

echo ${#may[@]} " Members celebrating birthday in the month may:"[${!may[@]}]

echo ${#jun[@]} " Members celebrating birthday in the month jun:"[${!jun[@]}]

echo ${#jul[@]} " Members celebrating birthday in the month jul:"[${!jul[@]}]

echo ${#aug[@]} " Members celebrating birthday in the month aug:"[${!aug[@]}]

echo ${#sep[@]} " Members celebrating birthday in the month sep:"[${!sep[@]}]

echo ${#oct[@]} " Members celebrating birthday in the month oct:"[${!oct[@]}]

echo ${#nov[@]} " Members celebrating birthday in the month nov:"[${!nov[@]}]

echo ${#dec[@]} " Members celebrating birthday in the month dec:"[${!dec[@]}]

echo ${#yr[@]} " Members celebrating birthday in the year 92: "[${!yr[@]}]

echo ${#yer[@]} "Members celebrating birthday in the year 93: "[${!yer[@]}]
