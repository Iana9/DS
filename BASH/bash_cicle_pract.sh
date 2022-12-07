#!/bin/bash

while [ True ]
do
	echo "enter your name:"
	read name
	if [[ -z "$name" ]]
	then
		echo "bye"
		break
	fi
	echo "enter your age:"
	read age
	if [[ $age -eq 0 ]]
	then
		echo "bye"
		break
	elif [[ $age -le 16 ]]
	then
		echo "$name, your group is child"
	elif [[ $age -le 25 && $age -ge 17 ]]
	then
		echo "$name, your group is youth"
	else
		echo "$name, your group is adult"
	fi
done

# ideal solution

while true
do
    echo enter your name:; read name
    [ -z $name ] && break

    echo enter your age:; read age
    [ $age -eq 0 ] && break

    if (( $age < 17 )); then
        group=child
    elif (( $age > 25 )); then
        group=adult
    else
        group=youth
    fi

    echo "$name, your group is $group"
done
echo bye
