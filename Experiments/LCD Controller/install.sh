#!/bin/bash


echo "Installing python3"

sudo apt-get install python3 python-virtualenv python-pip python3-setuptools -y

#echo "Cloning quick2wire"
#git clone https://github.com/quick2wire/quick2wire-python-api.git

if [[ "$(lsb_release -si)" == *Debian* ]] || [[ "$(lsb_release -si)" == *Ubuntu* ]]
	then 
	echo "Greetings $(lsb_release) Distribution"'!'
elif [[ $(sw_vers -productName) == *Mac* ]]
	then
	echo "Welcome Mac!"
else
	if cat ~/.bashrc | grep "export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api"
		then
		echo "environment variables applied for lcd controller"
	else
		export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api
		export PYTHONPATH=$PYTHONPATH:$QUICK2WIRE_API_HOME
		echo 'export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api' >> ~/.bashrc
		echo 'export PYTHONPATH=$PYTHONPATH:$QUICK2WIRE_API_HOME' >> ~/.bashrc
		source ~/.bashrc
	fi

	echo "LCD token initialized"

	echo "Setting Enviornment Variables"

	#echo "Cloning i2clibraries"
	#git clone https://bitbucket.org/thinkbowl/i2clibraries.git

	echo "Setting Python Enviornment - Quick2wire"

	#https://github.com/quick2wire/quick2wire-python-api
	cd ~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api
	python3 ~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api/setup.py install

	if hash gpio-admin export 22 2>/dev/null
		then
		echo "gpio-admin installed"
	else
		#https://github.com/quick2wire/quick2wire-gpio-admin
		cd ~/jellythings/Experiments/LCD\ Controller/quick2wire-gpio-admin
		make
		sudo make install
	fi


	#to uninstall, just uncomment the bottom
	#sudo make uninstall

fi

