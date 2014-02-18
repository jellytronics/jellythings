#!/bin/bash



echo "Disabling Kernel Module"
sudo rmmod dvb_usb_rtl28xxu rtl2832 

echo "Starting SDR TEST"
rtl-test -t

echo "Starting SDR Services"


<<HOW_TO_USE_RTL

	echo "FM YOZ!"

	#linux
	rtl_fm -f 92.4e6 -s 200000 -r 48000 - | aplay -r 48k -f S16_LE
	#Mac
	rtl_fm -f 92400000 -s 480000 -r 48000 | play -r 48000 -t s16 -L -c 1 -

HOW_TO_USE_RTL

