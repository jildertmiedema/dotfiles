#!/bin/bash

hasfonts=`fc-list | grep -i "powerline"`

if [ -z "$hasfonts" ]; then
	exit
fi	

git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
