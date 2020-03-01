#!/bin/bash

modprobe w1-gpio
modprobe w1-therm

function leerT {
               cd /sys/bus/w1/devices/28*
               A=$(cat w1_slave)
               t=${A:69}
               t=$(($t/1000))
               D=$(date +%Y%m%d)
               T=$(date +%H%M%S)

               DATO="$D $T $t °C"
               #echo $DATO
               cd -
               }

function GT {
             echo $DATO > m.txt
             echo $DATO
             cat *.txt > Historico"$R".txt
            }


R=0
#echo "Date  Time  Temperature" > m0.txt
touch Historico1.txt

while [ true ]
do
  if [ $R = "0" ]
  then
    leerT
    GT
    R=1
    rm m.txt Historico1.txt
  else
    leerT
    GT
    R=0
    rm m.txt Historico0.txt
  fi
 sleep 2
done

