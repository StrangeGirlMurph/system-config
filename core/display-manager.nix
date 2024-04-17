{ config, pkgs, ... }:

{
  # SDDM
  services.displayManager.sddm = {
    enable = true;
    theme = "breeze";
    autoNumlock = true;
  };
}
