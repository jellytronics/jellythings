#!/bin/bash

echo "Installing all softwares"

echo "Installing utilities"

sudo apt-get install python3 ssh sshfs arduino lm-sensors ttytter python3-setuptools python3-pip network-manager wpasupplicant wireless-tools wireshark nmap xrdp

echo "Installing LCD Controller"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/

~/jellythings/Experiments/LCD\ Controller/

echo "Installation complete"

chmod 777 ~/jellythings -R

echo "Initializing Services"

~/jellythings/StartupScripts/startup-all.sh

