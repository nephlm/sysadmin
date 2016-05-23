#! /bin/sh

# installs pyenv for the current user

REPO_NAME=sysadmin
USERNAME=nephlm
PY_VERSION = 3.5.1

INSTALL_DIR=/opt
GITHUB=https://github.com

sudo apt-get install curl git-core gcc make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libssl-dev curl -y

curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

printf '\nexport PATH="~/.pyenv/bin:$PATH"\n' >> ~/.profile
printf 'eval "(pyenv init -)"\n' >> ~/.profile
printf 'eval "(pyenv virtualenv-init -)"\n' >> ~/.profile
source ~/.profile

pyenv install $PY_VERSION
pyenv virtualenv $REPO_NAME
mkdir $INSTALL_DIR
cd $INSTALL_DIR
git clone $GITHUB/$USERNAME/$REPO_NAME
cd $REPO_NAME
pyenv local $REPO_NAME

pip install -r requirements.txt
