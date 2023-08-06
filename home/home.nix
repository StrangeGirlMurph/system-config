{ config, pkgs, ... }:

{
  home.username = "murphy";
  home.homeDirectory = "/home/murphy";
  home.stateVersion = "23.05";
  home.packages = with pkgs; [ ];

  home.file.".config/" = {
    source = ../dotfiles;
    recursive = true;
  };

  imports = [
    ./desktop-environment.nix
    ./development.nix
    ./terminal+shell.nix
  ];

  programs.home-manager.enable = true;
}
