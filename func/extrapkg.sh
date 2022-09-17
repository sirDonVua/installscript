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
    #setup the fish config file
    mkdir -p ~/.config/fish/
    wget "https://raw.githubusercontent.com/sirDonVua/mydotfiles/main/config.fish" -O ~/.config/fish/config.fish         
    #removing fish gretting
    touch ./nowelcome.sh ; echo "#!/bin/fish" >> nowelcome.sh ; echo "set -U fish_greeting" >> nowelcome.sh
    fish nowelcome.sh ; rm -rf ./nowelcome.sh ./run.sh
}
