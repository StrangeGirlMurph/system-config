{ config, pkgs, ... }:

{
  home.username = "murphy";
  home.homeDirectory = "/home/murphy";
  home.stateVersion = "23.05";

  home.packages = with pkgs; [

  ];

  programs.git = {
    enable = true;
    userName = "Murphy";
    userEmail = "git@murphy-in.space";
  };

  programs.home-manager.enable = true;
}
