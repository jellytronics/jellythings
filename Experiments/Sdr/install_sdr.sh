#!/bin/bash


echo "Installing GNURADIO and SDR Tools"

if [[ $(sw_vers -productName) == *Mac* ]]
	then
	echo "Installing applications on brew"

	#brew install subversion python3 sshfs ttytter python3-setuptools python3-pip wireshark nmap autoconf libtool
	#https://github.com/titanous/homebrew-gnuradio
	
else
	apt-get install cmake gnuradio libusb-dev libusb-1.0-0-dev alsa alsa-utils -y
fi






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




