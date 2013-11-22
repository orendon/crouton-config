#!/bin/sh

## Welcome to part 1 of the Samsung Chromebook ARM laptop script!
## This script will install zsh and prerequisites.

### fancy_echo()
fancy_echo() {
  printf "\n%b\n" "$1"
}

### Prerequisites
fancy_echo "Updating application sources ..."
sudo apt-get update

fancy_echo "Installing wget..."
sudo apt-get install -y wget

fancy_echo "Installing curl ..."
sudo apt-get install -y curl

fancy_echo "Installing zsh ..."
sudo apt-get install -y zsh

fancy_echo "Changing your shell to zsh ..."
chsh -s `which zsh`

### Goodbye
fancy_echo "Your shell will now restart to apply changes."
exec `which zsh` -l
