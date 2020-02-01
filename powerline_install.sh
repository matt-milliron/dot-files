#!/bin/bash
#Install pip3 if it isn't already install
sudo apt install python-pip3

sudo apt install git

#Using pip3 to install powerline from github
pip3 install git+git://github.com/Lokaltog/powerline

#Create Powershell directory and download fonts
mkdir POWERLINE
cd POWERLINE
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

sudo mv PowerlineSymbols.otf /usr/share/fonts/

# Enables colors in ~/.bashrc file for powerline support
echo 'export TERM=”screen-256color”' >> ~/.bashrc

#Sets varibles to get powerline location 
POWERLINE_STATUS=pip3 show powerline-status | grep Location | cut -d : -f 2 | sed 's/^ *//g'
POWERLINE_PATH=$POWERLINE_STATUS + "/powerline/bindings/bash/powerline.sh"

#Installing Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. $POWERLINE_PATH


#Enable Powerline in bash by adding to the ~/.vimrc file
echo "
set  rtp+=$POWERLINE_STATUS/powerline/bindings/vim/
set laststatus=2
set t_Co=256
" >> ~/.vimrc


