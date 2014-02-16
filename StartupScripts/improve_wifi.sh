#!/bin/bash

echo "Taking interfaces down"

ifconfig wlan0 down
ifconfig wlan1 down
ifconfig wlan2 down

iw reg set BO

iwconfig wlan0 channel 13
iwconfig wlan1 channel 13
iwconfig wlan2 channel 13

iwconfig wlan0 txpower 30
iwconfig wlan1 txpower 30
iwconfig wlan2 txpower 30

echo "Taking interfaces up"

ifconfig wlan0 up
ifconfig wlan1 up
ifconfig wlan2 up

echo "Wifi up"