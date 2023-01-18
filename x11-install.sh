#!/bin/sh

yes | apt-get update && yes | apt-get upgrade
yes | apt-get install xserver-xorg
yes | apt-get install xinit
yes | apt-get install x11-server-utils
