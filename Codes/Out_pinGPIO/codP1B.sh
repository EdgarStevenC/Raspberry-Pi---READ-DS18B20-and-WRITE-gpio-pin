#!/bin/bash

if [ ! -e /sys/class/gpio/gpio5 ]; then
        echo 5 > /sys/class/gpio/export
fi

f=0.001
echo "out" > /sys/class/gpio/gpio5/direction

while [ true ]
do
   echo 1 > /sys/class/gpio/gpio5/value
   # sleep $f
   echo 0 > /sys/class/gpio/gpio5/value
   # sleep $f
done
