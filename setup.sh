#!/bin/bash
# Simple setup.sh for configuring Ubuntu 14.04 LTS EC2 instance
# for headless setup. 

#Sort out locale errors in EC2 
cd $HOME
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo locale-gen en_US.UTF-8

#Unnecessary in Ubuntu 16.04
#sudo dpkg-reconfigure locales

# Get ready for update
sudo apt-get update


# -----Basic module----
sudo apt-get install -y git curl


# -----Emacs-------
sudo apt-get install -y emacs24


#Install Postgres
sudo apt-get install -y postgresql postgresql-contrib


# -----Python--------
sudo apt-get -y install python3-pip
sudo pip3 install virtualenv
