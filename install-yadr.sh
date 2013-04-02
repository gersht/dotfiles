#!/bin/zsh

source zsh/yadr.before
source vim/yadr.before

echo ""
echo "========================================"
echo "Installing Yadr"
echo "========================================"

git clone https://github.com/skwp/dotfiles ~/.yadr
cd ~/.yadr && rake install

source zsh/yadr.after
source vim/yadr.after
