#!/bin/bash

extra() {

    #extra cool packages
	sudo nala install git gh vim vifm htop cmatrix cowsay lolcat figlet -y
	sudo deb-get install brave-browser lsd bat zoom

   	#starship prompt
    curl -sS https://starship.rs/install.sh | sh

    #vim-plug
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    ### CONFIG FILES ###
    mv $HOME/.bashrc $HOME/.bashrc.old
    mv $HOME/.vimrc $HOME/.vimrc.old
    wget https://raw.githubusercontent.com/sirDonVua/mydotfiles/main/.bashrc -O $HOME/.bashrc
    wget https://raw.githubusercontent.com/sirDonVua/mydotfiles/main/.vimrc -O $HOME/.vimrc
}

fish() { 
    #setup the fish shell
	wget https://launchpad.net/~fish-shell/+archive/ubuntu/release-3/+files/fish_3.5.1-1~jammy_amd64.deb
	sudo nala install ./fish_3.5.1-1~jammy_amd64.deb -y
	rm fish_3.5.1-1~jammy_amd64.deb
    #setup the fish config file
    mkdir -p ~/.config/fish/
    wget https://raw.githubusercontent.com/sirDonVua/mydotfiles/main/config/fishShell/config.fish -O ~/.config/fish/config.fish
}
