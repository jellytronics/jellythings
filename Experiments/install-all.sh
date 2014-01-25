#!/bin/bash

echo "Installing all softwares"

echo "Installing utilities"

sudo apt-get install python3 ssh sshfs arduino lm-sensors ttytter

echo "Installing LCD Controller"

chmod 777 ~/jellythings/Experiments/LCD\ Controller/

~/jellythings/Experiments/LCD\ Controller/

echo "Installation complete"

