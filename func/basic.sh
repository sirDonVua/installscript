#!/bin/bash

nala() {
        #setup nala 
		sudo apt update && sudo apt install nala -y 
		sudo nala upgrade -y
		echo "" >> ~/.bashrc && echo "#My Modifications" >> ~/.bashrc
		echo "alias apt='sudo nala'" >> ~/.bashrc

		#install some packages
		sudo nala install vim htop curl neofetch plocate -y
}
	


deb-get() {
    #setup deb-get for 3rd party debs
			sudo nala install curl -y
			curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
			echo "alias deb='deb-get'" >> ~/.bashrc 
			#packages and replacing firefox
			sudo deb-get install brave-browser codium obsidian
			sudo nala purge firefox -y || sudo snap remove firefox || echo '' && echo "no FIREFOX found" 
        }


