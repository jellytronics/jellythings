#!/bin/bash

echo "Installing all softwares"

<<CHANGING_REPOS

	echo "Setting Software Repositories"
	
	NOW=$(date +"%m-%d-%Y %T")
	
	sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
	
	git pull
	git add -A
	git commit -m "Auto Backup and Sync - $NOW"
	git push origin master
	git pull
	git submodule foreach git pull origin master

	deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse
	deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse
	deb mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse
	deb mirror://mirrors.ubuntu.com/mirrors.txt precise-security main restricted universe multiverse

CHANGING_REPOS

echo "Installing utilities"

sudo apt-get update
sudo apt-get install subversion python3 ssh sshfs arduino lm-sensors ttytter python3-setuptools python3-pip network-manager wpasupplicant wireless-tools wireshark nmap xrdp vino autoconf libtool libpam0g-dev libx11-dev libxfixes-dev libssl-dev

<<VNC_COMMENT

	sudo apt-get install gnome-session-fallback 
	echo  ”gnome-session --session=gnome-fallback” > ~/.xsession
	sudo apt-get install x11vnc
	
VNC_COMMENT


<<HOW_TO_ADD_SUBDIRECTORY

	git submodule add git://git.osmocom.org/rtl-sdr.git ~/jellythings/Experiments/Sdr/rtl-sdr

HOW_TO_ADD_SUBDIRECTORY


echo "Installing LCD Controller"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/

~/jellythings/Experiments/LCD\ Controller/

echo "Installation complete"

chmod 777 ~/jellythings -R

echo "Initializing Services"

~/jellythings/StartupScripts/startup-all.sh

