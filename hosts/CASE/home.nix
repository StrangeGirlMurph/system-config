{ config, pkgs, ... }:

{
  imports = [
    ../../modules/home.nix
  ];

  wayland.windowManager.hyprland = {
    extraConfig = ''
      monitor=main,2256x1504@60,0x0,1
    '';
  };
}
