#!/bin/bash


echo "Installing python3"

sudo apt-get install python3 python-virtualenv python-pip python3-setuptools -y

#echo "Cloning quick2wire"

#git clone https://github.com/quick2wire/quick2wire-python-api.git

echo "Setting Enviornment Variables"

export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api
export PYTHONPATH=$PYTHONPATH:$QUICK2WIRE_API_HOME

#echo "Cloning i2clibraries"

#git clone https://bitbucket.org/thinkbowl/i2clibraries.git

echo "Setting Python Enviornment - Quick2wire"

#https://github.com/quick2wire/quick2wire-python-api
cd ~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api
python3 ~/jellythings/Experiments/LCD\ Controller/quick2wire-python-api/setup.py install

#https://github.com/quick2wire/quick2wire-gpio-admin
cd ~/jellythings/Experiments/LCD\ Controller/quick2wire-gpio-admin
make
sudo make install

#to uninstall, just uncomment the bottom
#sudo make uninstall