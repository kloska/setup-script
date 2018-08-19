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
	gsettings set org.gnome.desktop.interface gtk-theme "Ant-Bloody"
	gsettings set org.gnome.desktop.wm.preferences theme "Ant-Bloody"
	
	# mplus testflight font
	#wget https://osdn.net/dl/mplus-fonts/mplus-TESTFLIGHT-063.tar.xz
	#sudo tar xf mplus-TESTFLIGHT-063.tar.xz -C /usr/local/share/fonts/
	# reload font cache
	#sudo fc-cache -fv

	# Paper Icon set
	sudo add-apt-repository -u ppa:snwh/ppa
	sudo apt-get install paper-icon-theme
	sudo apt-get install papirus-icon-theme

	#additional theme
	# https://github.com/vinceliuice/Qogir-theme

	echo "In Appearance -> Style:"
 	echo "  Widgets: 	Ant-Bloody"
    	echo "  Icons:          Paper/Papirus-dark"
    	echo "  Cursors:        Paper"
    	echo "  Dark theme:     Yes"

	budgie-desktop-settings
fi

# install ulauncher
read -p "install ulauncher? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo add-apt-repository -u ppa:agornostal/ulauncher
	sudo apt-get install ulauncher
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

# install VS Code  
read -p "install Visual Studio Code + Extensions? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
	sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo apt-get install apt-transport-https
	sudo apt-get update
	sudo apt-get install code # or code-insiders

	# Extensions
	code --install-extension equinusocio.vsc-material-theme
	code --install-extension eamodio.gitlens
	code --install-extension ms-python.python
	code --install-extension rebornix.ruby
fi

# LibreOffice Fresh PPA  
read -p "Add LibreOffice Fresh PPA? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo add-apt-repository ppa:libreoffice/ppa
	sudo apt-get update
	sudo apt-get install libreoffice
fi


# install LibreOffice Writer, Calc + Theme Integration 
read -p "install LibreOffice Writer, Calc and Theme Integration? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        #sudo apt-get install libreoffice-writer libreoffice-calc
        sudo apt-get install libreoffice-gtk3 libreoffice-gtk
fi


# install python utils  
read -p "install python utils? (Y/y)" -n 2 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo apt-get install python3-pip
fi


# aws config, bashrc, vimrc, python, ruby
