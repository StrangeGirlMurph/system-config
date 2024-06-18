{ config, pkgs, ... }:

{
  # systemd-boot
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = 2;
  };
  systemd.extraConfig = ''DefaultTimeoutStopSec=6s'';
}
