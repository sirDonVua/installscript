#!/bin/bash


theme() {
    #gnome tweaks and icon pack
			sudo nala install gnome-tweaks 
			deb-get install papirus-icon-theme
			#gtk theme
			wget https://github.com/dracula/gtk/archive/master.zip
			unzip master.zip && sudo cp -r gtk-master /usr/share/themes
			gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
			gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
			#gnome Terminal 
			curl -sS https://starship.rs/install.sh | sh
			echo 'eval "$(starship init bash)"'
			git clone https://github.com/dracula/gnome-terminal && cd gnome-terminal && ./install.sh 
}
