#!/usr/bin/env zsh
## This script will install optional awsli and gcutil tools.

### fancy_echo()
fancy_echo() {
  printf "\n&b\n" "$1"
}

### awscli
fancy_echo "Installing Amazon Web Services command line tools (awscli) via pip..."
sudo apt-get install -y python-pip
sudo pip install awscli

### gcutil (can't avoid browser window for Gcloud auth)..
fancy_echo "Installing Google Cloud Compute command line tools (gcutil) ..."
curl https://dl.google.com/dl/cloudsdk/release/install_google_cloud_sdk.bash | bash
source ~/.zshrc
gcloud auth login --no launch browser
