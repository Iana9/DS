#!/bin/bash

var=1 + 1
echo "$var"

var=1+1
echo "$var"

let var=1+1
echo "$var"

let "var = 1 + 1"
echo "$var"

exp=0
base=10

while [[ $exp -le 5 ]]
do
	let "result = base ** exp"
	echo "$base^$exp = $result"
	let "exp += 1"
done
