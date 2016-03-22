#!/bin/bash

echo "\nInstalling Spotify\n"
echo "\nAdding key\n"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

echo "\nAdding spotify to sources list\n"
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update

echo "\nInstalling Spotify through APT\n"
sudo apt-get install spotify-client
