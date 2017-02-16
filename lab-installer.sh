#!/bin/bash

#Script de instalacion de herramientas de uso comun
# para el laboratorio de creacion digital
# Maestria en Humanidades Digitales, Universidad de los Andes


# homebrew
USR = ${USERNAME}
yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git wget mc
sudo -s <<EOF

sudo -H easy_install pip

sudo -H pip install virtualenv

sudo -H pip install virtualenvwrapper --ignore-installed six
EOF

brew install nvm

touch $HOME/.bashrc
echo "export WORKON_HOME=~/.envs" >> $HOME/.bashrc
echo ". /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
echo "export NVM_DIR=$HOME/.nvm" >> $HOME/.bashrc
echo ". /usr/local/opt/nvm/nvm.sh" >> $HOME/.bashrc

export NVM_DIR=~/.nvm
. /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.envs
. /usr/local/opt/nvm/nvm.sh

nvm install node

npm install -g gulp-cli grunt-cli bower


brew install pandoc

sudo -s <<EOF
gem install jekyll

EOF
