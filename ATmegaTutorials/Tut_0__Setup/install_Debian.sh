sudo apt-get install avrdude gcc-avr avr-libc git-core build-essential checkinstall

cp .avrduderc ~
sudo cp 50-avr-programmers.rules /etc/udev/rules.d/
sudo cp .avrduderc /root/ # For `sudo make flash`
