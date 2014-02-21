#!/bin/bash

echo "Entering TMUX Command Mode"

echo "Setting Permissions"

chmod +x ~/jellythings/Experiments/Mifare/tmux_mifare.sh
chomd +x ~/jellythings/Experiments/Sdr/tmux_sdr.sh
chmod +x ~/jellythings/StartupScripts/tmux_utils.sh

##	Ref Materials
#http://wiki.gentoo.org/wiki/Tmux

echo "Select options :-"

select choice in "Mifare Project" "Software Defined Radio Project" "System I/O Utilities" "Kill all TMUX Sessions" "Run Installation Scripts" "Run Startup Scripts" "Update All" "Make files executable" "Exit"; do
    case $choice in
        "Mifare Project" ) ~/jellythings/Experiments/Mifare/tmux_mifare.sh;;
        "Software Defined Radio Project" ) ~/jellythings/Experiments/Sdr/tmux_sdr.sh;;
		"System I/O Utilities" ) ~/jellythings/StartupScripts/tmux_utils.sh;;
		"Kill all TMUX Sessions" ) while tmux list-sessions | grep "windows"; do tmux kill-session; done;;
		"Run Installation Scripts" ) ~/jellythings/StartupScripts/install-all-allplatforms.sh;;
		"Run Startup Scripts" ) ~/jellythings/StartupScripts/startup-all-allplatforms.sh;;
		"Update All" ) ~/jellythings/StartupScripts/git_update_all.sh;;
		"Make files executable" ) chmod -R -f +x ~/jellythings;;
		"Exit" ) break;;
    esac
done

