Crouton-Config
==============

Crouton-Config contains scripts for configuring a new Ubuntu 14.04 XFCE based crouton install on a chromebook.

* No dotfiles (provide your own).
* Enables ZSH with OH-MY-ZSH..
* Installs command line and gui applications.
* Sets Numix window theme.
* Sets Solarized Dark terminal theme.
* Sets Faneza icon theme.
* Configures XFCE environment panels and settings.
* Installs the Ubuntu Font Family (and sets it for terminal and gui use)
* Tested on Samsung S3 Chromebobk with ARM processor.

Requirements
------------

* Chromebook
* Command line ablility
* About 1 hour of your time

Steps
-----

### 1. Install Crouton with Ubuntu 14.04 and XFCE

* [https://github.com/dnschneid/crouton](https://github.com/dnschneid/crouton)
* `sudo sh -e ~/Downloads/crouton -r trusty -t xfce`

### 2. Clone this github project into $HOME/dotfiles:

* `sudo apt-get install -y git`
* `git clone https://github.com/aaronhalford/crouton-config`

### 3. Run the setup scripts in this order:

* `./01-setup-core.sh`
* Log out and back in to enable zsh
* `./02-setup-apps.sh`
* `./03-setup-xfcetheme.sh`

