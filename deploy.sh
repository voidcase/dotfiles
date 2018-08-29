#!/bin/bash

# nvim
NVIM=~/.config/nvim
mkdir -p $NVIM
echo "copying dotfiles"
cp nvim/init.vim $NVIM
cp -r nvim/ftplugin/ $NVIM/ftplugin
nvim -c "PlugInstall" -c "qa!"

# zsh
cp ./zshrc ~/.zshrc

# git
./git_aliases.sh
