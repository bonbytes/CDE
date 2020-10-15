# BogyDevelopmentEnvironment (BDE)

## Description
This repository offers useful files and plugins regarding console development including mouse-support. 
Also, there are bash-scripts to install micro (awesome text-editor, best in class for console development. Beats vim and nano) and needed packages (or at least, recommended) to create a great console development experience including mouse support.

## Installation
First, run "install-packages.sh"
<br/>
./install-packages.sh
<br/>
Run "install-environment", to place all files and folders to the respective place
<br/>
./install-environment

### Notes on installed files
/tmux folder has to be placed into ~ to function properly. It includes the tmux-resurrect plugin which may save and restore tmux-sessions ([prefix] Ctrl+s or [prefix] Ctrl+r respectively).
<br/><br/>
.tmux.conf is a user config-file for tmux. Has to be placed in ~ to be automatically detected by tmux at startup.
<br/><br/>
.bashrc is the bash init script for the user. It is called when a new bash is spawned.
<br/><br/>
.xinitrc is called when x starts. It loads the .Xresources and then spawns an indestructible, beatiful xterm window
<br/><br/>
settings.json is the settings file of micro and has to be copied into ~/.conf/micro (thus, micro has to be started once)

## Development
Initial setup:
<br/>
tmux
<br/>
Set-up tmux as you like. Suggestion: [Ctrl+a] / [Ctrl+a] -> [Ctrl+a] - [Ctrl+a] c [Ctrl+a] , "name here" [Ctrl+a] p [Ctrl+a] , "name here" 
<br/>
[Ctrl+a] [Ctrl+s]  to save session layout (this makes it persistent against rebooting / shut-down of tmux-server
<br/>
Start developing
<br/><br/>
To restore setup (after reboot):
<br/>
tmux
<br/>
[Ctrl+a] [Ctrl+r]
<br/>
Start developing.
<br/><br/><br/>
Have a lot of fun!
