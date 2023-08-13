{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.05";
  
  time.hardwareClockInLocalTime = true; # Fix dual-boot time offset

  imports = [
    ./desktop-environment.nix
    ./development.nix
    ./gui-apps.nix
    ./systemd+sddm.nix
    ./terminal+shell.nix
    ./users.nix
  ];
}
