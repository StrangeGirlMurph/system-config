{ config, pkgs, ... }:

{
  home.username = "murphy";
  home.homeDirectory = "/home/murphy";
  home.stateVersion = "23.05";
  home.packages = with pkgs; [ ];

  home.file.".config/hypr/wallpaper.jpg".source = ./dotfiles/wallpaper.jpg;
  home.file.".config/neofetch/config.conf".source = ./dotfiles/neofetch.conf;

  imports = [
    ./desktop-environment.nix
    ./development.nix
    ./terminal+shell.nix
  ];

  programs.home-manager.enable = true;
}
