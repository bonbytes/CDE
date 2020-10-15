#!/bin/bash

# Install micro editor
MICRO=/usr/bin/micro
if [ -f "$MICRO" ]; then
    echo "$MICRO already exists!"
else
    echo "$MICRO does not exist!"
    echo "Going to install it with curl..."
    curl https://getmic.ro | bash
    echo "Copy micro to /usr/bin to make it accessible..."  
    sudo mv ./micro /usr/bin
    echo "micro successfully installed!"    
fi

# Install packages from apt
sudo apt update && apt upgrade
sudo apt install vim tmux xclip pigpio cppman cppcheck cmake xserver-xorg xterm xinit --assume-yes

# Clone submodules (tmux-plugin)
git submodule init
git submodule update

