{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";

  # Networking
  networking.networkmanager.enable = true;
  services.openssh.enable = true;

  # Time & locale
  time.hardwareClockInLocalTime = true; # Fix dual-boot time offset
  time.timeZone = "Europe/Berlin";
  console.keyMap = "de";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  imports = [
    ./boot.nix
    ./desktop.nix
    ./development.nix
    ./apps.nix
    ./terminal.nix
    ./users.nix
  ];
}
