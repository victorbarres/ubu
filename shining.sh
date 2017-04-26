#!/bin/bash
clear
MyObscession='All work and no play makes Victor a dull boy'
chrlen=${#MyObscession}
ExitLabyrinth=0
while [ $ExitLabyrinth -ne 1 ]; do
    for ((pos=0; pos<=$chrlen; pos++)); do
        echo -ne "\e[0K\r"${MyObscession:0:$pos}
        sleep $(($RANDOM % 2))
    done
    sleep $((RANDOM % 3))
    echo ''
done
