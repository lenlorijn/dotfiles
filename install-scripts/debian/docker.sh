#!/bin/bash
echo "\nInstalling Docker\n"
echo "\nPurging possible old installs\n"
sudo apt-get purge lxc-docker*
sudo apt-get purge docker.io*

echo "\nInstalling apt tools required for docker setup\n"
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates

echo "\nSetting up key for docker apt repository\n"
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "\nAdding docker wheezy apt repository to sources\n"

touch /etc/apt/sources.list.d/docker.list
echo "deb https://apt.dockerproject.org/repo debian-wheezy main" > /etc/apt/sources.list.d/docker.list 

echo "\nInstalling docker through apt\n"
sudo apt-get update
sudo apt-get install docker-engine

echo "\nInstalling docker-compose through pip\n"
sudo pip install docker-compose

echo "\nMake docker group\n"
sudo groupadd docker

echo "\nAdding current user to group\n"
sudo gpasswd -a ${USER} docker

