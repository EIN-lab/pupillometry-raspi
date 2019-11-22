#!/usr/bin/env bash

# Create Code folder and cd into it
mkdir -p /home/pi/Code
cd /home/pi/Code

# Clone into pupillometry repository
git clone https://github.com/EIN-lab/pupillometry-raspi.git

# Enable camera
sudo raspi-config nonint do_camera 0

# Enable I2C for BrightPi control
sudo raspi-config nonint do_i2c 0

# Install python-smbus if not installed
sudo apt-get install python-smbus -y

# Install python dependencies for CamGUI.py
python -m pip install tqdm simplejson

# Clone into BrightPi repository and run install script
git clone https://github.com/PiSupply/Bright-Pi.git
cd Bright-Pi
sudo python setup.py install

# Reboot raspberry
whiptail --msgbox "The system will now reboot" 8 40
sudo reboot
