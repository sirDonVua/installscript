#!/usr/bin/env bash

configs() {

    ### CONFIG FILES ###
    mv $HOME/.bashrc $HOME/.bashrc.old
    mv $HOME/.vimrc $HOME/.vimrc.old
    wget https://raw.githubusercontent.com/sirDonVua/mydotfiles/main/.bashrc -O $HOME/.bashrc
    wget https://raw.githubusercontent.com/sirDonVua/mydotfiles/main/.vimrc -O $HOME/.vimrc
    #vifm colorscheme
    mkdir -pv $HOME/.config/vifm/colors
    wget https://raw.githubusercontent.com/vifm/vifm-colors/master/dracula.vifm -O $HOME/.config/vifm/colors/dracula.vifm
    wget https://raw.githubusercontent.com/vifm/vifm-colors/master/gruvbox.vifm -O $HOME/.config/vifm/colors/gruvbox.vifm

}
