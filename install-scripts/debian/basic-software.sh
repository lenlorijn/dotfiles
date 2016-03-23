#!/bin/bash

echo "\nInstalling basic software\n"
sudo apt-get install -y git git-core htop rar unrar iw weechat-curses vim wget curl terminator
curl https://bootstrap.pypa.io/get-pip.py | sudo python
echo "\nInstalled basic software\n"
