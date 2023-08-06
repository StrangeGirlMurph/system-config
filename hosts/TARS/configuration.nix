{ config, pkgs, ... }:

{
  imports =
    [
      ../../modules/nixos.nix
      ./hardware-configuration.nix
    ];

  networking.hostName = "TARS";

  environment.systemPackages = with pkgs; [
    # Games
    steam # Game client
    desmume # Nintendo DS emulator
  ];
}
