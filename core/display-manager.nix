{ config, pkgs, ... }:

{
  # SDDM
  services.displayManager.sddm = {
    enable = true;
    autoNumlock = true;
  };
}
