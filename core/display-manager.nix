{ config, lib, ... }:

{
  services.greetd = {
    enable = true;
    settings.defaultSession = {
      user = "murphy";
      command = "${lib.getExe config.programs.hyprland.package}";
    };
  };
}
