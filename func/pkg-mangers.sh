#!/bin/bash

nala() {
    #nala frontend for apt
	sudo apt update && sudo apt install nala -y

}


deb-get() {
    
    #deb-get for 3rd party debs
	sudo nala install curl -y
	curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
        
}


nix() {

    sudo nala install curl || sudo apt install curl
    #checks if nix is on the system, if not install it (for one user only)
    nix-env --version || sh <(curl -L https://nixos.org/nix/install) --no-daemon
	eval "$(tail -n +10 < ~/.bashrc)"
		
}
