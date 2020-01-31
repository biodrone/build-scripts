#!/bin/bash

# Assumes you're using bash, if zsh or something else,
# change shebang and profile exports in environment section

# grab from google, unzip and move
cd /tmp
curl https://dl.google.com/go/go1.13.6.linux-amd64.tar.gz -O
sudo tar -xvf /tmp/go1.13.6.linux-amd64.tar.gz
sudo mv /tmp/go /usr/local

# set up go environment, change these if needed
printf "\n GO ENV"
printf "\nexport GOROOT=/usr/local/go" >> $HOME/.bashrc
printf "\nexport GOPATH=\$HOME/" >> $HOME/.bashrc
printf "\nexport PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH" >> $HOME/.bashrc
printf "\n"

# source bashrc
source $HOME/.bashrc

# verify installation
echo $(go version)
echo $(go env)
