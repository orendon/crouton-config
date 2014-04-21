#!/bin/sh
## This script will install zsh and prerequisites.

### Prerequisites
sudo apt-get update
sudo apt-get install -y wget
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install -y build-essential
sudo apt-get install -y zsh

### Bash is ok, ZSH is better.
echo "Changing your shell to ZSH"
chsh -s `which zsh`

### Goodbye
echo "Your shell will now restart to apply changes."
exec `which zsh` -l
