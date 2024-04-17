{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    where-is-my-sddm-theme
    elegant-sddm
  ];

  # SDDM
  services.displayManager.sddm = {
    enable = true;
    theme = "where is my sddm theme";
    autoNumlock = true;
  };
}
