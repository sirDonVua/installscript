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

    #virt manager
    sudo nala install virt-manager && sudo systemctl enable libvirtd

}
