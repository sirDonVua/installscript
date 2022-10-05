#!/bin/bash


shells() { 
    #setup the fish shell
	wget https://launchpad.net/~fish-shell/+archive/ubuntu/release-3/+files/fish_3.5.1-1~jammy_amd64.deb
	sudo nala install ./fish_3.5.1-1~jammy_amd64.deb -y
	rm fish_3.5.1-1~jammy_amd64.deb
    #setup the fish config file
    mkdir -p ~/.config/fish/
    wget https://raw.githubusercontent.com/sirDonVua/mydotfiles/main/config/fishShell/config.fish -O ~/.config/fish/config.fish

    #setup zsh
    sudo nala install zsh || sudo apt install zsh
}