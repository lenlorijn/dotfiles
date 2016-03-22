#!/bin/bash

echo "Installing ZSH \n"

sudo apt-get install -y zsh

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`
echo "\n\n ZSH Installed \n"
