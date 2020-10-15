#!/bin/bash

# Install micro editor
curl https://getmic.ro | bash
sudo mv ./micro /usr/bin

# Install recommended packages
sudo apt install vim git xclip pigpio cppman cppcheck cmake xserver-xorg xterm --assume-yes

