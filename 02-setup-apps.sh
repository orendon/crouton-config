#!/usr/bin/env zsh
## This script will install core applications.

### fancy_echo()
fancy_echo() {
  printf "\n%b\n" "$1"
}

### Prepare for Install
fancy_echo "Starting in root of home users directory..."
cd $HOME

fancy_echo "Updating and upgrading..."
sudo apt-get update
sudo apt-get -y upgrade

fancy_echo "Installing Dependancies..."
sudo apt-get install -y g++
sudo apt-get install -y make

### PPAs
### add here so apt-get update/upgrade are only run once
fancy_echo "Fixing add-apt-repository errors..."
sudo apt-get install -y software-properties-common
sudo apt-get install -y python-software-properties

fancy_echo "Updating and upgrading..."
sudo apt-get update
sudo apt-get -y upgrade

### General Applications
fancy_echo "Installing command line applications..."
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
sudo apt-get install -y ncdu
sudo apt-get install -y nmap
sudo apt-get install -y nmon
sudo apt-get install -y pdftk
sudo apt-get install -y pv
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y slurm
sudo apt-get install -y tmux
sudo apt-get install -y tree
sudo apt-get install -y vim
sudo apt-get install -y vnstat
sudo apt-get install -y watch
sudo apt-get install -y whois
sudo apt-get install -y xclip
sudo apt-get install -y youtube-dl

fancy_echo "Installing small gui applications..."
sudo apt-get install -y chromium-browser
sudo apt-get install -y deluge
sudo apt-get install -y fbreader
sudo apt-get install -y firefox
sudo apt-get install -y gedit
sudo apt-get install -y keepassx
sudo apt-get install -y klavaro
sudo apt-get install -y liferea
sudo apt-get install -y mupdf
sudo apt-get install -y typecatcher

fancy_echo "Installing large gui applications..."
sudo apt-get install -y gimp
sudo apt-get install -y inkscape
sudo apt-get install -y libreoffice

### Oh-My-ZSH
fancy_echo "Installing oh my zsh..."
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

fancy_echo "Reloading zshrc..."
source ~/.zshrc

### awscli
fancy_echo "Installing Amazon Web Services command line tools (awscli) via pip..."
sudo apt-get install -y python-pip
sudo pip install awscli

### Dungeon Crawl Stone Soup
fancy_echo "Adding Dungeon Crawl Stone Soup deb to /etc/apt/sources.list..."
#sudo echo 'deb http://crawl.develz.org/debian crawl 0.13' >> /etc/apt/sources.list
echo "deb http://crawl.develz.org/debian crawl 0.13" | sudo tee -a /etc/apt/sources.list

fancy_echo "Installing Dungeon Crawl Stone Soup signing key..."
wget http://crawl.develz.org/debian/pubkey -O - | sudo apt-key add -

fancy_echo "Updating sources and installing crawl (ascii version)..."
sudo apt-get update
sudo apt-get install -y crawl

### goodbye
fancy_echo "Finished."
