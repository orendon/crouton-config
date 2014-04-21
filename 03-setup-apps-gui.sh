#!/usr/bin/env zsh
## This script will install gui applications.

### Refresh
sudo apt-get update
sudo apt-get -y upgrade

### Install gui applications
sudo apt-get install -y calibre
sudo apt-get install -y chromium-browser
sudo apt-get install -y deluge
sudo apt-get install -y firefox
sudo apt-get install -y gedit
sudo apt-get install -y gimp
sudo apt-get install -y inkscape
sudo apt-get install -y keepassx
sudo apt-get install -y libreoffice
sudo apt-get install -y zathura

### Goodbye
echo "Finished."
