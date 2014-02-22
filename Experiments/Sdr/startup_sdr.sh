#!/bin/bash



echo "Disabling Kernel Module"
sudo rmmod dvb_usb_rtl28xxu rtl2832 

echo "Starting SDR TEST"
rtl-test -t

echo "Starting SDR Services"
chmod +x ~/jellythings/Experiments/Sdr/startfm.sh
~/jellythings/Experiments/Sdr/startfm.sh
