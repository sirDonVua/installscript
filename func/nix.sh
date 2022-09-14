#!/bin/bash

nix() {
		sudo nala install curl || sudo apt install curl
		sh <(curl -L https://nixos.org/nix/install) --no-daemon #one user only
		echo ". ~/.nix-profile/etc/profile.d/nix.sh" >> ~/.bashrc  #for enviromental variables
		eval "$(cat ~/.bashrc | tail -n +10)"
		nix-env -iA nixpkgs.python3Full #installs the latest python3
		
}
