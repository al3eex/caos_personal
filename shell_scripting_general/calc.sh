#!/bin/bash

# Задание по курсу:
# https://stepik.org/course/73/info

pow () {
    pownum=$1
    for (( i = 1; i < $2; i++ ))
        do
            let "pownum = $pownum * $1"
        done
    echo $pownum
}

while [[ 1 == 1 ]]
do
    read a op b
    if [[ $a == "exit" ]]
    then
        echo "bye"
        break
    elif [[ $op == "+" ]]
    then
        echo $((a + b))
        # echo "$a + $b"
    elif [[ $op == "-" ]]
    then
        echo $((a - b))
    elif [[ $op == "*" ]]
    then
        echo $((a * b))
    elif [[ $op == "/" ]]
    then
        echo $((a / b))
    elif [[ $op == "%" ]]
    then
        echo $((a % b))
        # echo "a % $b"
    elif [[ $op == "**" ]]
    then
        pow $a $b
    else
        echo "error"
        break
    fi
done

