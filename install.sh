##!/bin/bash

echo "Installing packages..."
echo ""

# Install micro editor
MICRO=/usr/local/bin/micro
if [ -f "$MICRO" ]; then
    echo "$MICRO already exists!"
else
    echo "$MICRO does not exist!"
    echo "Going to install it with curl..."
    curl https://getmic.ro | bash
    echo "Copy micro to /usr/local/bin to make it accessible..."  
    sudo mv ./micro /usr/local/bin
    echo "micro successfully installed!"    
fi
echo ""

# Install packages from apt
sudo apt update
sudo apt upgrade
sudo apt install vim tmux xclip cppman cppcheck cmake xserver-xorg xterm xinit x11-xserver-utils --assume-yes

# Only for RasPi
sudo apt install pigpio --assume-yes

# Clone submodules (tmux-plugins)
git submodule init
git submodule update

echo "All packages installed!"
echo ""
echo ""

echo "Copying files to appropriate places..."
echo ""
mkdir -p ~/.config/micro

# Append text from bashrc_additions
echo 'source ~/.cde/bashrc_additions' >> ~/.bashrc

cp ./tmux.conf ~/.tmux.conf
cp ./xinitrc ~/.xinitrc
cp ./Xresources ~/.Xresources
cp ./settings.json ~/.config/micro

# copy .tmux folder
cp -r ./tmux/ ~/.tmux

# copy template-project
#cp -r ./template/ ~/hello

# move CDE folder to ~/.cde
cd ..
mv ./CDE/ ~/.cde
cd ~

echo "CDE successfully installed to ~/.cde/"
echo "Happy Coding!"
#echo "Template-Project (hello) has been copied to ~"
echo ""
echo ""
