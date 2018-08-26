#!/bin/bash

if [ "$1" = "" ]
then
    echo "usage example: ./deploy.sh \"sudo apt-get install\""
fi

# setup

mkdir ~/bin
mkdir ~/repos
mkdir ~/passive-repos

# installing stuff
INSTALL_CMD="$1"
echo "installing programs"
$INSTALL_CMD nvim zsh curl git fzf
chsh -s $(which zsh)

echo "installing vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "installing z"
git clone https://github.com/rupa/z.git ~/passive-repos/z

./deploy.sh
