{ config, pkgs, ... }:

{
  # SDDM (Display Manager)
  services.xserver.displayManager.sddm.enable = true;

  # systemd-boot (Bootloader)
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = 2;
  };
  systemd.extraConfig = ''DefaultTimeoutStopSec=6s'';
}
