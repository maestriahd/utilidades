#!/bin/bash

#Script de instalacion de herramientas de uso comun
# para el laboratorio de creacion digital
# Maestria en Humanidades Digitales, Universidad de los Andes


# homebrew
USR = ${USERNAME}
sudo -u $USR yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

sudo -u $USR brew install git wget mc

sudo -H easy_install pip

sudo -H pip install virtualenv

sudo -H pip install virtualenvwrapper --ignore-installed six


sudo -u $USR brew install nvm

sudo -u $USR touch $HOME/.bashrc
sudo -u $USR echo "export WORKON_HOME=~/.envs" >> $HOME/.bashrc
sudo -u $USR echo ". /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
sudo -u $USR echo "export NVM_DIR=$HOME/.nvm" >> $HOME/.bashrc
sudo -u $USR echo ". /usr/local/opt/nvm/nvm.sh" >> $HOME/.bashrc

sudo -u $USR . $HOME/.bashrc

sudo -u $USR nvm install -g node

sudo -u $USR npm install -g gulp-cli grunt-cli bower

gem install jekyll

brew install pandoc
