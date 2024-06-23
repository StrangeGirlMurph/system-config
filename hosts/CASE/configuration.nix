{ config, pkgs, ... }:

{
  imports =
    [
      ../../hardware-configuration.nix
    ];

  networking.hostName = "CASE";

  environment.systemPackages = with pkgs; [

  ];
}
