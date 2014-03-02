#!/usr/bin/env zsh
## This script will install node and ruby on rails.to your Samsung S3 Chromebook

### fancy_echo()
fancy_echo() {
  printf "\n%b\n" "$1"
}

### Node.js
### ARM bug fix uses --without-snapshot for install
fancy_echo "Using git to clone node.js..."
git clone https://github.com/joyent/node.git $HOME/node

fancy_echo "Changing to node directory..."
cd $HOME/node

fancy_echo "Checking out node.js version 0.10.22..."
git checkout v0.10.22

fancy_echo "Setting node.js configure without snapshot to avoid ARM errors..."
./configure --without-snapshot

fancy_echo "Begining make command. Coffee break recommended..."
make

fancy_echo "Installing node.js 0.10.22 from source..."
sudo make install

fancy_echo "Returning to home directory..."
cd $HOME

fancy_echo "Adding node to PATH ..."
echo 'export PATH=$PATH:/opt/node/bin' >> .zshrc

fancy_echo "Reloading zshrc..."
source ~/.zshrc

### rvm + ruby
fancy_echo "Installing RVM and current stable version of Ruby..."
\curl -L https://get.rvm.io | bash -s stable --ruby

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> .zshrc

fancy_echo "Reloading zshrc..."
source ~/.zshrc

### Rubygems
fancy_echo "Updating ruby gems..."
sudo gem update --system

fancy_echo "Installing ruby gem for bundler with no documentation..."
sudo gem install bundler --no-document

fancy_echo "Installing ruby gem for rails with no documentation..."
sudo gem install rails --no-document
