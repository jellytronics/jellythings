#!/bin/bash

echo "Running Startup Script"

if [[ "$(lsb_release -si)" == *Debian* ]] || [[ "$(lsb_release -si)" == *Ubuntu* ]]
	then 
	echo "Greetings $(lsb_release) Distribution"'!'
elif [[ $(sw_vers -productName) == *Mac* ]]
	then
	echo "Welcome Mac!"
else
	if cat ~/.bashrc | grep "export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api"
		then
	else
		export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api
		export PYTHONPATH=$PYTHONPATH:$QUICK2WIRE_API_HOME
		echo 'export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api' >> ~/.bashrc
		echo 'export PYTHONPATH=$PYTHONPATH:$QUICK2WIRE_API_HOME' >> ~/.bashrc
		source ~/.bashrc
	fi

export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api
export PYTHONPATH=$PYTHONPATH:$QUICK2WIRE_API_HOME

