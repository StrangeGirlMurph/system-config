#!/bin/bash

cd ~
nix-shell -p git --run "git clone https://github.com/StrangeGirlMurph/system-config
sudo mv /etc/nixos ~/system-config/nixos-config.bak
sudo ln -s ~/system-config/ /etc/nixos
sudo nixos-rebuild switch --flake system-config/#TARS"