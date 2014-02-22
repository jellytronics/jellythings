#!/bin/bash

echo "Radio Launching"
echo "Select options :-"

function play_radio {
	read -p "Enter frequency (eg. 92.4e6 || 92400000)" FREQ
	if [[ $(sw_vers -productName) == *Mac* ]]
		then
		rtl_fm -f $FREQ -s 480000 -r 48000 | play -r 48000 -t s16 -L -c 1 -
	else
		rtl_fm -f $FREQ -s 200000 -r 48000 - | aplay -r 48k -f S16_LE
	fi
}

select choice in "Play Radio" "Exit"; do
    case $choice in
        "Play Radio" ) play_radio;;
		"Exit" ) break;;
    esac
done

