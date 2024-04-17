{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    elegant-sddm
  ];

  # SDDM
  services.displayManager.sddm = {
    enable = true;
    theme = "Elegant";
    autoNumlock = true;
  };
}
