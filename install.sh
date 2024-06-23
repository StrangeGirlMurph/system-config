#!/usr/bin/env bash

nix-shell -p git --run '
cd ~
echo "Cloning system-config..."
git clone https://github.com/StrangeGirlMurph/system-config
echo "Moving hardware-configuration.nix..."
sudo mv -f /etc/nixos/hardware-configuration.nix ~/system-config/
echo "Symlinking system-config..."
sudo rm -rf /etc/nixos
sudo ln -s ~/system-config/ /etc/nixos
read -p "Pick which configuration you want (TARS or CASE): " config
echo "Building system..."
sudo nixos-rebuild switch --flake system-config/#${config}
'
