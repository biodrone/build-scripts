#!/bin/bash

# Run this as sudo
# GO must be installed
# $GOPATH must be set
# $GOPATH/bin must be in $PATH

apt-get update
apt-get install -y build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev

go get github.com/bettercap/bettercap
cd $GOPATH/src/github.com/bettercap/bettercap
make build
make install
