#!/bin/bash

spin='-\|/'

spin[0]="-"
spin[1]="\\"
spin[2]="|"
spin[3]="/"
while [ 1 ]
do
 for i in "${spin[@]}"
 do
   echo -ne "\b$i"
   sleep 0.1
 done
done
