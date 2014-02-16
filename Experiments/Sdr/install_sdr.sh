#!/bin/bash

echo "Installing GNURADIO and SDR Tools"

apt-get install cmake gnuradio libusb-dev libusb-1.0-0-dev alsa alsa-utils -y

cd ~

if hash rtl_sdr 2>/dev/null
then
	echo "RTL_SDR is already installed"
else
	echo "Installing RTL_SDR"
	cd ~/jellythings/Experiments/Sdr/rtl-sdr/
	mkdir build
	cd build
	cmake ../ -DINSTALL_UDEV_RULES=ON
	make
	sudo make install
	sudo ldconfig
fi




