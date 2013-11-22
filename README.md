S3-Config
===========

S3-Config contains scripts for configuring a new chroot on a Samsung S3 Chromebook. This repo does not include dotfiles and replaces the obsolete s3dotfiles repository.

Requirements
------------

* Samsung S3 Chromebook
* Command line ablility
* About 1 hour of your time

Steps
-----

### 1. Install Crouton with 13.10 and XFCE

[https://github.com/dnschneid/crouton](https://github.com/dnschneid/crouton)

```sudo sh -e ~/Downloads/crouton -r saucy -t xfce```

### 2. Clone this github project into $HOME/dotfiles:

```sudo apt-get install -y git```
```git clone https://github.com/aaronhalford/s3dotfiles $HOME/dotfiles```

### 3. Run the setup scripts in this order:

* ```./01-setup-core.sh```
* Log out and back in to enable zsh
* ```./02-setup-apps.sh```
* ```./03-setup-theme.sh```

### 4. Setup XFCE

Read and do the steps in ```04-setup-xfce-guide.md```

### 5. Optional Node and Rails installer

If you are not working on code remotely, you can install a functional version of Ruby on Rails and Node with `99-optional-setup-node-and-rails.sh`. Take a coffee break because the S3's ARM processor will take 20+ minutes to compile node and ruby from source.

Improvement
-----------

This project was cobbled together after one too many delete-chroot commands. It certainly can be improved so don't be shy about making pull requests or forking the project for your own use.
