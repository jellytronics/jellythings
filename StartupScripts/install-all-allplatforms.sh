#!/bin/bash

echo "Installing all softwares"

<<COMMENT1
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
COMMENT1

echo "Installing utilities"

sudo apt-get update
sudo apt-get install python3 ssh sshfs arduino lm-sensors ttytter python3-setuptools python3-pip network-manager wpasupplicant wireless-tools wireshark nmap xrdp vino

echo "Installing LCD Controller"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/

~/jellythings/Experiments/LCD\ Controller/

echo "Installation complete"

chmod 777 ~/jellythings -R

echo "Initializing Services"

~/jellythings/StartupScripts/startup-all.sh

