#!/bin/bash


echo "Installing GNURADIO and SDR Tools"

if [[ $(sw_vers -productName) == *Mac* ]]
	then

	echo "Installing gnuradio for mac"
	echo "For errors please visit :-"
	echo "https://github.com/Homebrew/homebrew/wiki/troubleshooting"
	echo "https://github.com/titanous/homebrew-gnuradio/issues"
	echo " "
	echo "checking bashrc for appropriate python path"

	if cat ~/.bashrc | grep "export PATH=/usr/local/bin"
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
		#https://github.com/titanous/homebrew-gnuradio
		#https://github.com/xlfe/homebrew-gnuradio

		#brew tap samueljohn/homebrew-python
		brew install numpy scipy pixman
		brew install matplotlib --with-gtk --with-wx --with-pyqt 

		function print_pip_stats {
			pip list | grep $1
		}

		function install_pip {
			sudo pip install $1
		}

		function pip_handler {
			if print_pip_stats $1
				then
				echo $1' is installed'
			else
				echo $1' is not installed, installing...'
				install_pip $1
			fi
		}

		pip_handler numpy
		pip_handler Cheetah
		pip_handler lxml

		
		
		if print_pip_stats "scipy"
			then
			echo "scipy is installed"
		else
			sudo pip install https://github.com/scipy/scipy/tarball/v0.11.0rc2
		fi
		
		export PKG_CONFIG_PATH="/usr/x11/lib/pkgconfig" 
		
		if print_pip_stats "matplotlib"
			then
			echo "matplotlib is installed"
		else
			sudo pip install http://downloads.sourceforge.net/project/matplotlib/matplotlib/matplotlib-1.1.1/matplotlib-1.1.1.tar.gz
		fi
		
		

		##sudo pip install numpy Cheetah lxml
		##sudo pip install https://github.com/scipy/scipy/tarball/v0.11.0rc2
		##export PKG_CONFIG_PATH="/usr/x11/lib/pkgconfig" 
		##sudo pip install http://downloads.sourceforge.net/project/matplotlib/matplotlib/matplotlib-1.1.1/matplotlib-1.1.1.tar.gz
		
		brew tap titanous/homebrew-gnuradio
		brew untap xlfe/homebrew-gnuradio
		brew link --overwrite python
		brew install --with-qt gnuradio
		brew install sox
		brew install --HEAD rtlsdr gr-osmosdr gr-baz 
		#brew install --HEAD op25 gqrx



		if cat ~/.gnuradio/config.conf | grep "local_blocks_path"
			then
			echo "gnuradio all set to go"
		else
			mkdir ~/.gnuradio
			echo '[grc]' >> ~/.gnuradio/config.conf
			echo 'local_blocks_path=/usr/local/share/gnuradio/grc/blocks' >> ~/.gnuradio/config.conf
		fi


	fi

else
	echo "Installing GNURADIO with apt-get"
	sudo apt-get install cmake gnuradio libusb-dev libusb-1.0-0-dev alsa alsa-utils -y
fi



<<COMMON_ERRORS


	#	if python got corrupted somehow, you gotta remove it with
	##	brew uninstall python, then reinstall it again.

	#	if you see 
		No formula found for "gnuradio".
	##	run these
		export HOMEBREW_GITHUB_API_TOKEN=9eeef0eb8e3d167d168deca07d2cfd98c1048353
		brew uninstall gnuradio
		brew untap titanous/homebrew-gnuradio
		brew tap titanous/homebrew-gnuradio
		brew tap --repair
		brew install gnuradio

	#	if gnuradio install fails due to 
		ld: symbol(s) not found for architecture x86_64
	##	run these as per https://github.com/titanous/homebrew-gnuradio/issues/41
		brew unlink swig
		edit /usr/Local/Library/Formula/gnuradio.rb
			disable swig and switch from gcc to clang:
			#          depends_on 'swig'

			#   # Force compilation with gcc-4.2
			#   ENV['CC'] = '/usr/local/bin/gcc-4.2'
			#   ENV['LD'] = '/usr/local/bin/gcc-4.2'
			#   ENV['CXX'] = '/usr/local/bin/g++-4.2'

	#	rtl-sdr fails to install on homebrew
		if you see this error during brew rtl-sdr installation,
		Error: Failed while executing git clone
	##	(under review) follow these instructions as per https://github.com/titanous/homebrew-gnuradio/issues/43
			and https://github.com/Homebrew/homebrew/issues/25751
		head "git://sigrok.org/libserialport.git",
  			:using => Class.new(GitDownloadStrategy) { def support_depth?; false; end }
	##	(under review) type this as per instructed http://stackoverflow.com/questions/14113427/brew-update-failed
		cd $(brew --prefix)
		git reset --hard HEAD
		brew update


COMMON_ERRORS




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




