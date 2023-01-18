#!/bin/sh

yes | apt-get install python python-dev python-pip python3 python3-dev python3-pip
git clone https://github.com/LeMaker/RPi.GPIO_BP
cd RPi.GPIO_BP
python3 setup.py install
cd ..
git clone https://github.com/BPI-SINOVOIP/BPI-WiringPi.git -b BPI_M2
cd BPI-WiringPi
chmod +x build
./build
cd ..
git clone https://github.com/BPI-SINOVOIP/BPI-WiringPi2-Python.git -b BPI_M2
cd BPI-WiringPi
python3 setup.py install
