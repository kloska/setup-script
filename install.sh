#!/bin/bash

# ask for password up-front.
sudo -v

# basic CL utilities  
read -p "install basic utils? (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt-get install git
	sudo apt-get install tmux
	sudo apt-get install vim
fi

# install git  
read -p "install git? (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt-get install git
fi


# install monitoring utils  
read -p "install monitoring utils? (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo apt-get install htop
	sudo apt-get install iftop
	sudo apt-get install iotop
fi


# desktop theme
read -p "Setup Desktop theme? (Y/y)" -n 1 -r
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
read -p "install AWS CLI? (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo apt-get install awscli
fi


