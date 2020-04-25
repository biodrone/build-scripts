#!/bin/bash

# Assumes you're using zsh, if something else,
# change shebang and profile exports in environment section

# grab from google, unzip and move
cd /tmp
curl https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O
sudo tar -xvf /tmp/go1.14.2.linux-amd64.tar.gz
sudo mv /tmp/go /usr/local

# set up go environment, change these if needed
printf "\n GO ENV"
printf "\nexport GOROOT=/usr/local/go" >> $HOME/.zshrc
printf "\nexport GOPATH=\$HOME/" >> $HOME/.zshrc
printf "\nexport PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH" >> $HOME/.zshrc
printf "\n\n"

# source bashrc
source $HOME/.zshrc

# verify installation
echo $(go version)
echo $(go env)
