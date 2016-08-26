#!/bin/bash

# Simple script to reinstall the broadcom-wl Wifi driver
#
# After upgrading the linux kernel, Wifi stops working. This script
# reinstalls the broadcom-wl driver from a local copy of the package.
#
# This script reinstalls the broadcom-wl driver only. It does not install
# any of the other supported broadcom drivers
#
# Matt Adams (matt@offhourscoding.com)


echo "---- Install broadcom driver ----"
echo "================================="
sudo pacman -U broadcom-wl-6.30.223.271-3-x86_64.pkg.tar.xz 

read -p "Would you like to reboot your computer now [y/n] ? " yn
case $yn in
  [Yy]* ) sudo reboot;;
  [Nn]* ) echo "Okay. WiFi won't work until after reboot"
esac
