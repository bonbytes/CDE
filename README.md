# BogyDevelopmentEnvironment (BDE)

## Description
This repository offers useful files and plugins regarding console development including mouse-support using xserver and xterm in combination with tmux and micro. 
There is an install script, which installs necessary packages and copies relevant dotFiles of BDE into respective places.

## Installation
* Run install script via `./install.sh`. 
* Grab a cup of coffee
* Reboot machine via `sudo reboot`.

#### Notes on installed files
* tmux/ folder has to be placed into ~ to function properly. It includes the tmux-resurrect plugin which is able to save and restore tmux-sessions.
* .tmux.conf is a user config-file for tmux. It has to be placed in ~ to be automatically detected by tmux at startup.
* .bashrc is the bash init script for the user. It is called when a new bash is spawned.
* .Xresources is a resources file of xserver, which will be loaded by .xinitrc via xrdb -merge.
* .xinitrc is called when xserver starts. It loads the .Xresources and spawns an indestructible, beatiful xterm window.
* settings.json is the settings file of micro. It has to be copied into ~/.conf/micro (thus, micro has to be started once)

## Development workflow
After reboot, xserver should automatically start once and spawn an indestructible xterm-window with mouse-support. To access multiple panes per console display, use tmux (see below).
### Initial tmux setup
* Start tmux via `tmux`.
* Set-up tmux as you like. 
Suggestion: `[Ctrl+a] /`, `[Ctrl+a] -`, `[Ctrl+a] c`, `[Ctrl+a] ,`, enter name: htop, `[Ctrl+a] p`, `[Ctrl+a] ,`, enter name: dev 
* Hit `[Ctrl+a] [Ctrl+s]`  to save session layout (this makes it persistent against rebooting / shut-down of tmux-server).
* Start developing.
Suggestion: West: micro, north-east: include files (micro) or man pages, south-east: generic console 
### Restore tmux setup (in any other case than initial setup):
* Start tmux via `tmux`.
* Hit `[Ctrl+a] [Ctrl+r]` to restore saved session.
* Start developing.

<br/><br/>
Have a lot of fun!
