#!/bin/bash

echo "installing GNURADIO and SDR Tools"

apt-get install cmake gnuradio libusb-dev libusb-1.0-0-dev alsa alsa-utils

cd ~

git clone git://git.osmocom.org/rtl-sdr.git

cd rtl-sdr/
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo ldconfig


