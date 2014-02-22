#!/bin/bash

NOW=$(date +"%m-%d-%Y %T")

if [[ "$1" == "--force" || "$1" == "-f" ]]
	then
	echo "Updating GIT with force - $NOW"

	cd ~/jellythings

	git pull
	git add -A
	git commit -m "Auto Backup and Sync - $NOW"
	git push origin master
	git pull
	git fetch origin
	git reset --hard origin/master
	git submodule update --init
	git pull --recurse-submodules
	git submodule foreach git pull origin master

elif [[ "$1" == "-h" || "$1" == "--help" ]]
	then
	#statements
	echo "-f  --force  Updates jellythings folder with force"
	echo "-h  --help   Displays this screen"
else
	echo "Updating GIT - $NOW"

	cd ~/jellythings

	git pull
	git add -A
	git commit -m "Auto Backup and Sync - $NOW"
	git push origin master
	git pull
	git submodule update --init
	git pull --recurse-submodules
	git submodule foreach git pull origin master
fi



