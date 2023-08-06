{ config, pkgs, ... }:

{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application/pdf" = "firefox.desktop";
    };
  };

  gtk.enable = true;
  #gtk.cursorTheme = {};
  #gtk.theme = {};
  #gtk.iconTheme = {};

  qt.enable = true;
  qt.platformTheme = "gtk";
  qt.style = {
    name = "breeze";
    package = pkgs.breeze-qt5;
  };
}
