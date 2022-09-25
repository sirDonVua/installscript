#!/bin/bash


deb-get() {
    #setup deb-get for 3rd party debs
	sudo nala install curl -y
	curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
	echo "alias deb='deb-get'" >> ~/.bashrc 
	#packages and replacing firefox
	sudo deb-get install brave-browser codium obsidian zoom
        }

deb-get-minimal() {
    sudo nala install curl -y
    curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
}
