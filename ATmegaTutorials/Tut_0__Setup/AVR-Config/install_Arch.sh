sudo pacman -S avrdude avr-gcc avr-libc git-core build-essential

mv .avrduderc ~
sudo mv 50-avr-programmers.rules /etc/udev/rules.d/
sudo cp .avrduderc /root/ # For `sudo make flash`
