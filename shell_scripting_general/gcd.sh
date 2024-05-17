#!/bin/bash

maxmin () {
    if [[ $2 -ge $1 ]]
    then
        max=$2
        min=$1
    elif [[ $1 -ge $2 ]]
    then
        max=$1
        min=$2
    fi
}

# funciton begins
gcd () {
    if [[ $1 == $2 ]]
    then
        echo "GCD is $1"
    else
        maxmin $1 $2;
        while [[ $(expr $max % $min) != 0 ]]
        do
            let "c = $max % $min"
            maxmin $min $c
        done
        echo "GCD is $min"
    fi
}

while [ 1 == 1 ] # script start
do
    read a b
    if [[ $a -eq "" ]] && [[ $a -eq $b ]]
    then
        echo "bye";
        break # script end
    else
        gcd $a $b
    fi
done
