#!/bin/bash

echo "Installing packages..."
echo ""

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
echo ""

# Install packages from apt
sudo apt update && apt upgrade
sudo apt install vim tmux xclip pigpio cppman cppcheck cmake xserver-xorg xterm xinit --assume-yes

# Clone submodules (tmux-plugin)
git submodule init
git submodule update

echo "All packages installed!"
echo ""
echo ""

echo "Copying files to appropriate places..."
echo ""
mkdir -p ~/.config/micro

cp ./.bashrc ~/
cp ./.tmux.conf ~/
cp ./.xinitrc ~/
cp ./.Xresources ~/
cp ./settings.json ~/.config/micro
cp -r ./tmux ~/

echo "BDE successfully installed. Happy Coding!"
echo ""
echo "Next step is to clone the software:"
echo "git clone https://gitlab.cc-asp.fraunhofer.de/bogy/ameise.git"
echo ""
echo ""

cd ~
