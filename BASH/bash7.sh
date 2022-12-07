#!/bin/bash

if [[ -f $1 ]]
then
	echo "Removing file"
	rm $1
elif [[ -d $1 ]]
then
	echo "Removing dir"
	rm -r $1
else
	echo "Can't remove $1"
fi

case $1 in
	0)
		echo "No students"
		;;
	1)
		echo "1 student"
		;;
	2)
		echo "2 students"
		;;
	3)
		echo "3 students"
		;;
	4)
		echo "4 students"
		;;
	*)
		echo "A lot of students"
esac
