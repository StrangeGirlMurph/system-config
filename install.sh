#!/usr/bin/env bash

if [ -z "$IN_NIX_SHELL" ]; then
  echo "Entering nix-shell with git"
  exec nix-shell -p git --command "$0 $@"
fi

cd ~
git clone https://github.com/StrangeGirlMurph/system-config
sudo mv -f /etc/nixos/hardware-configuration.nix ~/system-config/
sudo rm -rf /etc/nixos
sudo ln -s ~/system-config/ /etc/nixos
read -p 'Configuration: ' config
sudo nixos-rebuild switch --flake system-config/#${config}