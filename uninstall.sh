#!/usr/bin/env bash

# Remove Bright-Pi
rm -R /home/pi/Code/Bright-Pi
rm /usr/local/bin/brightpi*

# Remove camera-gui
rm -R /home/pi/Code/pupillometry-raspi

# Reboot raspberry
whiptail --msgbox "Bright-Pi and pupillometry-raspi successfully uninstalled" 8 40
