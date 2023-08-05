{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];


  environment.systemPackages = with pkgs; [
    # Games
    steam # Game client
    desmume # Nintendo DS emulator
  ];
}
