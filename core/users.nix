{ config, pkgs, ... }:

{
  users.users.murphy = {
    isNormalUser = true;
    description = "Murphy";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
