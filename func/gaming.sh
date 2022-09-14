#!/bin/sh

. func/nix.sh
gaming() {

#checks if nix is on the system, if not installing it
            nix-env --version ||  nix  && eval "$(cat ~/.bashrc | tail -n +10)"
			
			#packages
			nix-env -iA nixpkgs.wine nixpkgs.wine-staging #wine
			nix-env -iA nixpkgs.gamemode 
			
			#mangohud
			wget https://github.com/flightlessmango/MangoHud/releases/download/v0.6.8/MangoHud-0.6.8.r0.gefdcc6d.tar.gz
			tar -xf MangoHud-0.6.8.r0.gefdcc6d.tar.gz && ./MangoHud/mangohud-setup.sh install
			rm -r MangoHud-0.6.8.r0.gefdcc6d.tar.gz MangoHud/
			
			#launchers
			sudo nala install --install-recommends steam goverlay -y
			sudo deb-get install heroic lutris

        }
