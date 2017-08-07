#!/bin/bash

#prepare to turn leds off when ^C
SCRIPTPATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
trap "$SCRIPTPATH/ledsoff.sh; exit" 2

#export gpio in case they were off
echo 362 > /sys/class/gpio/export  #green led
echo 17 > /sys/class/gpio/export   #red led

#set pin mode to out
echo out > /sys/class/gpio/gpio362/direction
echo out > /sys/class/gpio/gpio17/direction

echo "Party mode!"

while true; do
echo 0 > /sys/class/gpio/gpio362/value
echo 1 > /sys/class/gpio/gpio17/value
sleep 0.2
echo 1 > /sys/class/gpio/gpio362/value
echo 0 > /sys/class/gpio/gpio17/value
sleep 0.2
done
