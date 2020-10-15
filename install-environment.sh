#!/bin/bash

git submodule init
git submodule update

cp ./.bashrc ~/
cp ./.tmux.conf ~/
cp ./.xinitrc ~/
cp ./.Xresources ~/
cp ./settings.json ~/.conf/micro
cp -r ./tmux ~/

cd ~
