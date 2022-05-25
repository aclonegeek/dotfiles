#!/bin/bash

LAPTOP=0

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

thetime() {
    echo "  $(date +'%R')"
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

battery() {
    batterydir=/sys/class/power_supply/BAT1
    if [[ ! -d  "$batterydir" ]]; then
        return
    fi

    level=$(cat "$batterydir/capacity")
    status=$(cat "$batterydir/status")

    echo " $level% $status"
}

wifi() {
    echo " $(grep wlp3s0 /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')%"
}

while true
do
    bar=""

    if [[ num_active -eq 1 ]]; then
        bar="NUM | "
    fi

    if [[ caps_active -eq 1 ]]; then
        bar="$bar CAPS | "
    fi

    if [[ LAPTOP -eq 1 ]]; then
        bar="$bar $(wifi)  $(battery) "
    fi

    bar="$bar $(volume)  $(thetime)"
    echo "$bar"

    sleep 1
done
