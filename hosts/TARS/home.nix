{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {

    extraConfig = ''
      monitor=DP-1,3440x1440@144,0x0,1
      workspace = w[t1], gapsout:10 400
    '';
  };
}
