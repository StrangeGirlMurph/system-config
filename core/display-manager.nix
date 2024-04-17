{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    where-is-my-sddm-theme
    elegant-sddm
  ];

  # SDDM
  services.displayManager.sddm = {
    enable = true;
    theme = "where_is_my_sddm_theme";
    autoNumlock = true;
  };
}
