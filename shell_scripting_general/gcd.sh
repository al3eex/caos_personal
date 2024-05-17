#!/bin/bash

# Задание по курсу:
# https://stepik.org/course/73/info

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

while [ 1 == 1 ]
do
    read a b
    if [[ $a -eq "" ]] && [[ $a -eq $b ]]
    then
        echo "bye";
        break
    else
        gcd $a $b
    fi
done
