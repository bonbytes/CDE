# BogyDevelopmentEnvironment (BDE)

## Description
This repository offers useful files and plugins regarding console development including mouse-support using xserver and xterm in combination with tmux and micro. 
There is a bash-script to install micro (awesome text-editor, best in class for console development. Beats vim and nano) and needed packages to create a great console development experience including mouse support. Afterwards, it copies the needed dotFiles into respective places of ~.

## Installation
Run install script via `./install.sh` to install all packages and place all files and folders to the appropriate places.
Then reboot `sudo reboot`.

#### Notes on installed files
* /tmux folder has to be placed into ~ to function properly. It includes the tmux-resurrect plugin which may save and restore tmux-sessions.
* .tmux.conf is a user config-file for tmux. Has to be placed in ~ to be automatically detected by tmux at startup.
* .bashrc is the bash init script for the user. It is called when a new bash is spawned.
* .xinitrc is called when x starts. It loads the .Xresources and then spawns an indestructible, beatiful xterm window
* settings.json is the settings file of micro and has to be copied into ~/.conf/micro (thus, micro has to be started once)

## Development
After reboot, start xserver via `startx`. This will call .xinitrc and thus spawns an indestructible xterm-window with mouse-support.
### Initial tmux setup
* Start tmux via `tmux`.
* Set-up tmux as you like. 
Suggestion: `[Ctrl+a] /`, `[Ctrl+a] ->`, `[Ctrl+a] -`, `[Ctrl+a] c`, `[Ctrl+a] ,` "name here", `[Ctrl+a] p`, `[Ctrl+a] ,` "name here" 
* Hit `[Ctrl+a] [Ctrl+s]`  to save session layout (this makes it persistent against rebooting / shut-down of tmux-server).
* Start developing.
### Restore tmux setup (in any other case than initial setup):
* Start tmux via `tmux`.
* Hit `[Ctrl+a] [Ctrl+r]` to restore saved session.
* Start developing.

<br/><br/><br/>
Have a lot of fun!
