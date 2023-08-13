{ config, pkgs, ... }:

{
  home.username = "murphy";
  home.homeDirectory = "/home/murphy";
  home.stateVersion = "23.05";
  home.packages = with pkgs; [ ];

  home.file.".config/hypr/wallpaper.jpg".source = "../dotfiles/hypr/wallpaper.jpg";
  home.file.".config/hypr/hyprpaper.conf".source = "../dotfiles/hypr/hyprpaper.conf";
  home.file.".config/neofetch/config.conf".source = "../dotfiles/neofetch/config.conf";

  imports = [
    ./desktop-environment.nix
    ./development.nix
    ./terminal+shell.nix
  ];

  programs.home-manager.enable = true;
}
