#!/bin/bash

echo "creating git aliases"
git config --global alias.st "status"
git config --global alias.cm "commit -m"
git config --global alias.cma "commit -am"
git config --global alias.pl "pull"
git config --global alias.ps "push"
git config --global alias.df "diff"
git config --global alias.co "checkout"
git config --global alias.a "add"
git config --global alias.br "branch"
git config --global alias.cl "!git clone git@github.com:\"\$1\" #"
