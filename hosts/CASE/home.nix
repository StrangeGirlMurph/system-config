{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    extraConfig = ''
      monitor=eDP-1,2256x1504@60,0x0,1.2
    '';
  };
}
