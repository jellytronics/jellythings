#!/bin/bash


echo "Installing python3"

sudo apt-get install python3

echo "Cloning quick2wire"

git clone https://github.com/quick2wire/quick2wire-python-api.git

echo "Setting Enviornment Variables"

export QUICK2WIRE_API_HOME=~/jellythings/Experiments/LCD Controller/quick2wire-python-api
export PYTHONPATH=$PYTHONPATH:$QUICK2WIRE_API_HOME

echo "Cloning i2clibraries"

git clone https://bitbucket.org/thinkbowl/i2clibraries.git