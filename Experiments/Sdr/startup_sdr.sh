#!/bin/bash



echo "Disabling Kernel Module"
sudo rmmod dvb_usb_rtl28xxu rtl2832 

echo "Starting SDR TEST"
rtl-test -t

echo "Starting SDR Services"


<<HOW_TO_USE_RTL

	echo "FM YOZ!"
	rtl_fm -f 92.4e6 -s 200000 -r 48000 - | aplay -r 48k -f S16_LE

HOW_TO_USE_RTL

