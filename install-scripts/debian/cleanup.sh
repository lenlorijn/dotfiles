#!/bin/bash

echo "\nCleanup... \n"
echo "\nRemoving unwanted packages \n"
sudo apt-get -y purge zeitgeist zeitgeist-core zeitgeist-datahub python-zeitgeist rhythmbox-plugin-zeitgeist geoclue geoclue-ubuntu-geoip geoip-database whoopsie popularity-contest

echo "\nautoclean and remove \n"
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove

echo "\nremove standard unused folders \n"
rm -rf ~/Public/
rm -rf ~/Templates/
rm -rf ~/Videos

echo "\nDone cleaning up \n"
