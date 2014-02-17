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

if [[ $(sw_vers -productName) == *Mac* ]]
	then

	if hash brew 2>/dev/null
		then
		echo "Brew is installed, updating applications"
		brew doctor
		brew update
	else
		ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
		brew doctor
		brew update
	fi

	echo "inspecting BASH_RC for homebrew github token"

	if cat ~/.bashrc | grep "export HOMEBREW_GITHUB_API_TOKEN"
		then
		echo "Homebrew token installed"
	else
		echo 'export HOMEBREW_GITHUB_API_TOKEN=9eeef0eb8e3d167d168deca07d2cfd98c1048353' >> ~/.bashrc
	fi

	echo "Installing applications on brew"

	brew install subversion python3 sshfs ttytter python3-setuptools python3-pip wireshark nmap autoconf libtool

else
	sudo apt-get update
	sudo apt-get install subversion python3 ssh sshfs arduino lm-sensors ttytter python3-setuptools python3-pip network-manager wpasupplicant wireless-tools wireshark nmap xrdp vino autoconf libtool libpam0g-dev libx11-dev libxfixes-dev libssl-dev -y
fi













<<VNC_COMMENT

	sudo apt-get install gnome-session-fallback 
	echo  ”gnome-session --session=gnome-fallback” > ~/.xsession
	sudo apt-get install x11vnc
	
VNC_COMMENT


<<HOW_TO_ADD_SUBDIRECTORY

	git submodule add git://git.osmocom.org/rtl-sdr.git ~/jellythings/Experiments/Sdr/rtl-sdr

HOW_TO_ADD_SUBDIRECTORY




echo "Installing LCD Controller"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/install.sh

~/jellythings/Experiments/LCD\ Controller/install.sh

echo "Installing SDR packages"

chmod 777 ~/jellythings/Experiments/Sdr/install_sdr.sh

~/jellythings/Experiments/Sdr/install_sdr.sh

echo "Installation complete"

chmod 777 ~/jellythings -R

echo "Initializing Services"

~/jellythings/StartupScripts/startup-all-allplatforms.sh

