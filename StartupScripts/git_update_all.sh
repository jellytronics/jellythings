#!/bin/bash

NOW=$(date +"%m-%d-%Y %T")

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