{ config, pkgs, ... }:

{
  imports =
    [
      ../../hardware-configuration.nix
    ];

  networking.hostName = "TARS";

  environment.systemPackages = with pkgs; [
    # Windows Drive
    ntfs3g
  ];
}
