{ config, pkgs, ... }:

{
  imports = [
    ../../modules/home.nix
  ];

  wayland.windowManager.hyprland = {
    extraConfig = ''
      monitor=main,3440x1440@144,0x0,1
    '';
  };
}
