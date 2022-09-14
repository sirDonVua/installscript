#!/bin/bash 

. ~/.bashrc
#wine
nix-env -iA nixpkgs.wine
nix-env -iA nixpkgs.wine-staging
#mangohud
wget https://github.com/flightlessmango/MangoHud/releases/download/v0.6.8/MangoHud-0.6.8.r0.gefdcc6d.tar.gz
tar -xf MangoHud-0.6.8.r0.gefdcc6d.tar.gz

MangoHud/mangohud-setup.sh uninstall
MangoHud/mangohud-setup.sh install
#goverlay
nix-env -iA nixpkgs.gamemode
sudo nala install --install-recommends goverlay -y
#gamemode
sudo nala install  meson libsystemd-dev pkg-config ninja-build git libdbus-1-dev libinih-dev dbus-user-session -y
nix-env -iA nixpkgs.gamemode
#Launchers
sudo nala install --install-recommends steam lutris -y
. ~/.bashrc