#!/usr/bin/env zsh
## This script will install core applications

### Fix potential add-apt-repository errors
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y python-software-properties
sudo apt-get install -y software-properties-common

### Install command line applications
sudo apt-get install -y ack-grep
sudo apt-get install -y android-tools-adb
sudo apt-get install -y android-tools-fastboot
sudo apt-get install -y cmatrix
sudo apt-get install -y cmus
sudo apt-get install -y dnsutils
sudo apt-get install -y dstat
sudo apt-get install -y dtrx
sudo apt-get install -y elinks
sudo apt-get install -y feh
sudo apt-get install -y fortune-mod
sudo apt-get install -y git
sudo apt-get install -y htop
sudo apt-get install -y imagemagick
sudo apt-get install -y irssi
sudo apt-get install -y lftp
sudo apt-get install -y locate
sudo apt-get install -y lshw
sudo apt-get install -y lsof
sudo apt-get install -y nano
sudo apt-get install -y newsbeuter
sudo apt-get install -y ncdu
sudo apt-get install -y nmap
sudo apt-get install -y nmon
sudo apt-get install -y pdftk
sudo apt-get install -y pv
sudo apt-get install -y rtorrent
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y slurm
sudo apt-get install -y tmux
sudo apt-get install -y tree
sudo apt-get install -y vim
sudo apt-get install -y vnstat
sudo apt-get install -y watch
sudo apt-get install -y whois
sudo apt-get install -y xsel
sudo apt-get install -y youtube-dl

### Install gui applications
# sudo apt-get install -y calibre
# sudo apt-get install -y chromium-browser
# sudo apt-get install -y deluge
# sudo apt-get install -y gedit
# sudo apt-get install -y gimp
# sudo apt-get install -y inkscape
# sudo apt-get install -y keepassx
# sudo apt-get install -y libreoffice
# sudo apt-get install -y zathura

### Install Oh-My-ZSH
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
source ~/.zshrc

### Goodbye
echo "Finished."
