{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    elegant-sddm
  ];

  # SDDM
  services.displayManager.sddm = {
    enable = true;
    theme = "elegant-sddm";
    autoNumlock = true;
  };
}
