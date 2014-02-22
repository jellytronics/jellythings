#!/bin/bash

NOW=$(date +"%m-%d-%Y %T")

function reset_git_submodules {
	#!/bin/sh

	cd ~/jellythings
 
	echo "Resetting git submodules from .gitmodule"
	#https://gist.github.com/aroemen/5027030
	#http://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules

	set -e
	 
	git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
	    while read path_key path
	    do
	        url_key=$(echo $path_key | sed 's/\.path/.url/')
	        url=$(git config -f .gitmodules --get "$url_key")
	        git submodule add $url $path
	    done
}

if [[ "$1" == "--force" || "$1" == "-f" ]]
	then
	echo "Updating GIT with force - $NOW"

	cd ~/jellythings

	git pull
	git add -A
	git commit -m "Auto Backup and Sync - $NOW"
	git push origin master
	reset_git_submodules
	git pull
	git fetch origin
	git submodule sync
	git reset --hard origin/master
	git submodule update --init --recursive
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
	git submodule sync
	git submodule update --init --recursive
	git pull --recurse-submodules
	git submodule foreach git pull origin master
fi



