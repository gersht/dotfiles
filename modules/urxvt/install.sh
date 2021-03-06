#!/bin/bash

echo ""
echo "========================================"
echo "Installing rxvt"
echo "========================================"
sudo apt-get install -y rxvt-unicode-256color

DIR=$(dirname "${BASH_SOURCE[0]}")
DIR=$(cd -P $DIR && pwd)

ln -sf "$DIR/.Xdefaults" ~/.Xdefaults

# use urxvt as the default
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt
