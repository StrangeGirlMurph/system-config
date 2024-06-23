#!/usr/bin/env bash

nix-shell -p git --run 'bash -c "
cd ~
git clone https://github.com/StrangeGirlMurph/system-config
sudo mv /etc/nixos/hardware-configuration.nix ~/system-config/
sudo rm -rf /etc/nixos
sudo ln -s ~/system-config/ /etc/nixos
read -p 'Configuration: ' config
sudo nixos-rebuild switch --flake system-config/#"$config"
"'