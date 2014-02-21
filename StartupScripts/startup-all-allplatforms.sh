#!/bin/bash

<<NICE_IDEA_BUT_NOT_SUITABLE
if [ "$(whoami)" != 'root' ]; then
        echo "You have no permission to run $0 as non-root user."
        exit 1;
fi
NICE_IDEA_BUT_NOT_SUITABLE

echo "Initialization Scripts Running YOZ!"

~/jellythings/StartupScripts/git_update_all.sh

echo "Improving Wifi"

chmod 777 ~/jellythings/StartupScripts/improve_wifi.sh

echo "Initializing XRDP"

sudo service xrdp start

echo "Initializing Hamachi"

chmod 777 ~/jellythings/Experiments/Hamachi/startup.sh

~/jellythings/Experiments/Hamachi/startup.sh


if [[ "$(lsb_release -si)" == *Debian* ]] || [[ "$(lsb_release -si)" == *Ubuntu* ]]
	then 
	echo "Greetings $(lsb_release) Distribution"'!'
elif [[ $(sw_vers -productName) == *Mac* ]]
	then
	echo "Welcome Mac!"
else
	echo "Greetings $(lsb_release) Distribution"'!'
	echo "Initializing LCD Controller"
	chmod 777 ~/jellythings/Experiments/LCD\ Controller/startup.sh
	~/jellythings/Experiments/LCD\ Controller/startup.sh
fi 


echo "Initializing Ttytter"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/startup.sh
~/jellythings/Experiments/LCD\ Controller/startup.sh

echo "Initializing SDR Software(s)"

chmod 777 ~/jellythings/Experiments/Sdr/startup_sdr.sh
~/jellythings/Experiments/Sdr/startup_sdr.sh

echo "Initializing Mifare Software(s)"

chmod 777 ~/jellythings/Experiments/Mifare/startup_mifare.sh
~/jellythings/Experiments/Mifare/startup_mifare.sh

echo "Initialization complete"

~/jellythings/StartupScripts/git_update_all.sh



chmod +x ~/jellythings/StartupScripts/tmux_commander.sh

#clear
#echo "Entering TMUX COMMANDER MENU!!!"
#~/jellythings/StartupScripts/tmux_commander.sh


