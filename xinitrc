#!/bin/bash

xrdb -merge ~/.Xresources && while [ 1 ]; do xterm -maximized; done
