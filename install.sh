#!/bin/bash
#
# ========================================
# Base packages
sudo apt-get install vim-gnome mercurial \
  ctags keepass2 gimp htop \
  samba libpam-smbpass \
  pysdm unrar regexxer screen \
  xfce4-terminal network-manager-gnome \
  krusader vlc

# ========================================
# Modules
./modules/mc/install.sh
./modules/i3/install.sh
./modules/zsh/install.sh
./modules/mpd/install.sh
./modules/xfce4-terminal/install.sh
./modules/ruby.sh
./modules/google.sh
./modules/jdownloader.sh
./modules/handbrake.sh
./modules/lamp.sh
./modules/java.sh

#./modules/sublimetext.sh

# ========================================
# Git
sudo apt-get install git 
git config --global --add color.ui true
