#!/bin/bash


if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi

echo "Initialization Scripts Running YOZ!"

echo "Initializing XRDP"

sudo service xrdp start

echo "Initializing Hamachi"

chmod 777 ~/jellythings/Experiments/Hamachi/startup.sh

~/jellythings/Experiments/Hamachi/startup.sh


if [[ "$(lsb_release -si)" == *Debian* ]] || [[ "$(lsb_release -si)" == *Ubuntu* ]]
then 
	echo "Greetings $(lsb_release) Distribution!"
else
	echo "Greetings $(lsb_release) Distribution!"
	echo "Initializing LCD Controller"
	chmod 777 ~/jellythings/Experiments/LCD\ Controller/startup.sh
	~/jellythings/Experiments/LCD\ Controller/startup.sh
fi 


echo "Initializing Ttytter"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/startup.sh

echo "Initialization complete"

echo "Gitting Now"

NOW=$(date +"%m-%d-%Y %T")

cd ~/jellythings

git pull
git add -A
git commit -m "Auto Backup and Sync - $NOW"
git push origin master
git pull
git submodule foreach git pull origin master