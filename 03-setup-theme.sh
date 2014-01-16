#!/usr/bin/env zsh
## This script configures optional environment settings and themes.

### fancy_echo()
fancy_echo() {
  printf "\n%b\n" "$1"
}

### XFCE4 Terminal Colorscheme
fancy_echo "Installing base16-solarized-dark colorscheme for xfce4 terminal..."
if [[ ! -d "$HOME/.config/xfce4/terminal" ]]; then
  mkdir -p $HOME/.config/xfce4/terminal
fi
git clone https://github.com/chriskempson/base16-xfce4-terminal $HOME/tmp/base16-xfce4-terminal
mv $HOME/tmp/base16-xfce4-terminal/* $HOME/.config/xfce4/terminal
cp $HOME/.config/xfce4/terminal/base16-solarized.dark.terminalrc $HOME/.config/xfce4/terminal/terminalrc

### Terminal Font Fix (Powerline, Airline, and ZSH themes need this!)
fancy_echo "Installing powerline corrected font for symbols..."
if [[ ! -d "$HOME/.fonts" ]]; then
  mkdir -p $HOME/.fonts/
fi
if [[ ! -d "$HOME/.config/fontconfig/conf.d" ]]; then
  mkdir -p $HOME/.config/fontconfig/conf.d
fi
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf 
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
if [[ -f "PowerlineSymbols.otf" ]]; then
  mv PowerlineSymbols.otf $HOME/.fonts/
  fc-cache -vf $HOME/.fonts
fi
if [[ -f "10-powerline-symbols.conf" ]]; then
  mv 10-powerline-symbols.conf $HOME/.config/fontconfig/conf.d/
fi

### Faenza Icons
fancy_echo "Installing Faenza Icons..."
mkdir -p ~/.icons && cd ~/.icons && wget https://launchpad.net/~tiheum/+archive/equinox/+files/faenza-icon-theme_1.3.1.tar.gz && tar -zxvf faenza-icon-theme_1.3.1.tar.gz && cd .. && cp -a ~/.icons/faenza-icon-theme-1.3/Faenza* ~/.icons/
cd $HOME

### Install Ubuntu Font Family
sudo apt-get install ttf-ubuntu-font-family

### DockbarX
sudo add-apt-repository -y ppa:dockbar-main/ppa
sudo apt-get update
sudo apt-get install -y dockbarx
sudo apt-get install -y dockbarx-themes-extra

### Goodbye
fancy_echo "Finished."
