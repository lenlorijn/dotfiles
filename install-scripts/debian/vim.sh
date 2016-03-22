#!/bin/bash
echo "\nInstalling vim\n"
sudo apt-get install -y vim

echo "\nInstalling vim settings\n"
cd ~
git clone --recursive https://github.com/lenlorijn/vim.git .vim
