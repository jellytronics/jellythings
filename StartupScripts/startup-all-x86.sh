#!/bin/bash

echo "Initialization Scripts Running YOZ!"

echo "Initializing Hamachi"

chmod 777 ~/jellythings/Experiments/Hamachi/startup.sh

~/jellythings/Experiments/Hamachi/startup.sh

echo "Initializing LCD Controller"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/startup.sh

~/jellythings/Experiments/LCD\ Controller/startup.sh

echo "Initializating Ttytter"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/startup.sh

echo "Initialization complete"

echo "Gitting Now"

NOW=$(date +"%m-%d-%Y %T")

git add -A
git commit -m "Auto Backup and Sync - $NOW"
git push
git pull
git submodule foreach git pull origin master