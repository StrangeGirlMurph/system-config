{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Murphy";
    userEmail = "git@murphy-in.space";
  };
}
