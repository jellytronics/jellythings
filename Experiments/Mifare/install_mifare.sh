#!/bin/bash


echo "Installing Libnfc and Mifare Tools"

if [[ $(sw_vers -productName) == *Mac* ]]
	then

	echo "Installing Libnfc for mac"

	if hash libnfc 2>/dev/null
		then
		echo "libnfc is installed"
	else
		echo "Installing libnfc on brew"
		brew install libusb libusb-compat --universal
		brew install libnfc
	fi

	if hash libfreefare 2>/dev/null
		then
		echo "libfreefare is installed"
	else
		echo "Installing libfreefare on brew"
		brew install libfreefare
	fi

else
	echo "Installing Libnfc with apt-get"
	sudo apt-get install libusb-dev libpcsclite-dev -y
	sudo apt-get install libusb-0.1-4 libpcsclite1 libccid pcscd libftdi1 -y

fi

if hash libnfc 2>/dev/null
then
	echo "libnfc is already installed"
else
	#git submodule add https://code.google.com/p/libnfc/ ~/jellythings/Experiments/Mifare/libnfc
	echo "Installing libnfc"
	cd ~/jellythings/Experiments/Mifare/libnfc
	autoreconf -vis
	./configure --enable-doc
	make
	sudo make install
	make doc

fi


if hash libfreefare 2>/dev/null
then
	echo "libfreefare is already installed"
else
	#https://code.google.com/p/libfreefare/
	#git submodule add https://code.google.com/p/libfreefare/ ~/jellythings/Experiments/Mifare/libfreefare
	echo "Installing libfreefare"
	cd ~/jellythings/Experiments/Mifare/libfreefare
	autoreconf -vis
	./configure --prefix=/usr
	make
	CFLAGS="-g -Wall -pedantic -O0 -ggdb" ./configure --prefix=/usr
	make clean all
	sudo make install
fi

echo "From here on out, these projects are not longer FEATURED"

if hash libllcp 2>/dev/null
then
	echo "libllcp is already installed"
else
	#http://nfc-tools.org/index.php?title=Libllcp
	#git submodule add https://code.google.com/p/libllcp/ ~/jellythings/Experiments/Mifare/libllcp
	echo "Installing libllcp"
	cd ~/jellythings/Experiments/Mifare/libllcp
	autoreconf --force --install
	./configure --prefix=/usr
	make
	sudo make install
fi


if hash lsnfc 2>/dev/null
then
	echo "lsnfc is already installed"
else
	#http://nfc-tools.org/index.php?title=Lsnfc
	echo "Installing lsnfc"
	cd ~/jellythings/Experiments/Mifare
	svn checkout http://nfc-tools.googlecode.com/svn/trunk/nfcutils nfcutils
	cd nfcutils
	autoreconf -vis
	./configure
	make
	make install
	cd ~/jellythings
fi


if hash libndef 2>/dev/null
then
	echo "libndef is already installed"
else
	#https://github.com/nfc-tools/libndef/blob/master/INSTALL
	#https://code.google.com/p/libndef/
	#git submodule add https://github.com/nfc-tools/libndef.git ~/jellythings/Experiments/Mifare/libndef
	echo "Installing libndef"
	cd ~/jellythings/Experiments/Mifare/libndef
	qmake
	make
	sudo make install
fi


if hash mfoc 2>/dev/null
then
	echo "mfoc is already installed"
else
	#https://code.google.com/p/mfoc/source/checkout
	#git submodule add https://code.google.com/p/mfoc/ ~/jellythings/Experiments/Mifare/mfoc
	echo "Installing mfoc"
	echo "Work in progress"
	cd ~/jellythings/Experiments/Mifare/mfoc
	make
	sudo make install
fi

if pydoc modules 2>/dev/null | grep "rfidiot"
	then
	echo "rfidiot"
else
	echo "Installing rfidiot"
	#https://github.com/AdamLaurie/RFIDIOt
	#http://adamsblog.aperturelabs.com/
	#git submodule add https://github.com/AdamLaurie/RFIDIOt.git ~/jellythings/Experiments/Mifare/RFIDIOt
	cd ~/jellythings/Experiments/Mifare/RFIDIOt
	sudo python ./setup.py install
fi


<<COMMON_ERRORS


	#insert here


COMMON_ERRORS




cd ~


