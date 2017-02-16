#!/bin/bash

#Script de instalacion de herramientas de uso comun
# para el laboratorio de creacion digital
# Maestria en Humanidades Digitales, Universidad de los Andes


# homebrew
USR = ${USERNAME}
sudo -u ${USERNAME} yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

sudo -H easy_install pip

sudo -H pip install virtualenv

sudo -H pip install virtualenvwrapper --ignore-installed six

sudo -u ${USERNAME} brew install nvm

sudo -u ${USERNAME} touch $HOME/.bashrc
sudo -u ${USERNAME} echo "export WORKON_HOME=~/.envs" >> $HOME/.bashrc
sudo -u ${USERNAME} echo ". /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
sudo -u ${USERNAME} echo "export NVM_DIR=$HOME/.nvm" >> $HOME/.bashrc
sudo -u ${USERNAME} echo ". /usr/local/opt/nvm/nvm.sh" >> $HOME/.bashrc

sudo -u ${USERNAME} . $HOME/.bashrc

sudo -u ${USERNAME} nvm install -g node

sudo -u ${USERNAME} npm install -g gulp-cli grunt-cli bower

gem install jekyll

brew install pandoc
