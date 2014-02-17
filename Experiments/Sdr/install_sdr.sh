#!/bin/bash


echo "Installing GNURADIO and SDR Tools"

if [[ $(sw_vers -productName) == *Mac* ]]
	then

	echo "checking bashrc for appropriate python path"

	if cat ~/.bashrc | grep "export PATH=/usr/local/bin:/usr/local/share/python:$PATH"
		then
		echo "Python path spotted"
	else
		echo 'export PATH=/usr/local/bin:/usr/local/share/python:$PATH' >> ~/.bashrc
		echo "Python path inserted"
		source ~/.bashrc
	fi

	if hash gnuradio 2>/dev/null
		then
		echo "gnuradio is installed"
	else

		echo "Installing GNURADIO on brew"

		brew install libusb libusb-compat --universal
		brew install cmake sox python gfortran umfpack swig
		brew install wxmac --python
		brew install rtlsdr gr-osmosdr gr-baz --HEAD
		#https://github.com/titanous/homebrew-gnuradio

		pip install numpy Cheetah lxml
		pip install https://github.com/scipy/scipy/tarball/v0.11.0rc2
		export PKG_CONFIG_PATH="/usr/x11/lib/pkgconfig" 
		pip install http://downloads.sourceforge.net/project/matplotlib/matplotlib/matplotlib-1.1.1/matplotlib-1.1.1.tar.gz
		
		brew tap titanous/homebrew-gnuradio
		brew install gnuradio --with-qt

		if cat ~/.gnuradio/config.conf | grep "local_blocks_path"
			then
			echo "gnuradio all set to go"
		else
			echo '[grc]' >> ~/.gnuradio/config.conf
			echo 'local_blocks_path=/usr/local/share/gnuradio/grc/blocks' >> ~/.gnuradio/config.conf
		fi


	fi

else
	echo "Installing GNURADIO with apt-get"
	apt-get install cmake gnuradio libusb-dev libusb-1.0-0-dev alsa alsa-utils -y
fi






cd ~

if hash rtl_sdr 2>/dev/null
then
	echo "RTL_SDR is already installed"
else
	echo "Installing RTL_SDR"
	cd ~/jellythings/Experiments/Sdr/rtl-sdr/
	mkdir build
	cd build
	cmake ../ -DINSTALL_UDEV_RULES=ON
	make
	sudo make install
	sudo ldconfig
fi




