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
    #vifm colorscheme
    mkdir -pv $HOME/.config/vifm/colors
    wget https://raw.githubusercontent.com/vifm/vifm-colors/master/dracula.vifm -O $HOME/.config/vifm/colors/dracula.vifm
    wget https://raw.githubusercontent.com/vifm/vifm-colors/master/gruvbox.vifm -O $HOME/.config/vifm/colors/gruvbox.vifm
    sed -i 's/colorscheme/colorscheme dracula gruvbox/' $HOME/.config/vifm/vifmrc

    #virt manager
    sudo nala install virt-manager && sudo systemctl enable libvirtd

}
