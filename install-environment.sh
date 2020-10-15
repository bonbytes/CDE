#!/bin/bash

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

cd ~
