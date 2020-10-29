# ConsoleDevelopmentEnvironment (CDE)

## Table of contents
* [General info](#general-info)
* [Installation](#installation)
* [Development workflow](#development-workflow)

## General info
This repository offers useful files and plugins regarding console development including mouse-support using xserver and xterm in combination with tmux and micro. 
There is an installation script, which gets necessary packages and copies dotFiles of CDE into respective places.
Since the install-script overwrites xserver-related settings, it should only be executed from "console-only" machines which are in an early stage of set-up. 

### Side-Note
This repository was created to enable a smoother development experience on lower-performance machines, especially Raspberry Pi Zero W.

## Installation
* Run install script via `./install.sh`. 
* Grab a cup of coffee
* Reboot machine via `sudo reboot`.

#### Notes on installed files
* .tmux/ folder has to be placed into ~ to function properly. It includes the tmux-resurrect and tmux-continuum plugin which is able to save and restore tmux-sessions and automatically do those tasks, respectively.
* .tmux.conf is a user config-file for tmux. It has to be placed in ~ to be automatically detected by tmux at startup.
* .bashrc_additions are some useful lines which are appended to ~/.bashrc. ~/.bashrc is called when a new bash is spawned.
* .Xresources is a resources file of xserver, which will be loaded by .xinitrc via xrdb -merge.
* .xinitrc is called when xserver starts. It loads the .Xresources and spawns an indestructible, beatiful xterm window.
* settings.json is the settings file of micro text editor. It has to be copied into ~/.conf/micro

## Development workflow
After reboot, xserver should automatically start once and spawn an indestructible xterm-window with mouse-support. To access multiple panes and windows per console display, use tmux (see below).
### Initial tmux setup
* Start tmux via `tmux`.
* Set-up tmux as you like. 
Suggestion: `[Ctrl+a] /`, `[Ctrl+a] -`, `[Ctrl+a] c`, `[Ctrl+a] ,`, enter name: htop, `[Ctrl+a] p`, `[Ctrl+a] ,`, enter name: dev
* Hit `[Ctrl+a] $` and give the session a useful name (CDE could be a great name). 
* Hit `[Ctrl+a] s`  to save session layout (this makes it persistent against rebooting / shut-down of tmux-server).
* Start developing.
(Suggestion: West: micro, north-east: include files (micro) or man pages, south-east: generic console)
### Restore tmux setup (in any other case than initial setup):
* Start tmux via `tmux`.
* Hit `[Ctrl+a] r` to restore saved session (tmux-continuum should do this task for you automatically).
* Start developing.

<br/><br/>
Have a lot of fun!
