#!/usr/bin/env bash

config=$1 

nix-shell -p git --run "
    cd ~
    echo \"Using configuration: $config\"
    echo 'Cloning system-config...'
    git clone https://github.com/StrangeGirlMurph/system-config
    echo 'Moving hardware-configuration.nix...'
    sudo mv -f /etc/nixos/hardware-configuration.nix ~/system-config/hosts/$config/
    sudo chown $USER:users ~/system-config/hosts/$config/hardware-configuration.nix
    git -C ~/system-config add -A
    echo 'Symlinking system-config...'
    sudo rm -rf /etc/nixos
    sudo ln -s ~/system-config/ /etc/nixos
    echo 'Building system...'
    sudo nixos-rebuild switch --flake system-config/#$config
"
