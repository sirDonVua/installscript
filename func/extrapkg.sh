#!/bin/bash

extra() {


#extra cool packages
				sudo deb-get install lsd bat
				sudo nala install cmatrix cowsay lolcat figlet doas -y

				#replacing normal boring ls and cat		
				echo "alias ls='lsd'" >> ~/.bashrc && echo "alias lt='lsd --tree'" >> ~/.bashrc
				echo "alias cat='bat'" >> ~/.bashrc

				#setup the fish shell
				wget https://launchpad.net/~fish-shell/+archive/ubuntu/release-3/+files/fish_3.5.1-1~jammy_amd64.deb
				sudo nala install ./fish_3.5.1-1~jammy_amd64.deb -y
				rm fish_3.5.1-1~jammy_amd64.deb
                mkdir -p ~/.config/fish/
                touch  ~/.config/fish/config.fish
                echo " 
#alias sudo='doas'
alias apt='sudo nala'
alias pkgup='sudo nala upgrade'
alias fishrc="vim ~/.config/fish/config.fish"
alias deb='deb-get'
alias ls='lsd'
alias lt='lsd --tree'
alias cat='bat'
  
figlet fish -c | lolcat
#starship init fish | source
                                 
				" >> ~/.config/fish/config.fish
            }
