#!/bin/bash
echo "\nInstalling Steam\n"
echo "\nStarting update and upgrade process needed to install kernel headers\n"
apt-get update
apt-get upgrade
apt-get dist-upgrade

echo "\nInstalling Linux Headers for current kernel \n"
apt-get install -y linux-headers-$(uname -r)
apt-get install nvidia-kernel-dkms

echo "\nRemoving nouveau from GRUB\n"
sed 's/quiet/quiet nouveau.modeset=0/g' -i /etc/default/grub
update-grub

echo "\nDownloading and installing steam installer\n"
wget http://media.steampowered.com/client/installer/steam.deb
sudo dpkg -i steam.deb

apt-get -f install

echo "\nEnabling Multiarch\n"
dpkg --add-architecture i386

apt-get update

echo "\nInstalling necessary 32bit libs for Steam\n"
apt-get install -y libgl1-mesa-dri:i386 libgl1-mesa-glx:i386 libc6:i386

echo "\nInstalling nvidia 32bit driver for steam\n"
apt-get install -y libgl1-nvidia-glx-i386

rm steam.deb

echo "\nSteam installed, restart required\n"
