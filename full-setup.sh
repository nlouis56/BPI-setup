#!/bin/sh

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Installing Python and WiringPi"
./python-install.sh
if [ $? -ne 0 ]; then
    echo "Python and WiringPi installation failed"
    exit 1
fi
echo "Successfully installed Python and WiringPi"

echo "Installing xserver and everything else"
./x11-install.sh
if [ $? -ne 0 ]; then
    echo "X11 installation failed"
    exit 1
fi
echo "Successfully installed X11"