#!/bin/bash

#Script de instalacion de herramientas de uso comun
# para el laboratorio de creacion digital
# Maestria en Humanidades Digitales, Universidad de los Andes


# homebrew

yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# git wget mc
brew install git wget mc

#instala pip, virtualenv and virtualenvwrapper como superusuario
sudo -s <<EOF

sudo -H easy_install pip

sudo -H pip install virtualenv

sudo -H pip install virtualenvwrapper --ignore-installed six
EOF
#node version manager
brew install nvm

#configura variables de entorno en .basrc y en la shell actual
touch $HOME/.bashrc
echo "export WORKON_HOME=~/.envs" >> $HOME/.bashrc
echo ". /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
echo "export NVM_DIR=$HOME/.nvm" >> $HOME/.bashrc
echo ". /usr/local/opt/nvm/nvm.sh" >> $HOME/.bashrc

export NVM_DIR=~/.nvm
. /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.envs
. /usr/local/opt/nvm/nvm.sh

#instala la version estable de nodejs
nvm install node

#gulp grunt bower
npm install -g gulp-cli grunt-cli bower

#pandoc
brew install pandoc

#jekyll como sudo
sudo -s <<EOF
gem install jekyll

EOF
