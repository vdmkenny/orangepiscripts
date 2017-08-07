#!/bin/bash

#export gpio in case they were off
echo 17 > /sys/class/gpio/export 2> /dev/null  #red led
echo 362 > /sys/class/gpio/export 2> /dev/null #green led

#set pin mode to out
echo out > /sys/class/gpio/gpio362/direction
echo out > /sys/class/gpio/gpio17/direction

#turn off leds, assume they are exported and on
echo 0 > /sys/class/gpio/gpio17/value
echo 0 > /sys/class/gpio/gpio362/value

#unexport gpio
echo 17 > /sys/class/gpio/unexport
echo 362 > /sys/class/gpio/unexport
