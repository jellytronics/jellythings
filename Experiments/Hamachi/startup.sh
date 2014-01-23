#!/bin/bash


echo "Hamachi: logging in"

sudo hamachi login

echo "Hamachi: attaching email"

sudo hamachi attach wong.jeremias@gmail.com

echo "Setting Nickname - jellypi1"

sudo hamachi set-nick "Jellypi1"

echo "enter password"

read password

$password | sudo hamachi do-join Jelly-pi

echo "Starting SSH Client"

sudo service ssh start

#sudo /etc/int.d/ssh start
