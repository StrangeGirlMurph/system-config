#!/usr/bin/env nix-shell
#!nix-shell -p git -i bash

cd ~
git clone https://github.com/StrangeGirlMurph/system-config
sudo mv /etc/nixos/hardware-configuration.nix ~/system-config/
sudo rm -rf /etc/nixos
sudo ln -s ~/system-config/ /etc/nixos
read -p 'Configuration: ' config
sudo nixos-rebuild switch --flake system-config/#"$config"