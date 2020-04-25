#!/bin/bash

# Assumes you're using bash, if zsh or something else,
# change shebang and profile exports in environment section

# grab from google, unzip and move
cd /tmp
wget https://dl.google.com/go/go1.14.2.linux-armv6l.tar.gz
sudo tar -xvf go1.14.2.linux-armv6l.tar.gz
sudo mv go /usr/local

# set up go environment, change these if needed
echo "\nexport GOROOT=/usr/local/go" >> $HOME/.bashrc
echo "\nexport GOPATH=$HOME/" >> $HOME/.bashrc
echo "\nexport PATH=$GOPATH/bin:$GOROOT/bin:$PATH" >> $HOME/.bashrc

# verify installation
echo go version
echo go env
