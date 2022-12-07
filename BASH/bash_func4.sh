#!/bin/bash

gcd ()
{
    let "M = $1"; let "N = $2";
    if [[ $M -eq $N ]]; then return $M    
    elif [[ $M -gt $N ]]; let "M -= $N";then gcd $M $N 
    else let "N -= $M"; gcd $N $M
    fi
}

gcd $1 $2
