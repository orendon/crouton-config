Crouton-Config
==============

Crouton-Config contains scripts for configuring a new crouton install.

* Does not include dotfiles.
* Installed applications based on ARM for S3 Chromebook.
* Replaces the obsolete s3dotfiles repository.

Requirements
------------

* Chromebook
* Command line ablility
* About 1 hour of your time

Steps
-----

### 1. Install Crouton with 13.10 and XFCE

* [https://github.com/dnschneid/crouton](https://github.com/dnschneid/crouton)
* `sudo sh -e ~/Downloads/crouton -r saucy -t xfce`

### 2. Clone this github project into $HOME/dotfiles:

* `sudo apt-get install -y git`
* `git clone https://github.com/aaronhalford/crouton-config`

### 3. Run the setup scripts in this order:

* `./01-setup-core.sh`
* Log out and back in to enable zsh
* `./02-setup-apps.sh`
* `./03-setup-theme.sh`
* `./04-setup-xfce.sh`

