{ config, pkgs, ... }:

{
  imports =
    [
      ../../modules/nixos.nix
      ./hardware-configuration.nix
    ];

  networking.hostName = "CASE";

  environment.systemPackages = with pkgs; [

  ];
}
