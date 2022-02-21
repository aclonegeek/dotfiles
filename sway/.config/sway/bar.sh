#!/bin/bash

time=$(date +'%R')

caps_active=$(cat /sys/class/leds/*capslock/brightness)
num_active=$(cat /sys/class/leds/*numlock/brightness)

trap "capslock" SIGUSR1
trap "numlock" SIGUSR2

capslock() {
    if [[ $(cat /sys/class/leds/*capslock/brightness) -eq 0 ]]; then
        caps_active=0
    else
        caps_active=1
    fi
}

numlock() {
    if [[ $(cat /sys/class/leds/*numlock/brightness) -eq 0 ]]; then
        num_active=0
    else
        num_active=1
    fi
}

volume() {
    amixer -M -D default get Master | rg -q off
    unmuted=$?
    if [[ $unmuted -eq 1 ]]; then
        echo "  $(amixer -M -D default get Master | rg -oP '(\d+)%')"
    else
        echo "  MUTE"
    fi
}

while true
do
    # TODO: Surely a better way to do this...
    if [[ caps_active -eq 1 && num_active -eq 1 ]]; then
        echo "NUM | CAPS | $(volume)    $time"
    elif [[ caps_active -eq 1 && num_active -eq 0 ]]; then
        echo "CAPS | $(volume)    $time"
    elif [[ caps_active -eq 0 && num_active -eq 1 ]]; then
        echo "NUM | $(volume)    $time"
    else
        echo "$(volume)    $time"
    fi
    sleep 1
done
