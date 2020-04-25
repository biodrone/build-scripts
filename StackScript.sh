#!/bin/bash

# <UDF name="GOLANG_INSTALL" Label="Install GO?" default="n" example="y/n" />

#Install Dotfiles

mkdir /var/log/linode

echo "\nINSTALLING DOTFILES\n" >> /var/log/linode/setup.log

git clone https://github.com/biodrone/dotfiles /opt/dotfiles

cd /opt/dotfiles

bash setup.sh >> /var/log/linode/setup.log

#Check if GO is required

if [ "$GOLANG_INSTALL" == "y" ]; then

    echo "INSTALLING GO 1.14.2\n" >> /var/log/linode/setup.log

    git clone https://github.com/biodrone/build-scripts /opt/build-scripts

    cd /opt/build-scripts && chmod +x *

    bash golang-1.13.6-amd64.sh >> /var/log/linode/setup.log

fi

#Cleanup Build Scripts

rm -R /opt/build-scripts

#Bounce

reboot