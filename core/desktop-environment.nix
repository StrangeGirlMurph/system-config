{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    hyprpaper
    rofi-wayland
    eww
    mako
    libnotify
  ];

  xdg.mime.defaultApplications = {
    "default-web-browser" = "firefox.desktop";
    "text/html" = "firefox.desktop";
    "x-scheme-handler/http" = "firefox.desktop";
    "x-scheme-handler/https" = "firefox.desktop";
    "x-scheme-handler/about" = "firefox.desktop";
    "x-scheme-handler/unknown" = "firefox.desktop";
  };

  environment.sessionVariables = {
    EDITOR = "helix";
    VISUAL = "code";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };

  # Hyprland (Window Manager)
  programs.hyprland.enable = true;

  # Fonts
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      corefonts
      fira-code
      fira-code-symbols
      font-awesome
    ];
  };

  # Networking
  networking.networkmanager.enable = true;
  services.openssh.enable = true;

  # Time & locale
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

  services = {
    # X11/xorg
    xserver = {
      enable = true;
      xkb.layout = "de";
    };
    # Printing
    printing = {
      enable = true;
      drivers = [ pkgs.epson-escpr ];
    };
  };

}
