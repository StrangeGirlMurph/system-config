{ config, pkgs, ... }:

{
  home.username = "murphy";
  home.homeDirectory = "/home/murphy";
  home.stateVersion = "23.11";
  home.packages = with pkgs; [ ];

  home.file.".face".source = ./dotfiles/profile.jpg;
  home.file.".config/neofetch/config.conf".source = ./dotfiles/neofetch.conf;

  imports = [
    ./desktop.nix
    ./development.nix
    ./terminal.nix
  ];

  programs.home-manager.enable = true;
}
