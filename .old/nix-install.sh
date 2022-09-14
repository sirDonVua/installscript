#!/bin/bash

#nala better apt 
echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install nala -y
#install nix 
sudo nala install curl -y
sh <(curl -L https://nixos.org/nix/install) --no-daemon
. ~/.nix-profile/etc/profile.d/nix.sh

#nix-env desktop config
echo "#nix-env desktop config
. ~/.nix-profile/etc/profile.d/nix.sh
export XDG_DATA_DIRS=~/.local/share/:~/.nix-profile/share:/usr/share
cp -f ~/.nix-profile/share/applications/*.desktop ~/.local/share/applications/
##End" >> ~/.bashrc
echo "#nix config
export XDG_DATA_DIRS=~/.local/share/:~/.nix-profile/share:/usr/share
" >> ~/.profile
##End

#Download packages 
export NIXPKGS_ALLOW_UNFREE=1 #to allow unfree apps like vscode
#nix-env -iA nixpkgs.vscode
nix-env -iA nixpkgs.sublime4
nix-env -iA nixpkgs.obsidian
nix-env -iA nixpkgs.gimp
nix-env -iA nixpkgs.inkscape
nix-env -iA nixpkgs.python3Full
. ~/.bashrc
. ~/.profile
#reinstalling libreoffice
sudo nala purge libreoffice* -y
sudo apt install -f
wget https://download.documentfoundation.org/libreoffice/stable/7.4.0/deb/x86_64/LibreOffice_7.4.0_Linux_x86-64_deb.tar.gz
wget https://download.documentfoundation.org/libreoffice/stable/7.4.0/deb/x86_64/LibreOffice_7.4.0_Linux_x86-64_deb_langpack_ar.tar.gz
tar -xf LibreOffice_7.4.0_Linux_x86-64_deb.tar.gz
tar -xf LibreOffice_7.4.0_Linux_x86-64_deb_langpack_ar.tar.gz
sudo dpkg -i ./LibreOffice_7.4.0.3_Linux_x86-64_deb/DEBS/*.deb
sudo dpkg -i ./LibreOffice_7.4.0.3_Linux_x86-64_deb_langpack_ar/DEBS/*.deb