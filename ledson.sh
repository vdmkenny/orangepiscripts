#!/bin/bash

#export gpio in case they were off
echo 17 > /sys/class/gpio/export  #red led
echo 362 > /sys/class/gpio/export #green led

#set pin mode to out
echo out > /sys/class/gpio/gpio17/direction
echo out > /sys/class/gpio/gpio362/direction

#turn on leds
echo 1 > /sys/class/gpio/gpio17/value
echo 1 > /sys/class/gpio/gpio362/value
