#!/bin/bash

# ask for password up-front.
sudo -v

# basic utilities  
read -p "install basic utils? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt-get install git
	sudo apt-get install tmux
	sudo apt-get install vim
fi

# install terminator and powerline  
read -p "install terminator+powerline? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo apt-get install terminator
	sudo apt-get install powerline
# Add to .bashrc
# Powerline
# if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
#    source /usr/share/powerline/bindings/bash/powerline.sh

fi


# install git  
read -p "install git? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt-get install git
fi


# install monitoring utils  
read -p "install monitoring utils? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo apt-get install htop
	sudo apt-get install iftop
	sudo apt-get install iotop
fi


# desktop theme
read -p "Setup Desktop theme? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	# Ant-Bloody GTK theme
	sudo git clone https://github.com/EliverLara/Ant-Bloody.git /usr/share/themes/Ant-Bloody/
	
	# Paper Icon set
	sudo add-apt-repository -u ppa:snwh/ppa
	sudo apt-get install paper-icon-theme


	echo "In Appearance -> Style:"
 	echo "  Widgets: 	Ant-Bloody"
    	echo "  Icons:          Paper"
    	echo "  Cursors:        Paper"
    	echo "  Dark theme:     Yes"

	budgie-desktop-settings
fi

# install AWS CLI 
read -p "install AWS CLI? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo apt-get install awscli
	aws configure
fi

# install Sublime text
read -p "install sublime text? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text
fi


# install python utils  
read -p "install python utils? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo apt-get install python3-pip
fi


# vscode, aws config, bashrc, vimrc, python, ruby
