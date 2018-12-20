#!/usr/bin/env bash

# Remove Bright-Pi
rm -R /home/pi/Code/Bright-Pi
rm /usr/local/bin/brightpi*

# Remove camera-gui
rm -R /home/pi/Code/camera-gui

# Reboot raspberry
whiptail --msgbox "Bright-Pi and camera-gui successfully uninstalled" 8 40
