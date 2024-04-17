{ config, lib, ... }:

{
  services.greetd = {
    enable = true;
    settings = {
      terminal.vt = 1;
      default_session = {
        command = "${lib.getExe config.programs.hyprland.package}";
        user = "murphy";
      };
    };
  };
}
