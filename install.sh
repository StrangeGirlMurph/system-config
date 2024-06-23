#!/bin/bash

cd ~
nix-shell -p git 
git clone https://github.com/StrangeGirlMurph/system-config
sudo mv /etc/nixos/hardware-configuration.nix ~/system-config/
sudo ln -s ~/system-config/ /etc/nixos
read -p 'Configuration: ' config
sudo nixos-rebuild switch --flake system-config/#"$config"