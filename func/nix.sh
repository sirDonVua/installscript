#!/bin/bash

nix() {
		sudo nala install curl || sudo apt install curl
		sh <(curl -L https://nixos.org/nix/install) --no-daemon #one user only
		eval "$(tail -n +10 < ~/.bashrc)"
		nix-env -iA nixpkgs.python3Full #installs the latest python3
		
}
